Imports System.IO
Imports System.Text
Imports System.Security.AccessControl
Imports Microsoft.Office.Interop
Imports MySql.Data.MySqlClient

Public Class frmSettings
    Dim dynamicControl As New ctrlServerSettings

    'custom vertical tabs
    Private Sub TabControl1_DrawItem(sender As System.Object, e As System.Windows.Forms.DrawItemEventArgs) Handles TabControl1.DrawItem
        Dim g As Graphics
        Dim sText As String
        Dim iX As Integer
        Dim iY As Integer
        Dim sizeText As SizeF
        Dim ctlTab As TabControl
        Dim b As New SolidBrush(Me.TabControl1.BackColor)
        ctlTab = CType(sender, TabControl)

        g = e.Graphics

        sText = ctlTab.TabPages(e.Index).Text
        sizeText = g.MeasureString(sText, ctlTab.Font)
        iX = e.Bounds.Left + 6
        iY = e.Bounds.Top + (e.Bounds.Height - sizeText.Height) / 2
        If e.Index = Me.TabControl1.SelectedIndex Then
            b.Color = Color.Blue
            g.DrawString(sText, ctlTab.Font, b, iX, iY)
        Else
            b.Color = Color.Black
            g.DrawString(sText, ctlTab.Font, b, iX, iY)
        End If
        'g.DrawString(sText, ctlTab.Font, Brushes.Black, iX, iY)

    End Sub

    Private Sub frmSrvrSettings_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        With dynamicControl
            .Name = "serverSettings"
            .Location = New Point(3, 3)
        End With
        TabPage1.Controls.Add(dynamicControl)

        dynamicControl.init_form()
        load_reftables("philhealth")
        load_reftables("sss")
        load_reftables("tax")
        load_reftables("holiday")
        load_users()

        If app_mode <> "integrate" Then
            btn_syncemployees.Enabled = False
            btn_syncleaves.Enabled = False
            btn_syncloans.Enabled = False
            btn_syncovertime.Enabled = False
        End If

    End Sub

    Sub load_reftables(ByVal table As String)
        StrSql = "SELECT * FROM tblref_" + table + If(table = "tax", " ORDER BY status, occurence, salary ASC", "")
        QryReadP()
        ds = New DataSet
        adpt.Fill(ds, table)
        Dim bsData2 As New BindingSource
        bsData2.DataSource = ds.Tables(0)

        Select Case table
            Case "philhealth"
                dgv_philhealth.DataSource = ds.Tables(0) 'bsData2
                Dim col = dgv_philhealth.Columns.Count
                For i As Integer = 0 To col
                    If i = 0 Then
                        dgv_philhealth.Columns(0).Visible = False
                    End If
                    dgv_philhealth.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
                    dgv_philhealth.Columns(i).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
                    i = i + i
                Next
            Case "sss"
                dgv_sss.DataSource = ds.Tables(0) 'bsData2
                Dim col = dgv_sss.Columns.Count
                For i As Integer = 0 To col
                    If i = 0 Then
                        dgv_sss.Columns(0).Visible = False
                    End If
                    dgv_sss.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
                    dgv_sss.Columns(i).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
                    i = i + i
                Next
            Case "tax"
                dgv_tax.DataSource = ds.Tables(0) 'bsData2
                Dim col = dgv_tax.Columns.Count
                For i As Integer = 0 To col
                    If i = 0 Then
                        dgv_tax.Columns(0).Visible = False
                    End If
                    dgv_tax.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
                    dgv_tax.Columns(i).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
                    i = i + i
                Next
            Case "holiday"
                dgv_holiday.DataSource = ds.Tables(0) 'bsData2
                Dim col = dgv_holiday.Columns.Count
                For i As Integer = 0 To col
                    If i = 0 Then
                        dgv_holiday.Columns(0).Visible = False
                    End If
                    dgv_holiday.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
                    dgv_holiday.Columns(i).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
                    i = i + i
                Next
        End Select
    End Sub

