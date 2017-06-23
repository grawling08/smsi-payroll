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
        label_loggedinas.Text = logged_user
        getCompanyList()
        If dt.Rows.Count > 0 Then
            cb_companylist.DataSource = dt
            cb_companylist.DisplayMember = "name"
        End If
        If app_mode = "integrate" Then
            EmployeeToolStripMenuItem.Enabled = False
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
            dgv_emplist.Columns(i).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
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
        Dim frmEmpDetails As New frmEmpDetails(a)
        If Not String.IsNullOrWhiteSpace(tsbtn_cutoff.Text) Then
            frmEmpDetails.ShowDialog()
        Else
            MessageBox.Show("Set Cutoff First!")
        End If
    End Sub

    Friend Sub ReloadCutoff()
        GetCompanyCutoff(cb_companylist.Text)
        If dt.Rows.Count > 0 Then
            cb_cutoff.DataSource = dt
            cb_cutoff.DisplayMember = "cutoff_range"
        End If
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

    Private Sub EmployeePayToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles EmployeePayToolStripMenuItem.Click
        Dim reportgen As New frmReportGen(1)
        reportgen.ShowDialog()
    End Sub

    Private Sub LeavesToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles LeavesToolStripMenuItem.Click
        Dim reportgen As New frmReportGen(2)
        reportgen.ShowDialog()
    End Sub

    Private Sub ToolStripMenuItem2_Click(sender As System.Object, e As System.EventArgs) Handles ToolStripMenuItem2.Click
        Dim reportgen As New frmReportGen(3)
        reportgen.ShowDialog()
    End Sub

    Private Sub PaidOvertimesToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles PaidOvertimesToolStripMenuItem.Click
        Dim reportgen As New frmReportGen(4)
        reportgen.ShowDialog()
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
        Dim MyConnection As New System.Data.OleDb.OleDbConnection
        Dim DtSet As New System.Data.DataSet
        Dim MyCommand As New System.Data.OleDb.OleDbDataAdapter
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
        Dim frmUploadedTimesheet As New frmUploadedTimesheet()
        frmUploadedTimesheet.ShowDialog()
    End Sub

    Private Sub LeaveConvertToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles LeaveConvertToolStripMenuItem.Click
        Dim frmLeaveConversion As New frmLeaveConversion()
        frmLeaveConversion.ShowDialog()
    End Sub

    Private Sub ShiftsToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles ShiftsToolStripMenuItem.Click
        Dim shifts As New frmShifts()
        shifts.ShowDialog()
    End Sub

    Private Sub CrystalReportSampleToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles CrystalReportSampleToolStripMenuItem.Click
        Dim reports As New frmReports
        reports.Show()
    End Sub

    Private Sub lnk_addcutoff_LinkClicked(sender As System.Object, e As System.Windows.Forms.LinkLabelLinkClickedEventArgs) Handles lnk_addcutoff.LinkClicked
        frmAddCutoff.ShowDialog()
    End Sub

    Private Sub lnk_setcutoff_LinkClicked(sender As System.Object, e As System.Windows.Forms.LinkLabelLinkClickedEventArgs) Handles lnk_setcutoff.LinkClicked
        current_cutoff = cb_cutoff.Text
        tsbtn_cutoff.Text = current_cutoff
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
        Dim thread As Threading.Thread
        thread = New System.Threading.Thread(AddressOf SyncTimesheet)
        thread.Start()
        loading.Show()
        While(thread.IsAlive)
            Application.DoEvents()
        End While
        GetCutoffOccurences()
        getPayslip(current_cutoff)
        loading.Close()
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
        GetCompanyCutoff(cb_companylist.Text)
        If dt.Rows.Count > 0 Then
            cb_cutoff.DataSource = dt
            cb_cutoff.DisplayMember = "cutoff_range"
        End If
        loadEmployee()
    End Sub
End Class
