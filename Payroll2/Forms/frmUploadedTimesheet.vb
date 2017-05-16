﻿Imports MySql.Data.MySqlClient
Imports System.Globalization

Public Class frmUploadedTimesheet
    Dim row As New DataGridViewRow
    Public Sub New()
        MyBase.New()
        InitializeComponent()
    End Sub

    Private Sub btn_canceltimesheet_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_canceltimesheet.Click
        Me.Close()
    End Sub

    Private Sub btn_loadtemptimesheet_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_loadtemptimesheet.Click
        StrSql = "SELECT No, LogDate, " _
                      & "MAX(CASE Status WHEN 'C/In' THEN STR_TO_DATE(Date_Time, '%c/%e/%Y %r') END) AS Time_in, " _
                      & "MAX(CASE Status WHEN 'C/Out' THEN STR_TO_DATE(Date_Time, '%c/%e/%Y %r') END) AS Time_Out " _
                      & "FROM tbl_attendanceraw " _
                      & "WHERE ifMapped = 0 Group by No, LogDate"
        QryReadP()
        ds = New DataSet
        adpt.Fill(ds, "TimesheetRaw")
        'reset dgv
        dgv_temptimesheet.Columns.Clear()
        dgv_temptimesheet.DataSource = Nothing
        're-populate dgv
        dgv_temptimesheet.DataSource = ds.Tables(0)
        dgv_temptimesheet.Columns.Add("totalhour", "Total Work Hours") '4th index
        dgv_temptimesheet.Columns.Add("late", "Late") '5th index
        dgv_temptimesheet.Columns.Add("undertime", "Undertime") '6th index
        dgv_temptimesheet.Columns.Add("overtime", "Overtime") '7th index
        dgv_temptimesheet.Columns.Add("remarks", "Remarks") '8th index

        If dgv_temptimesheet.RowCount > 0 Then
            Dim time_in, time_out, log_date As Date
            Dim latediff, undertimediff, overtimediff As Long
            Dim row As New DataGridViewRow
            For Each row In dgv_temptimesheet.Rows
                If (row.Cells(2).Value.ToString IsNot "" And row.Cells(3).Value.ToString IsNot "") Then
                    log_date = row.Cells(1).Value.ToString
                    time_in = row.Cells(2).Value.ToString
                    time_out = row.Cells(3).Value.ToString
                    'retrieve shift details
                    StrSql = "Select * FROM tbl_shifts WHERE shiftgroup = (SELECT shiftgroup FROM tbl_employee WHERE emp_bio_id = '" & row.Cells(0).Value.ToString & "')"
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
                                Console.Write(log_date & " " & dtareader("timein").ToString & "\n " & log_date & " " & time_in.ToString("h:mm:ss tt"))
                                Dim halfdayam As Date = log_date & " " & #12:00:00 PM#
                                If CDate(log_date & " " & time_in.ToString("h:mm:ss tt")) < halfdayam Then
                                    If CDate(log_date & " " & time_in.ToString("h:mm:ss tt")) > CDate(log_date & " " & dtareader("timein").ToString) Then
                                        latediff = DateDiff(DateInterval.Second, CDate(log_date & " " & dtareader("timein").ToString), CDate(log_date & " " & time_in.ToString("h:mm:ss tt")))
                                    Else
                                        time_in = log_date & " " & dtareader("timein").ToString
                                        latediff = 0
                                    End If
                                    row.Cells(5).Value = Math.Round(latediff / 60, 2)
                                    overtimediff = 0
                                    row.Cells(8).Value = "Regular"
                                Else
                                    If CDate(log_date & " " & time_in.ToString("h:mm:ss tt")) > CDate(log_date & " 1:00:00 PM") Then
                                        latediff = DateDiff(DateInterval.Second, CDate(log_date & " " & time_in.ToString("h:mm:ss tt")), CDate(log_date & " 1:00:00 PM"))
                                    Else
                                        latediff = 0
                                    End If
                                    row.Cells(5).Value = latediff
                                    row.Cells(8).Value = "Half day"
                                End If
                                '3. employee's time out is less than the shift time out, compute for undertime
                                If CDate(log_date & " " & dtareader("timeout").ToString) < CDate(log_date & " " & time_out.ToString("h:mm:ss tt")) Then
                                    undertimediff = DateDiff(DateInterval.Second, CDate(log_date & " " & time_out.ToString("h:mm:ss tt")), CDate(log_date & " " & dtareader("timeout").ToString))
                                    If undertimediff > 3600 Then
                                        row.Cells(8).Value = "Undertime"
                                    End If
                                    overtimediff = 0
                                End If
                                If CDate(log_date & " " & dtareader("timeout").ToString) < CDate(log_date & " " & time_out.ToString("h:mm:ss tt")) Then '4. employee's time out exceeds the shift time out, check for overtime approval, compute overtime
                                    undertimediff = 0
                                    overtimediff = DateDiff(DateInterval.Second, CDate(log_date & " " & dtareader("timeout").ToString), CDate(log_date & " " & time_out.ToString("h:mm:ss tt")))
                                    If overtimediff > 3600 Then
                                        row.Cells(8).Value = "Overtime"
                                    Else
                                        overtimediff = 0
                                    End If
                                End If
                                row.Cells(6).Value = If(Math.Round(undertimediff / 60 / 60, 2) >= 1, Math.Round(undertimediff / 60 / 60, 2), 0)
                                row.Cells(7).Value = If(Math.Round(overtimediff / 60 / 60, 2) >= 1, Math.Round(overtimediff / 60 / 60, 2), 0)
                                'total work hours
                                row.Cells(4).Value = Math.Round(DateDiff(DateInterval.Second, time_in, time_out) / 3600, 2)
                            End If
                        End While
                    End If
                End If
            Next
        Else
            MessageBox.Show("No Data!")
        End If
        Dim col = dgv_temptimesheet.Columns.Count
        For i As Integer = 0 To col
            dgv_temptimesheet.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
            dgv_temptimesheet.Columns(i).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
            dgv_temptimesheet.Columns(i).Resizable = False
            i = i + i
        Next
    End Sub

    Private Sub btn_savetimesheet_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_savetimesheet.Click
        If dgv_temptimesheet.RowCount > 0 Then
            Dim row As New DataGridViewRow
            For Each row In dgv_temptimesheet.Rows
                'save only the entries that is connected to an employee
                If (row.Cells(2).Value.ToString IsNot "" And row.Cells(3).Value.ToString IsNot "") Then
                    StrSql = "Select * FROM tbl_employee WHERE emp_bio_id = '" & row.Cells(0).Value.ToString & "'"
                    QryReadP()
                    Dim dtareader As MySqlDataReader = cmd.ExecuteReader()
                    If dtareader.HasRows Then
                        'check for duplicate entries
                        StrSql = "SELECT * FROM tbl_attendance WHERE emp_bio_id = '" & row.Cells(0).Value.ToString & "' AND date = '" & row.Cells(1).Value.ToString & "'"
                        QryReadP()
                        Dim dtareader2 As MySqlDataReader = cmd.ExecuteReader()
                        If Not dtareader2.HasRows Then
                            'if no duplicate entries
                            'save to db
                            Dim strarr() As String = row.Cells(1).Value.ToString.Split("/")
                            Dim logdate As Date = strarr(2) & "-" & strarr(0) & "-" & strarr(1)
                            Try
                                StrSql = "INSERT INTO tbl_attendance(emp_bio_id, date, time_in, time_out, totalHours, late, undertime, overtime, remarks) " _
                                        & "VALUES(@empbioid,@date,@timein,@timeout,@totalHours,@late,@undertime,@overtime,@remarks)"
                                QryReadP()
                                cmd.Parameters.Add("empbioid", MySqlDbType.String).Value = row.Cells(0).Value.ToString
                                cmd.Parameters.Add("date", MySqlDbType.Date).Value = logdate
                                cmd.Parameters.Add("timein", MySqlDbType.String).Value = row.Cells(2).Value.ToString
                                cmd.Parameters.Add("timeout", MySqlDbType.String).Value = row.Cells(3).Value.ToString
                                cmd.Parameters.Add("totalHours", MySqlDbType.String).Value = row.Cells(4).Value.ToString
                                cmd.Parameters.Add("late", MySqlDbType.String).Value = row.Cells(5).Value.ToString
                                cmd.Parameters.Add("undertime", MySqlDbType.String).Value = row.Cells(6).Value.ToString
                                cmd.Parameters.Add("overtime", MySqlDbType.String).Value = row.Cells(7).Value.ToString
                                cmd.Parameters.Add("remarks", MySqlDbType.String).Value = row.Cells(8).Value.ToString
                                cmd.ExecuteNonQuery()
                                cmd.Dispose()
                            Catch ex As Exception
                                MessageBox.Show(ex.Message.ToString)
                            End Try
                            'update saved data from tbl_attendanceraw as 'mapped'
                            StrSql = "UPDATE tbl_attendanceraw SET ifMapped='1' WHERE LogDate = '" & row.Cells(1).Value.ToString & "' AND No = '" & row.Cells(0).Value.ToString & "'"
                            QryReadP()
                            cmd.ExecuteNonQuery()
                        End If
                    End If
                End If
            Next
            MessageBox.Show("Timesheet saved!")
        Else
            MessageBox.Show("No data to be saved!")
        End If
    End Sub

    Private Sub dgv_temptimesheet_CellDoubleClick(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_temptimesheet.CellDoubleClick
        Dim No = Me.dgv_temptimesheet.CurrentRow.Cells(0).Value.ToString
        Dim LogDate = Me.dgv_temptimesheet.CurrentRow.Cells(1).Value.ToString
        Dim Time_in = Me.dgv_temptimesheet.CurrentRow.Cells(2).Value.ToString
        Dim Time_out = Me.dgv_temptimesheet.CurrentRow.Cells(3).Value.ToString
        Dim frmEditTimesheet As New frmEditTimesheet("temp", No, LogDate, Time_in, Time_out)
        frmEditTimesheet.ShowDialog()
    End Sub
End Class