#Region "inline editables holidays, tax, sss and philhealth"
    'inline editing on datagridviews (without databinding) (without undo edit)
    '---------------------------------------------------     HOLIDAY    --------------------------------------------------------
    Private Sub dgv_holiday_CellEndEdit(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_holiday.CellEndEdit
        'MessageBox.Show(dgv_holiday.CurrentRow.Cells(0).Value.ToString)
        If dgv_holiday.CurrentRow.Cells(0).Value.ToString <> "" Then
            StrSql = "UPDATE tblref_holiday SET " _
                        & "date1 = '" & CDate(dgv_holiday.CurrentRow.Cells(1).Value.ToString).ToString("yyyy-MM-dd") & "', " _
                        & "holiday = '" & dgv_holiday.CurrentRow.Cells(2).Value.ToString & "', " _
                        & "type = '" & dgv_holiday.CurrentRow.Cells(3).Value.ToString & "' " _
                        & "WHERE idHoliday = " & dgv_holiday.CurrentRow.Cells(0).Value.ToString
        Else
            StrSql = "INSERT INTO tblref_holiday(date1, holiday, type) " _
                        & "VALUES('" & CDate(dgv_holiday.CurrentRow.Cells(1).Value.ToString).ToString("yyyy-MM-dd") & "','" & dgv_holiday.CurrentRow.Cells(2).Value.ToString & "','" & dgv_holiday.CurrentRow.Cells(3).Value.ToString & "')"
        End If
        QryReadP()
        cmd.ExecuteNonQuery()
        load_reftables("holiday")
    End Sub
    Private Sub dgv_holiday_UserDeletingRow(sender As System.Object, e As System.Windows.Forms.DataGridViewRowCancelEventArgs) Handles dgv_holiday.UserDeletingRow
        'MessageBox.Show(dgv_holiday.CurrentRow.Cells(0).Value.ToString)
        StrSql = "DELETE FROM tblref_holiday WHERE idHoliday = " & dgv_holiday.CurrentRow.Cells(0).Value.ToString
        QryReadP()
        cmd.ExecuteNonQuery()
    End Sub
    '---------------------------------------------------     SSS    ------------------------------------------------------------
    Private Sub dgv_sss_CellEndEdit(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_sss.CellEndEdit
        If dgv_sss.CurrentRow.Cells(0).Value.ToString <> "" Then
            StrSql = "UPDATE tblref_sss SET " _
                        & "salary = '" & dgv_sss.CurrentRow.Cells(1).Value.ToString & "', " _
                        & "employer = '" & dgv_sss.CurrentRow.Cells(2).Value.ToString & "', " _
                        & "employee = '" & dgv_sss.CurrentRow.Cells(3).Value.ToString & "', " _
                        & "total = '" & dgv_sss.CurrentRow.Cells(4).Value.ToString & "' " _
                        & "WHERE idSSS = " & dgv_sss.CurrentRow.Cells(0).Value.ToString
        Else
            StrSql = "INSERT INTO tblref_holiday(salary, employer, employee, total) " _
                        & "VALUES('" & dgv_sss.CurrentRow.Cells(1).Value.ToString & "','" & dgv_sss.CurrentRow.Cells(2).Value.ToString & "','" & dgv_sss.CurrentRow.Cells(3).Value.ToString & "', '" & dgv_sss.CurrentRow.Cells(4).Value.ToString & "')"
        End If
        QryReadP()
        cmd.ExecuteNonQuery()
        load_reftables("sss")
    End Sub
    Private Sub dgv_sss_UserDeletingRow(sender As System.Object, e As System.Windows.Forms.DataGridViewRowCancelEventArgs) Handles dgv_sss.UserDeletingRow
        'MessageBox.Show(dgv_holiday.CurrentRow.Cells(0).Value.ToString)
        StrSql = "DELETE FROM tblref_sss WHERE idSSS = " & dgv_sss.CurrentRow.Cells(0).Value.ToString
        QryReadP()
        cmd.ExecuteNonQuery()
    End Sub
    '---------------------------------------------------     Philhealth    -----------------------------------------------------
    Private Sub dgv_philhealth_CellEndEdit(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_philhealth.CellEndEdit
        If dgv_philhealth.CurrentRow.Cells(0).Value.ToString <> "" Then
            StrSql = "UPDATE tblref_philhealth SET " _
                        & "salary = '" & dgv_philhealth.CurrentRow.Cells(1).Value.ToString & "', " _
                        & "employer = '" & dgv_philhealth.CurrentRow.Cells(2).Value.ToString & "', " _
                        & "employee = '" & dgv_philhealth.CurrentRow.Cells(3).Value.ToString & "', " _
                        & "total = '" & dgv_philhealth.CurrentRow.Cells(4).Value.ToString & "' " _
                        & "WHERE phil_id = " & dgv_philhealth.CurrentRow.Cells(0).Value.ToString
        Else
            StrSql = "INSERT INTO tblref_philhealth(salary, employer, employee, total) " _
                        & "VALUES('" & dgv_philhealth.CurrentRow.Cells(1).Value.ToString & "','" & dgv_philhealth.CurrentRow.Cells(2).Value.ToString & "','" & dgv_philhealth.CurrentRow.Cells(3).Value.ToString & "', '" & dgv_philhealth.CurrentRow.Cells(4).Value.ToString & "')"
        End If
        QryReadP()
        cmd.ExecuteNonQuery()
        load_reftables("philhealth")
    End Sub
    Private Sub dgv_philhealth_UserDeletingRow(sender As System.Object, e As System.Windows.Forms.DataGridViewRowCancelEventArgs) Handles dgv_philhealth.UserDeletingRow
        'MessageBox.Show(dgv_holiday.CurrentRow.Cells(0).Value.ToString)
        StrSql = "DELETE FROM tblref_philhealth WHERE phil_id = " & dgv_philhealth.CurrentRow.Cells(0).Value.ToString
        QryReadP()
        cmd.ExecuteNonQuery()
    End Sub
    '---------------------------------------------------     TAX    -----------------------------------------------------
    Private Sub dgv_tax_CellEndEdit(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_tax.CellEndEdit
        If dgv_tax.CurrentRow.Cells(0).Value.ToString <> "" Then
            StrSql = "UPDATE tblref_tax SET " _
                        & "status = '" & dgv_tax.CurrentRow.Cells(1).Value.ToString & "', " _
                        & "salary = '" & dgv_tax.CurrentRow.Cells(2).Value.ToString & "', " _
                        & "percentage = '" & dgv_tax.CurrentRow.Cells(3).Value.ToString & "', " _
                        & "excemption = '" & dgv_tax.CurrentRow.Cells(4).Value.ToString & "', " _
                        & "occurence = '" & dgv_tax.CurrentRow.Cells(5).Value.ToString & "' " _
                        & "WHERE idTax = " & dgv_tax.CurrentRow.Cells(0).Value.ToString
        Else
            StrSql = "INSERT INTO tblref_tax(status, salary, percentage, excemption, occurence) " _
                        & "VALUES('" & dgv_tax.CurrentRow.Cells(1).Value.ToString & "','" & dgv_tax.CurrentRow.Cells(2).Value.ToString & "','" & dgv_tax.CurrentRow.Cells(3).Value.ToString & "', '" & dgv_tax.CurrentRow.Cells(4).Value.ToString & "', '" & dgv_tax.CurrentRow.Cells(5).Value.ToString & "')"
        End If
        QryReadP()
        cmd.ExecuteNonQuery()
        load_reftables("philhealth")
    End Sub
    Private Sub dgv_tax_UserDeletingRow(sender As System.Object, e As System.Windows.Forms.DataGridViewRowCancelEventArgs) Handles dgv_tax.UserDeletingRow
        'MessageBox.Show(dgv_holiday.CurrentRow.Cells(0).Value.ToString)
        StrSql = "DELETE FROM tblref_tax WHERE idTax = " & dgv_philhealth.CurrentRow.Cells(0).Value.ToString
        QryReadP()
        cmd.ExecuteNonQuery()
    End Sub
#End Region
    'export payslip
    Private Sub btn_exportpayslip_Click(sender As System.Object, e As System.EventArgs) Handles btn_exportpayslip.Click
        'export to excel
        StrSql = "SELECT DATE_FORMAT(tbl_cutoff.from_date,'%Y-%m-%d') as 'From', " _
            & "DATE_FORMAT(tbl_cutoff.to_date,'%Y-%m-%d') as 'To', company as 'Company'," _
            & "CONCAT_WS(' ',lName,fName,mName) as Employee, " _
            & "tbl_payslip.totalWorkHours as 'TotalWorkHours', tbl_payslip.income as 'Quincena', " _
            & "tbl_payslip.regot_pay as 'RegularOT', tbl_payslip.holot_pay as 'HolidayOT', " _
            & "tbl_payslip.ot_pay as 'TotalOT', tbl_payslip.allowances as 'Additionals', " _
            & "tbl_payslip.incentives as 'Incentives', tbl_payslip.lateabsent_deduct as 'LateAbsent', " _
            & "tbl_payslip.undertime_deduct as 'Undertime', tbl_payslip.tax as 'Tax', " _
            & "tbl_payslip.sss as 'SSS', tbl_payslip.phic as 'PHIC', " _
            & "tbl_payslip.hdmf as 'HDMF', tbl_payslip.gross_income as 'GrossIncome', " _
            & "tbl_payslip.net_income as 'NetIncome' FROM tbl_employee " _
            & "INNER JOIN tbl_payslip ON tbl_employee.emp_id = tbl_payslip.employee_id " _
            & "INNER JOIN tbl_cutoff ON tbl_cutoff.cutoff_id = tbl_payslip.cutoff_id " _
            & "WHERE tbl_cutoff.cutoff_range = '" & current_cutoff & "' " _
            & "AND company = '" & current_company & "' ORDER BY Employee"
        QryReadP()
        dt = New DataTable
        adpt.Fill(dt)
        Dim txt As String = String.Empty
        Dim line As String = ""
        For Each column As DataColumn In dt.Columns
            'Add the Header row for Text file.
            line += "," & column.ColumnName
        Next
        'Add new line.
        txt += line.Substring(1) & vbCr & vbLf
        line = ""
        For Each row As DataRow In dt.Rows
            For Each column As DataColumn In dt.Columns
                'Add the Data rows.
                line += "," & row(column.ColumnName).ToString()
            Next
            'Add new line.
            txt += line.Substring(1) & vbCr & vbLf
            line = ""
        Next
        Using sw As StreamWriter = New StreamWriter(Application.UserAppDataPath & "\payslip.csv")
            sw.WriteLine(txt)
        End Using
        MessageBox.Show("Exported!")
    End Sub
    'export timesheet
    Private Sub btn_exporttimesheet_Click(sender As System.Object, e As System.EventArgs) Handles btn_exporttimesheet.Click
        'export to excel
        StrSql = "SELECT emp_bio_id, DATE_FORMAT(date,'%Y-%m-%d') as dateLog," _
                    & "DATE_FORMAT(STR_TO_DATE(time_in, '%c/%e/%Y %r'), '%H:%i:%s') as timein, " _
                    & "DATE_FORMAT(STR_TO_DATE(time_out, '%c/%e/%Y %r'), '%H:%i:%s') as timeout, " _
                    & "totalHours, late, undertime, overtime, remarks FROM tbl_attendance " _
                    & "WHERE date BETWEEN (SELECT from_date FROM tbl_cutoff WHERE cutoff_range = '" & current_cutoff & "') AND " _
                    & "(SELECT to_date FROM tbl_cutoff WHERE cutoff_range = '" & current_cutoff & "')"
        QryReadP()
        dt = New DataTable
        adpt.Fill(dt)
        Dim txt As String = String.Empty
        Dim line As String = ""
        For Each column As DataColumn In dt.Columns
            'Add the Header row for Text file.
            line += "," & column.ColumnName
        Next
        'Add new line.
        txt += line.Substring(1) & vbCr & vbLf
        line = ""
        For Each row As DataRow In dt.Rows
            For Each column As DataColumn In dt.Columns
                'Add the Data rows.
                line += "," & row(column.ColumnName).ToString()
            Next
            'Add new line.
            txt += line.Substring(1) & vbCr & vbLf
            line = ""
        Next
        Using sw As StreamWriter = New StreamWriter(Application.UserAppDataPath & "\attendance.csv")
            sw.WriteLine(txt)
        End Using
        MessageBox.Show("Exported!")
    End Sub
    'export cutoff
    Private Sub Button1_Click(sender As System.Object, e As System.EventArgs) Handles btn_exportcutoff.Click
        StrSql = "SELECT DATE_FORMAT(tbl_cutoff.from_date,'%Y-%m-%d') as from_date, DATE_FORMAT(tbl_cutoff.to_date,'%Y-%m-%d') as to_date FROM tbl_cutoff, tblref_occurences WHERE tbl_cutoff.occurence_id = tblref_occurences.occurence_id"
        QryReadP()
        dt = New DataTable
        adpt.Fill(dt)
        Dim txt As String = String.Empty
        Dim line As String = ""
        For Each column As DataColumn In dt.Columns
            'Add the Header row for Text file.
            line += "," & column.ColumnName
        Next
        'Add new line.
        txt += line.Substring(1) & vbCr & vbLf
        line = ""
        For Each row As DataRow In dt.Rows
            For Each column As DataColumn In dt.Columns
                'Add the Data rows.
                line += "," & row(column.ColumnName).ToString()
            Next
            'Add new line.
            txt += line.Substring(1) & vbCr & vbLf
            line = ""
        Next
        Using sw As StreamWriter = New StreamWriter(Application.UserAppDataPath & "\cutoff.csv")
            sw.WriteLine(txt)
        End Using
        MessageBox.Show("Exported!")
    End Sub
    'load users
    Public Sub load_users()
        StrSql = "SELECT * FROM tbl_user"
        QryReadP()
        ds = New DataSet
        adpt.Fill(ds, "users")
        dgv_users.DataSource = ds.Tables(0)
        Dim col = dgv_users.Columns.Count
        For i As Integer = 0 To col
            If i = 0 Then
                dgv_users.Columns(0).Visible = False
            End If
            dgv_users.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
            dgv_users.Columns(i).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
            i = i + i
        Next
    End Sub

#Region "sync employees, loans, overtime, leaves"
    Private Sub btn_syncemployees_Click(sender As System.Object, e As System.EventArgs) Handles btn_syncemployees.Click
        If SyncEmployee() Then
            MessageBox.Show("Synced Employees")
        End If
    End Sub

    Private Sub btn_syncloans_Click(sender As System.Object, e As System.EventArgs) Handles btn_syncloans.Click
        If SyncLoans() Then
            MessageBox.Show("Synced Loans")
        End If
    End Sub

    Private Sub btn_syncovertime_Click(sender As System.Object, e As System.EventArgs) Handles btn_syncovertime.Click
        If SyncOvertime() Then
            MessageBox.Show("Synced Overtime")
        End If
    End Sub

    Private Sub btn_syncleaves_Click(sender As System.Object, e As System.EventArgs) Handles btn_syncleaves.Click
        If SyncLeaves() Then
            MessageBox.Show("Synced Leaves")
        End If
    End Sub
#End Region
    'users CRUD
    Private Sub BindingNavigatorAddNewItem_Click(sender As System.Object, e As System.EventArgs) Handles BindingNavigatorAddNewItem.Click
        Dim frmUser As New frmUser("add")
        frmUser.ShowDialog()
    End Sub

    Private Sub ToolStripButton1_Click(sender As System.Object, e As System.EventArgs) Handles ToolStripButton1.Click
        Dim frmUser As New frmUser("edit", dgv_users.CurrentRow.Cells(0).Value.ToString, dgv_users.CurrentRow.Cells(1).Value.ToString, dgv_users.CurrentRow.Cells(2).Value.ToString, dgv_users.CurrentRow.Cells(4).Value.ToString, dgv_users.CurrentRow.Cells(5).Value.ToString)
        frmUser.ShowDialog()
    End Sub

    Private Sub BindingNavigatorDeleteItem_Click(sender As System.Object, e As System.EventArgs) Handles BindingNavigatorDeleteItem.Click
        Dim userid As String = dgv_users.CurrentRow.Cells(0).Value.ToString()
        StrSql = "DELETE FROM tbl_user WHERE user_id = " & userid
        QryReadP()
        cmd.ExecuteNonQuery()
        dgv_users.Rows.Remove(dgv_users.SelectedRows(0))
        MessageBox.Show("Deleted!")
    End Sub
End Class