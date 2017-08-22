Imports System.IO
Imports System.Data.OleDb
Imports MySql.Data.MySqlClient
Imports DocumentFormat.OpenXml.Packaging
Imports DocumentFormat.OpenXml.Spreadsheet

Public Class frmMain
    
    'exit the application
    Private Sub LogoutToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles LogoutToolStripMenuItem.Click
        Close_Connect()
        'frmLogin.Show()
        Me.Close()
    End Sub

    'on start up 
    Private Sub frmMain_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'loadEmployee()
        'label_loggedinas.Text = logged_user
        getCompanyList()
        If dt.Rows.Count > 0 Then
            cb_companylist.DataSource = dt
            cb_companylist.DisplayMember = "name"
        End If
        If app_mode = "integrate" Then
            EmployeeToolStripMenuItem.Enabled = False
        End If
        If String.IsNullOrWhiteSpace(tstxtbox_cutoff.Text) Then
            btn_loadpayroll.Enabled = False
            tsb_remfrompayroll.Enabled = False
            btn_savepayroll.Enabled = False
            tsb_printpayroll.Enabled = False
            tsbtn_refreshdgv.Enabled = False
        End If
    End Sub
    '
    Sub loadEmployee()
        'load employee list on start up
        StrSql = "SELECT id_employee AS ID, CONCAT(lName, ', ', fName, ' ', LEFT(mName, 1), '.') AS Employee FROM tbl_employee WHERE tbl_employee.company = '" & current_company & "' AND employment_status NOT IN(' ','Resigned') ORDER BY Employee ASC"
        QryReadP()
        ds = New DataSet()
        adpt.Fill(ds, "Emp")
        bsData.DataSource = ds.Tables(0)
        dgv_emplist.DataSource = bsData
        Dim col = dgv_emplist.Columns.Count
        For i As Integer = 0 To col
            dgv_emplist.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
            i = i + i
        Next
        dgv_emplist.Columns(0).Visible = False
    End Sub

    'refresh employee table
    Private Sub tsbtn_refreshdgv_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsbtn_refreshdgv.Click
        tstb_searchdgv.Clear()
        loadEmployee()
    End Sub
    'open employee details
    Private Sub dgv_emplist_CellDoubleClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_emplist.CellDoubleClick
        Dim a = Me.dgv_emplist.CurrentRow.Cells(0).Value.ToString
        Using frmEmpDetails As New frmEmpDetails(a)
            If Not String.IsNullOrWhiteSpace(tstxtbox_cutoff.Text) Then
                frmEmpDetails.ShowDialog()
            Else
                MessageBox.Show("Set Cutoff First!")
            End If
        End Using
    End Sub
    'search employee
    Private Sub tstb_searchdgv_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tstb_searchdgv.TextChanged
        modConnect.bsData.Filter = String.Format("[Employee] Like '%{0}%'", Me.tstb_searchdgv.Text.Trim())
    End Sub

    'about
    Private Sub AboutToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AboutToolStripMenuItem.Click
        frmAbout.ShowDialog()
    End Sub
    'settings form
    Private Sub SettingsToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles SettingsToolStripMenuItem.Click
        frmSettings.ShowDialog()
    End Sub

    Private Sub btn_loadpayroll_Click(sender As System.Object, e As System.EventArgs) Handles btn_loadpayroll.Click
        'load payslip for the current cutoff
        If current_cutoff <> Nothing Or String.IsNullOrEmpty(current_cutoff) Then
            getPayslip(current_cutoff)
        End If
    End Sub
    'upload timesheet
    Private Sub UploadTimsheetToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles UploadTimsheetToolStripMenuItem.Click
        Dim myStream As System.IO.Stream = Nothing
        Dim openFileDialog1 As New OpenFileDialog()
        Dim dta As New DataTable
        Dim MyConnection As New OleDbConnection
        Dim DtSet As New DataSet
        Dim MyCommand As New OleDbDataAdapter
        openFileDialog1.InitialDirectory = "c:\"
        openFileDialog1.Filter = "Excel files |*.xls;*.xlsx"
        openFileDialog1.Title = "Select file for import"
        openFileDialog1.FilterIndex = 2
        openFileDialog1.RestoreDirectory = True

        If openFileDialog1.ShowDialog() = System.Windows.Forms.DialogResult.OK Then
            'Try
            myStream = openFileDialog1.OpenFile()
            If (myStream IsNot Nothing) Then
                Dim FileName As String = openFileDialog1.FileName
                Dim FilePath As String = Path.GetFullPath(FileName)
                Dim extension = Path.GetExtension(FileName)
                'check file extension
                If extension = ".xls" Then
                    Try
                        If MyConnection.State = ConnectionState.Open Then
                            MyConnection.Close()
                        End If
                        MyConnection = New System.Data.OleDb.OleDbConnection("provider=Microsoft.ACE.OLEDB.12.0;Data Source='" & FileName & "';Extended Properties=Excel 12.0;")
                        MyCommand = New System.Data.OleDb.OleDbDataAdapter("select * from [Source$]", MyConnection)
                        MyCommand.TableMappings.Add("Table", "timesheet")
                        MyCommand.Fill(DtSet)
                        dta = DtSet.Tables(0)
                    Catch ex As Exception
                        MessageBox.Show(ex.InnerException.ToString)
                    End Try
                    MyCommand.Dispose()
                    MyConnection.Close()
                ElseIf extension = ".xlsx" Then
                    Using doc As SpreadsheetDocument = SpreadsheetDocument.Open(FilePath, False)
                        'Read the first Sheet from Excel file.
                        Dim sheet As Sheet = doc.WorkbookPart.Workbook.Sheets.GetFirstChild(Of Sheet)()
                        'Get the Worksheet instance.
                        Dim worksheet As Worksheet = TryCast(doc.WorkbookPart.GetPartById(sheet.Id.Value), WorksheetPart).Worksheet
                        'Fetch all the rows present in the Worksheet.
                        Dim rows As IEnumerable(Of Row) = worksheet.GetFirstChild(Of SheetData)().Descendants(Of Row)()
                        'Loop through the Worksheet rows.
                        For Each row As Row In rows
                            'Use the first row to add columns to DataTable.
                            If row.RowIndex.Value = 1 Then
                                For Each cell As Cell In row.Descendants(Of Cell)()
                                    dta.Columns.Add(GetValue(doc, cell))
                                Next
                            Else
                                'Add rows to DataTable.
                                dta.Rows.Add()
                                Dim i As Integer = 0
                                For Each cell As Cell In row.Descendants(Of Cell)()
                                    dta.Rows(dta.Rows.Count - 1)(i) = GetValue(doc, cell)
                                    i += 1
                                Next
                            End If
                        Next
                    End Using
                End If
            End If
            'Catch Exc As Exception
            'Console.Write(Exc.InnerException.ToString)
            'End Try
            myStream.Close()
            SaveRawAttendance(dta)
            frmUploadedTimesheet.ShowDialog()
        End If
    End Sub
    Private Function GetValue(doc As SpreadsheetDocument, cell As Cell) As String
        Dim value As String = If(cell.CellValue.InnerText = Nothing, "", cell.CellValue.InnerText)
        If cell.DataType IsNot Nothing AndAlso cell.DataType.Value = CellValues.SharedString Then
            Return doc.WorkbookPart.SharedStringTablePart.SharedStringTable.ChildElements.GetItem(Integer.Parse(value)).InnerText
        End If
        Return value
    End Function
    'review uploaded timesheet
    Private Sub ViewRawTimesheetToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles ViewRawTimesheetToolStripMenuItem.Click
        Using frmUploadedTimesheet As New frmUploadedTimesheet()
            frmUploadedTimesheet.ShowDialog()
        End Using
    End Sub

    Private Sub LeaveConvertToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles LeaveConvertToolStripMenuItem.Click
        Using frmLeaveConversion As New frmLeaveConversion()
            frmLeaveConversion.ShowDialog()
        End Using
    End Sub

    Private Sub ShiftsToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles ShiftsToolStripMenuItem.Click
        Using shifts As New frmShifts()
            shifts.ShowDialog()
        End Using
    End Sub

    Private Sub lnk_addcutoff_LinkClicked(sender As System.Object, e As System.Windows.Forms.LinkLabelLinkClickedEventArgs) Handles lnk_addcutoff.LinkClicked
        frmAddCutoff.ShowDialog()
    End Sub

    Private Sub lnk_setcutoff_LinkClicked(sender As System.Object, e As System.Windows.Forms.LinkLabelLinkClickedEventArgs) Handles lnk_setcutoff.LinkClicked
        'loading.Show()
        If String.IsNullOrWhiteSpace(cb_cutoff.Text) Then
            MessageBox.Show("Add new Cutoff!")
            lnk_addcutoff.Focus()
            Exit Sub
        End If
        current_cutoff = cb_cutoff.Text
        tstxtbox_cutoff.Text = current_cutoff
        btn_loadpayroll.Enabled = True
        tsb_remfrompayroll.Enabled = True
        btn_savepayroll.Enabled = True
        tsb_printpayroll.Enabled = True
        tsbtn_refreshdgv.Enabled = True
        StrSql = "SELECT * FROM tblref_settings WHERE setting_name = 'current_cutoff'"
        QryReadP()
        Dim cutoffreader As MySqlDataReader = cmd.ExecuteReader
        If cutoffreader.HasRows Then
            StrSql = "UPDATE tblref_settings SET value = '" & current_cutoff & "' WHERE setting_name = 'current_cutoff'"
        Else
            StrSql = "INSERT INTO tblref_settings VALUES ('current_cutoff','" & current_cutoff & "')"
        End If
        QryReadP()
        cmd.ExecuteNonQuery()

        GetCutoffOccurences()
        'get the date range of the cutoff
        getCutoffRange()
        'get previous cutoff days for deductions
        GetPrevCutoff()

        'Dim thread As Threading.Thread
        'thread = New System.Threading.Thread(AddressOf SyncTimesheet)
        'thread.Start()
        'While (thread.IsAlive)
        '    Application.DoEvents()
        'End While

        'get initial payslip summary
        getPayslip(current_cutoff)
        loadEmployee()
        'loading.Close()
        MessageBox.Show("Cutoff changed!")
    End Sub
    Private Sub cb_companylist_SelectedIndexChanged(sender As System.Object, e As System.EventArgs) Handles cb_companylist.SelectedIndexChanged
        lbl_currentcompany.Text = cb_companylist.Text
        current_company = cb_companylist.Text
        StrSql = "SELECT * FROM tblref_settings WHERE setting_name = 'current_company'"
        QryReadP()
        Dim compreader As MySqlDataReader = cmd.ExecuteReader
        If compreader.HasRows Then
            StrSql = "UPDATE tblref_settings SET value = '" & current_company & "' WHERE setting_name = 'current_company'"
        Else
            StrSql = "INSERT INTO tblref_settings VALUES ('current_company','" & current_company & "')"
        End If
        QryReadP()
        cmd.ExecuteNonQuery()
        loadcutoff()
    End Sub

    Sub loadcutoff()
        cb_cutoff.DataSource = Nothing
        cb_cutoff.Items.Clear()
        GetCompanyCutoff(cb_companylist.Text)
        If dt.Rows.Count > 0 Then
            cb_cutoff.DataSource = dt
            cb_cutoff.DisplayMember = "cutoff_range"
        End If
    End Sub

    Private Sub tsb_printpayroll_Click(sender As System.Object, e As System.EventArgs) Handles tsb_printpayroll.Click
        frmReport.Show()
    End Sub

    Private Sub btn_savepayroll_Click(sender As System.Object, e As System.EventArgs) Handles btn_savepayroll.Click
        Dim rows = dgv_payroll.Rows.Count
        Dim j = 0
        While j <= rows - 1
            'check if saved payslip
            StrSql = "SELECT * FROM tbl_payslip WHERE employee_id = " & dgv_payroll.Rows(j).Cells(1).Value.ToString & " AND cutoff_id = '" & cutoff_id & "'"
            QryReadP()
            Dim dtareader As MySqlDataReader = cmd.ExecuteReader
            If dtareader.HasRows Then
                dtareader.Read()
                'payslip_id = dtareader("payslip_id").ToString
                'edit/update database
                StrSql = "UPDATE tbl_payslip SET " _
                        & "income =" & CDbl(dgv_payroll.Rows(j).Cells(6).Value.ToString) & "," _
                        & "regot_pay =" & CDbl(dgv_payroll.Rows(j).Cells(7).Value.ToString) & "," _
                        & "holot_pay =" & CDbl(dgv_payroll.Rows(j).Cells(8).Value.ToString) & "," _
                        & "ot_pay =" & CDbl(dgv_payroll.Rows(j).Cells(9).Value.ToString) & "," _
                        & "allowances =" & CDbl(dgv_payroll.Rows(j).Cells(10).Value.ToString) & "," _
                        & "incentives =" & dgv_payroll.Rows(j).Cells(11).Value.ToString & "," _
                        & "late_deduct =" & CDbl(dgv_payroll.Rows(j).Cells(12).Value.ToString) & "," _
                        & "absent =" & CDbl(dgv_payroll.Rows(j).Cells(13).Value.ToString) & "," _
                        & "undertime_deduct =" & CDbl(dgv_payroll.Rows(j).Cells(14).Value.ToString) & "," _
                        & "sss =" & CDbl(dgv_payroll.Rows(j).Cells(15).Value.ToString) & "," _
                        & "phic =" & CDbl(dgv_payroll.Rows(j).Cells(16).Value.ToString) & "," _
                        & "hdmf =" & CDbl(dgv_payroll.Rows(j).Cells(17).Value.ToString) & "," _
                        & "gross_income =" & dgv_payroll.Rows(j).Cells(18).Value.ToString & "," _
                        & "loans =" & dgv_payroll.Rows(j).Cells(19).Value.ToString & "," _
                        & "otherdeduct =" & dgv_payroll.Rows(j).Cells(20).Value.ToString & "," _
                        & "insurance =" & CDbl(dgv_payroll.Rows(j).Cells(21).Value.ToString) & "," _
                        & "tax =" & CDbl(dgv_payroll.Rows(j).Cells(22).Value.ToString) & "," _
                        & "net_income =" & dgv_payroll.Rows(j).Cells(23).Value.ToString _
                        & " WHERE payslip_id = '" & dtareader("payslip_id").ToString & "'"
                QryReadP()
                cmd.ExecuteNonQuery()
            Else
                'saved new payslip
                StrSql = "INSERT INTO tbl_payslip VALUES(0,'" & dgv_payroll.Rows(j).Cells(1).Value.ToString & "'," & cutoff_id & "," _
                        & CDbl(dgv_payroll.Rows(j).Cells(6).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(7).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(8).Value.ToString) & "," _
                        & CDbl(dgv_payroll.Rows(j).Cells(9).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(10).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(11).Value.ToString) & "," _
                        & CDbl(dgv_payroll.Rows(j).Cells(12).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(13).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(14).Value.ToString) & "," _
                        & CDbl(dgv_payroll.Rows(j).Cells(15).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(16).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(17).Value.ToString) & "," _
                        & CDbl(dgv_payroll.Rows(j).Cells(18).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(19).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(20).Value.ToString) & "," _
                        & CDbl(dgv_payroll.Rows(j).Cells(21).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(22).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(23).Value.ToString) & ")"
                QryReadP()
                cmd.ExecuteNonQuery()
            End If
            cmd.Dispose()
            Close_Connect()
            'Console.Write(dgv_payroll.Rows(j).Cells(0).Value.ToString + " " + vbCrLf)
            j = j + 1
        End While
        If app_mode = "integrate" Then
            SavePayslipToHRIS()
        End If
        MessageBox.Show("Payslip Saved!")
        'load payslip for the current cutoff
        getPayslip(current_cutoff)
    End Sub

    Private Sub dgv_payroll_CellClick(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_payroll.CellClick
        If dgv_payroll.CurrentRow.Cells(0).Value = True Then
            dgv_payroll.CurrentRow.Cells(0).Value = False
        Else
            dgv_payroll.CurrentRow.Cells(0).Value = True
        End If
    End Sub

    Private Sub tsb_remfrompayroll_Click(sender As System.Object, e As System.EventArgs) Handles tsb_remfrompayroll.Click
        Dim chked As Integer = 0
        For a = (dgv_payroll.Rows.Count - 1) To 0 Step -1
            If dgv_payroll.Rows(a).Cells(0).Value = True Then
                chked += 1
            End If
        Next
        If chked > 0 Then
            Dim result As Integer = MessageBox.Show("Remove Checked Employees from Payroll?", "Remove", MessageBoxButtons.YesNo)
            If result = DialogResult.Yes Then
                'MessageBox.Show("Yes pressed")
                For a = (dgv_payroll.Rows.Count - 1) To 0 Step -1
                    If dgv_payroll.Rows(a).Cells(0).Value = True Then
                        'turn off
                        StrSql = "UPDATE tbl_employee SET isExcluded = 1 WHERE id_employee ='" & dgv_payroll.Rows(a).Cells(1).Value.ToString & "'"
                        QryReadP()
                        cmd.ExecuteNonQuery()
                        Close_Connect()
                        dgv_payroll.Rows.RemoveAt(a)
                    End If
                Next
            End If
        Else
            MessageBox.Show("No Employees Selected")
        End If

    End Sub

    Private Sub SavePayslipToHRIS()
        Dim rows = dgv_payroll.Rows.Count
        Dim j = 0
        While j <= rows - 1
            'check if saved payslip
            StrSql = "SELECT * FROM payslip WHERE employee_id = " & dgv_payroll.Rows(j).Cells(1).Value.ToString & " AND from_date = '" & frmdate_cutoff.ToString("yyyy-MM-dd") & "' AND to_date = '" & todate_cutoff.ToString("yyyy-MM-dd") & "'"
            QryReadH()
            Dim dtareader As MySqlDataReader = cmd.ExecuteReader
            If dtareader.HasRows Then
                dtareader.Read()
                'payslip_id = dtareader("payslip_id").ToString
                'edit/update database
                StrSql = "UPDATE payslip SET " _
                        & "monthly_rate =" & CDbl(dgv_payroll.Rows(j).Cells(5).Value.ToString) & "," _
                        & "basic_pay =" & CDbl(dgv_payroll.Rows(j).Cells(6).Value.ToString) & "," _
                        & "regular_ot =" & CDbl(dgv_payroll.Rows(j).Cells(7).Value.ToString) & "," _
                        & "holiday_ot =" & CDbl(dgv_payroll.Rows(j).Cells(8).Value.ToString) & "," _
                        & "total_ot =" & CDbl(dgv_payroll.Rows(j).Cells(9).Value.ToString) & "," _
                        & "additionals =" & CDbl(dgv_payroll.Rows(j).Cells(10).Value.ToString) & "," _
                        & "incentives =" & dgv_payroll.Rows(j).Cells(11).Value.ToString & "," _
                        & "late =" & CDbl(dgv_payroll.Rows(j).Cells(12).Value.ToString) & "," _
                        & "absent =" & CDbl(dgv_payroll.Rows(j).Cells(13).Value.ToString) & "," _
                        & "undertime =" & CDbl(dgv_payroll.Rows(j).Cells(14).Value.ToString) & "," _
                        & "sss =" & CDbl(dgv_payroll.Rows(j).Cells(15).Value.ToString) & "," _
                        & "phic =" & CDbl(dgv_payroll.Rows(j).Cells(16).Value.ToString) & "," _
                        & "hdmf =" & CDbl(dgv_payroll.Rows(j).Cells(17).Value.ToString) & "," _
                        & "grossIncome =" & dgv_payroll.Rows(j).Cells(18).Value.ToString & "," _
                        & "loans =" & dgv_payroll.Rows(j).Cells(19).Value.ToString & "," _
                        & "otherDeductions =" & dgv_payroll.Rows(j).Cells(20).Value.ToString & "," _
                        & "insurance =" & CDbl(dgv_payroll.Rows(j).Cells(21).Value.ToString) & "," _
                        & "tax =" & CDbl(dgv_payroll.Rows(j).Cells(22).Value.ToString) & "," _
                        & "netIncome =" & dgv_payroll.Rows(j).Cells(23).Value.ToString _
                        & " WHERE id = '" & dtareader("id").ToString & "'"
                QryReadH()
                cmd.ExecuteNonQuery()
            Else
                StrSql = "INSERT INTO payslip VALUES(0,'" & dgv_payroll.Rows(j).Cells(1).Value.ToString & "','" & frmdate_cutoff.ToString("yyyy-MM-dd") & "','" & todate_cutoff.ToString("yyyy-MM-dd") & "','" & current_company & "'," & CDbl(dgv_payroll.Rows(j).Cells(5).Value.ToString) & "," _
                            & CDbl(dgv_payroll.Rows(j).Cells(6).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(7).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(8).Value.ToString) & "," _
                            & CDbl(dgv_payroll.Rows(j).Cells(9).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(10).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(11).Value.ToString) & "," _
                            & CDbl(dgv_payroll.Rows(j).Cells(12).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(13).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(14).Value.ToString) & "," _
                            & CDbl(dgv_payroll.Rows(j).Cells(15).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(16).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(17).Value.ToString) & "," _
                            & CDbl(dgv_payroll.Rows(j).Cells(18).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(19).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(20).Value.ToString) & "," _
                            & CDbl(dgv_payroll.Rows(j).Cells(21).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(22).Value.ToString) & "," & CDbl(dgv_payroll.Rows(j).Cells(23).Value.ToString) & ")"
                'Console.Write(StrSql + vbCrLf)
                QryReadH()
                cmd.ExecuteNonQuery()
            End If
            j = j + 1
        End While
    End Sub

End Class
