Imports MySql.Data.MySqlClient

Public Class frmEditTimesheet
    Private mode, No, LogDate, Time_in, Time_out, id_employee As String
    Public Sub New(ByVal mode As String, Optional ByVal No As String = "", Optional ByVal id_employee As String = "", Optional ByVal LogDate As String = "", Optional ByVal Time_in As String = "", Optional ByVal Time_out As String = "")
        MyBase.New()
        Me.mode = mode
        Me.No = No
        Me.id_employee = id_employee
        Me.LogDate = LogDate
        Me.Time_in = Time_in
        Me.Time_out = Time_out
        InitializeComponent()
    End Sub

    Private Sub frmEditTimesheet_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        dtp_logdate.Value = If(String.IsNullOrEmpty(LogDate), Date.Now, CDate(LogDate))
        tb_no.Text = No
        dtp_timein.Value = If(String.IsNullOrEmpty(Time_in), Date.Now, CDate(LogDate & " " & Time_in))
        dtp_timeout.Value = If(String.IsNullOrEmpty(Time_out), Date.Now, CDate(LogDate & " " & Time_out))

        dtp_timeout.Format = DateTimePickerFormat.Custom
        dtp_timeout.CustomFormat = "hh:mm tt"
        dtp_timeout.ShowUpDown = True
        dtp_timein.Format = DateTimePickerFormat.Custom
        dtp_timeout.CustomFormat = "hh:mm tt"
        dtp_timein.ShowUpDown = True
        dtp_logdate.Format = DateTimePickerFormat.Custom
        dtp_logdate.CustomFormat = "yyyy-MM-dd"
    End Sub

    Private Sub btn_cancel_Click(sender As System.Object, e As System.EventArgs) Handles btn_cancel.Click
        Me.Close()
    End Sub

    Private Sub btn_save_Click(sender As System.Object, e As System.EventArgs) Handles btn_save.Click
        If mode = "temp" Then
            savetemptime()
        ElseIf mode = "final" Then
            savefinaltime()
            If Application.OpenForms().OfType(Of frmEmpDetails).Any Then
                'frmEmpDetails.totalTimesheetDeduct()
            End If
            Me.Close()
        End If
    End Sub
    Private Sub savetemptime()
        'Console.Write(CDate(dtp_logdate.Value.ToString) & " " & CDate(dtp_timein.Value.ToString("t")))
        StrSql = "SELECT * FROM tbl_attendanceraw WHERE No = '" & tb_no.Text & "' AND LogDate = '" & dtp_logdate.Value.ToString("MM/dd/yyyy") & "'"
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        Dim dt As New DataTable
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
        Dim Time_out = CDate(LogDate & " " & CDate(dtp_timeout.Text).ToString("hh:ss tt"))
        Dim totalHours As Integer
        Dim totalLate, totalUndertime, totalOvertime As Double
        Dim latediff, undertimediff, overtimediff As Long
        Dim remarks As String = ""
        'retrieve shift details
        Console.Write(Time_in & " - " & Time_out)
        StrSql = "Select * FROM tbl_shifts WHERE shiftgroup = (SELECT shiftgroup FROM tbl_employee WHERE " & If(String.IsNullOrEmpty(tb_no.Text), "id_employee = '" & id_employee & "'", "emp_bio_id = '" & tb_no.Text & "'") & ")"
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
                    If CDate(log_date & " " & Time_in.ToString("hh:mm tt")) < halfdayam Then
                        If CDate(log_date & " " & Time_in.ToString("hh:mm tt")) > CDate(log_date & " " & dtareader("timein").ToString) Then
                            latediff = DateDiff(DateInterval.Second, CDate(log_date & " " & dtareader("timein").ToString), CDate(log_date & " " & Time_in.ToString("hh:mm tt")))
                        Else
                            'Time_in = log_date & " " & dtareader("timein").ToString
                            latediff = 0
                        End If
                        totalLate = If(Math.Round(latediff / 60, 2) > 10, Math.Round(latediff / 60, 2), 0)
                        overtimediff = 0
                        remarks = "Regular"
                    Else
                        If CDate(log_date & " " & Time_in.ToString("hh:mm tt")) > CDate(log_date & " 1:00 PM") Then
                            latediff = DateDiff(DateInterval.Second, CDate(log_date & " " & Time_in.ToString("hh:mm tt")), CDate(log_date & " 1:00 PM"))
                        Else
                            latediff = 0
                        End If
                        totalLate = latediff
                        remarks = "Half day"
                    End If
                    '3. employee's time out is less than the shift time out, compute for undertime
                    If CDate(log_date & " " & dtareader("timeout").ToString) < CDate(log_date & " " & Time_out.ToString("hh:mm tt")) Then
                        undertimediff = DateDiff(DateInterval.Second, CDate(log_date & " " & Time_out.ToString("hh:mm tt")), CDate(log_date & " " & dtareader("timeout").ToString))
                        If undertimediff > 3600 Then
                            remarks = "Undertime"
                        End If
                        overtimediff = 0
                    End If
                    If CDate(log_date & " " & dtareader("timeout").ToString) < CDate(log_date & " " & Time_out.ToString("hh:mm tt")) Then '4. employee's time out exceeds the shift time out, check for overtime approval, compute overtime
                        undertimediff = 0
                        overtimediff = DateDiff(DateInterval.Second, CDate(log_date & " " & dtareader("timeout").ToString), CDate(log_date & " " & Time_out.ToString("hh:mm tt")))
                        If overtimediff > 3600 Then
                            remarks = "Regular"
                        Else
                            overtimediff = 0
                        End If
                    End If
                    totalUndertime = If(Math.Round(undertimediff / 60 / 60, 2) >= 1, Math.Round(undertimediff / 60 / 60, 2), 0)
                    totalOvertime = If(Math.Round(overtimediff / 60 / 60, 2) >= 1, Math.Round(overtimediff / 60 / 60, 2), 0)
                    'total work hours
                    totalHours = Math.Round(DateDiff(DateInterval.Second, dtp_timein.Value, Time_out) / 60 / 60, 2)
                End If
            End While
        End If
        StrSql = "SELECT * FROM tbl_attendance WHERE emp_bio_id = '" & No & "' AND date = '" & log_date.ToString("yyyy-MM-dd") & "'"
        QryReadP()
        Dim checktimereader As MySqlDataReader = cmd.ExecuteReader
        If checktimereader.HasRows Then
            StrSql = "UPDATE tbl_attendance SET time_in = '" & Time_in.ToString("HH:mm") & "', time_out = '" & Time_out.ToString("HH:mm") & "'," _
                        & "totalHours ='" & totalHours & "', late = '" & totalLate & "', undertime = '" & totalUndertime & "'," _
                        & "overtime = '" & totalOvertime & "', remarks = '" & remarks & "' WHERE emp_bio_id = '" & No & "' AND date = '" & log_date.ToString("yyyy-MM-dd") & "'"
        Else
            StrSql = "INSERT INTO tbl_attendance(id_employee,emp_bio_id,date,time_in,time_out,totalHours,late,undertime,overtime,remarks) " _
                    & "VALUES('" & id_employee & "','" & No & "','" & log_date.ToString("yyyy-MM-dd") & "','" & Time_in.ToString("hh:mm") & "','" _
                    & Time_out.ToString("HH:mm") & "','" & totalHours & "','" & totalLate & "','" & totalUndertime & "','" & totalOvertime & "','" & remarks & "')"
        End If
        Console.Write(StrSql)
        QryReadP()
        cmd.ExecuteNonQuery()
        MessageBox.Show("Saved!")

    End Sub

End Class