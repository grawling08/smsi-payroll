Imports MySql.Data.MySqlClient

Public Class frmEditTimesheet
    Private mode, No, LogDate, Time_in, Time_out As String
    Public Sub New(ByVal mode As String, Optional ByVal No As String = "", Optional ByVal LogDate As String = "", Optional ByVal Time_in As String = "", Optional ByVal Time_out As String = "")
        MyBase.New()
        Me.mode = mode
        Me.No = No
        Me.LogDate = LogDate
        Me.Time_in = Time_in
        Me.Time_out = Time_out
        InitializeComponent()
    End Sub

    Private Sub frmEditTimesheet_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        dtp_logdate.Value = If(String.IsNullOrEmpty(LogDate), Date.Now, LogDate)
        tb_no.Text = No
        dtp_timein.Value = If(String.IsNullOrEmpty(Time_in), Date.Now, Time_in)
        dtp_timeout.Value = If(String.IsNullOrEmpty(Time_out), Date.Now, Time_out)
        dtp_timeout.Format = DateTimePickerFormat.Time
        dtp_timeout.ShowUpDown = True
        dtp_timein.Format = DateTimePickerFormat.Time
        dtp_timein.ShowUpDown = True
    End Sub

    Private Sub btn_cancel_Click(sender As System.Object, e As System.EventArgs) Handles btn_cancel.Click
        Me.Close()
    End Sub

    Private Sub btn_save_Click(sender As System.Object, e As System.EventArgs) Handles btn_save.Click
        If mode = "temp" Then
            savetemptime()
        ElseIf mode = "final" Then
            savefinaltime()
        End If
    End Sub
    Private Sub savetemptime()
        'Console.Write(CDate(dtp_logdate.Value.ToString) & " " & CDate(dtp_timein.Value.ToString("t")))
        Dim dt As New DataTable
        StrSql = "SELECT * FROM tbl_attendanceraw WHERE No = '" & tb_no.Text & "' AND LogDate = '" & dtp_logdate.Value.ToString("MM/dd/yyyy") & "'"
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        dt.Load(dtareader)
        If dt.Rows.Count = 1 Then
            'insert either time in or out
            StrSql = String.Format("INSERT INTO tbl_attendanceraw(No, Date_Time, Status, LogTime, LogDate, ifMapped) " _
                            & "VALUES('" & tb_no.Text & "'," _
                            & "@Date_Time," _
                            & "@status," _
                            & "@logtime," _
                            & "'" & dtp_logdate.Value.ToString("MM/dd/yyyy") & "'," _
                            & "'0')")
            QryReadP()
            If dt.Rows(0).Item(5) = "C/In" Then
                'insert time out
                cmd.Parameters.Add("status", MySqlDbType.String).Value = "C/Out"
                cmd.Parameters.Add("logtime", MySqlDbType.String).Value = dtp_timeout.Value.ToString("hh:mm tt")
                cmd.Parameters.Add("Date_Time", MySqlDbType.String).Value = CDate(dtp_logdate.Value.ToString) & " " & CDate(dtp_timeout.Value.ToString("t"))
            ElseIf dt.Rows(0).Item(5) = "C/Out" Then
                'insert time in
                cmd.Parameters.Add("status", MySqlDbType.String).Value = "C/In"
                cmd.Parameters.Add("logtime", MySqlDbType.String).Value = dtp_timein.Value.ToString("hh:mm tt")
                cmd.Parameters.Add("Date_Time", MySqlDbType.String).Value = CDate(dtp_logdate.Value.ToString) & " " & CDate(dtp_timein.Value.ToString("t"))
            End If
            cmd.ExecuteNonQuery()
            Close_Connect()
        ElseIf dt.Rows.Count = 2 Then
            'update both time in and time out
            StrSql = "UPDATE tbl_attendanceraw SET " _
                        & "Date_time = @Date_Time, " _
                        & "LogTime = @LogTime " _
                        & "WHERE Status = @status AND " _
                        & "LogDate = @LogDate "
            QryReadP()
            Dim i As Integer = 0
            While i < 2
                cmd.Parameters.Clear()
                cmd.Parameters.Add("Date_Time", MySqlDbType.String).Value = If(i < 1, CDate(dtp_logdate.Value.ToString) & " " & CDate(dtp_timein.Value.ToString("t")), CDate(dtp_logdate.Value.ToString) & " " & CDate(dtp_timeout.Value.ToString("t")))
                cmd.Parameters.Add("LogTime", MySqlDbType.String).Value = If(i < 1, dtp_timein.Value.ToString("hh:mm tt"), dtp_timeout.Value.ToString("hh:mm tt"))
                cmd.Parameters.Add("LogDate", MySqlDbType.String).Value = dtp_logdate.Value.ToString("MM/dd/yyyy")
                cmd.Parameters.Add("Status", MySqlDbType.String).Value = If(i < 1, "C/In", "C/Out")
                cmd.ExecuteNonQuery()
                Console.Write(i)
                i += 1
            End While
        End If
        MessageBox.Show("Timesheet Saved!")
    End Sub

    Private Sub savefinaltime()
        Dim log_date = CDate(dtp_logdate.Text)
        Dim Time_in = CDate(dtp_timein.Text)
        Dim Time_out = CDate(dtp_timeout.Text)
        Dim totalHours As Integer
        Dim totalLate, totalUndertime, totalOvertime As Double
        Dim latediff, undertimediff, overtimediff As Long
        Dim remarks As String = ""
        'retrieve shift details
        StrSql = "Select * FROM tbl_shifts WHERE shiftgroup = (SELECT shiftgroup FROM tbl_employee WHERE emp_bio_id = '" & tb_no.Text & "')"
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader()
        If dtareader.HasRows Then
            While dtareader.Read()
                'match every shift to every logdate
                If dtareader("day").ToString = log_date.ToString("dddd") Then
                    'once matched, check if:
                    '1. compute total hours
                    '2. employee's time in exceeds the shift time in, compute for late
                    '2.1 determine if half day time in
                    'Console.Write(log_date & " " & dtareader("timein").ToString & "\n " & log_date & " " & Time_in.ToString("h:mm:ss tt"))
                    Dim halfdayam As Date = log_date & " " & #12:00:00 PM#
                    If CDate(log_date & " " & Time_in.ToString("h:mm:ss tt")) < halfdayam Then
                        If CDate(log_date & " " & Time_in.ToString("h:mm:ss tt")) > CDate(log_date & " " & dtareader("timein").ToString) Then
                            latediff = DateDiff(DateInterval.Second, CDate(log_date & " " & dtareader("timein").ToString), CDate(log_date & " " & Time_in.ToString("h:mm:ss tt")))
                        Else
                            'Time_in = log_date & " " & dtareader("timein").ToString
                            latediff = 0
                        End If
                        totalLate = Math.Round(latediff / 60, 2)
                        overtimediff = 0
                        remarks = "Regular"
                    Else
                        If CDate(log_date & " " & Time_in.ToString("h:mm:ss tt")) > CDate(log_date & " 1:00:00 PM") Then
                            latediff = DateDiff(DateInterval.Second, CDate(log_date & " " & Time_in.ToString("h:mm:ss tt")), CDate(log_date & " 1:00:00 PM"))
                        Else
                            latediff = 0
                        End If
                        totalLate = latediff
                        remarks = "Half day"
                    End If
                    '3. employee's time out is less than the shift time out, compute for undertime
                    If CDate(log_date & " " & dtareader("timeout").ToString) < CDate(log_date & " " & Time_out.ToString("h:mm:ss tt")) Then
                        undertimediff = DateDiff(DateInterval.Second, CDate(log_date & " " & Time_out.ToString("h:mm:ss tt")), CDate(log_date & " " & dtareader("timeout").ToString))
                        If undertimediff > 3600 Then
                            remarks = "Undertime"
                        End If
                        overtimediff = 0
                    End If
                    If CDate(log_date & " " & dtareader("timeout").ToString) < CDate(log_date & " " & Time_out.ToString("h:mm:ss tt")) Then '4. employee's time out exceeds the shift time out, check for overtime approval, compute overtime
                        undertimediff = 0
                        overtimediff = DateDiff(DateInterval.Second, CDate(log_date & " " & dtareader("timeout").ToString), CDate(log_date & " " & Time_out.ToString("h:mm:ss tt")))
                        If overtimediff > 3600 Then
                            remarks = "Overtime"
                        Else
                            overtimediff = 0
                        End If
                    End If
                    totalUndertime = If(Math.Round(undertimediff / 60 / 60, 2) >= 1, Math.Round(undertimediff / 60 / 60, 2), 0)
                    totalOvertime = If(Math.Round(overtimediff / 60 / 60, 2) >= 1, Math.Round(overtimediff / 60 / 60, 2), 0)
                    'total work hours
                    totalHours = Math.Round(DateDiff(DateInterval.Second, dtp_timein.Value, dtp_timeout.Value) / 3600, 2)
                End If
            End While
        End If
        StrSql = "INSERT INTO tbl_attendance(emp_bio_id,date,time_in,time_out,totalHours,late,undertime,overtime,remarks) " _
                    & "VALUES('" & No & "','" & log_date.ToString("yyyy-MM-dd") & "','" & Time_in & "','" _
                    & Time_out & "','" & totalHours & "','" & totalLate & "','" & totalUndertime & "','" & totalOvertime & "','" & remarks & "')"
        'Console.Write(StrSql)
        QryReadP()
        cmd.ExecuteNonQuery()
        MessageBox.Show("Saved!")
        Me.Close()
    End Sub

End Class