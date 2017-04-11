Imports MySql.Data.MySqlClient

Public Class frmEditTimesheet
    Private No, LogDate, Time_in, Time_out As String
    Public Sub New(ByVal No As String, ByVal LogDate As String, ByVal Time_in As String, ByVal Time_out As String)
        MyBase.New()
        Me.No = No
        Me.LogDate = LogDate
        Me.Time_in = Time_in
        Me.Time_out = Time_out
        InitializeComponent()
    End Sub

    Private Sub frmEditTimesheet_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        dtp_logdate.Value = LogDate
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
        Me.Close()
    End Sub
End Class