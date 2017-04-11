Imports System.IO
Imports ADODB
Imports System.Data.OleDb
Imports MySql.Data.MySqlClient

Public Class frmMain
    Public logged_user As String
    Public emp_id As String
    'exit the application
    Private Sub LogoutToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles LogoutToolStripMenuItem.Click
        Close_Connect()
        frmLogin.Show()
        Me.Close()
    End Sub

    'on start up 
    Private Sub frmMain_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        loadEmployee()
        label_loggedinas.Text = logged_user
        ReloadCutoff()
        'load payslip for the current cutoff
        getPayslip(current_cutoff)
        lbl_currentcompany.Text = current_company.ToString
    End Sub
    '
    Sub loadEmployee()
        'load employee list on start up
        StrSql = "SELECT emp_id AS ID, CONCAT_WS(' ', lName, fName, mName) AS Employee FROM tbl_employee WHERE company = '" & current_company & "'"
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
        frmEmpDetails.ShowDialog()
    End Sub

    Friend Sub ReloadCutoff()
        'get active cutoff
        GetCutoff()
        Dim res = dt.Select("ifActive = 'Y'")
        occurence = res(0).Item(8).ToString
        Select Case occurence
            Case "Monthly"
                num_occurence = 1
            Case "Semi-Monthly"
                num_occurence = 2
            Case "Weekly"
                num_occurence = 4
        End Select
        If dt.Rows.Count > 0 Then
            cb_cutoffsearch.ComboBox.DataSource = dt
            cb_cutoffsearch.ComboBox.DisplayMember = "cutoff_range"
        End If
        res = dt.Select("ifActive = 'Y'")
        cb_cutoffsearch.SelectedIndex = cb_cutoffsearch.FindString(res(0).Item(1).ToString)
        
        'load payslip for the current cutoff
        getPayslip(current_cutoff)
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
        getPayslip(cb_cutoffsearch.Text)
    End Sub
    'upload timesheet
    Private Sub UploadTimsheetToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles UploadTimsheetToolStripMenuItem.Click
        Dim myStream As System.IO.Stream = Nothing
        Dim openFileDialog1 As New OpenFileDialog()
        Dim dta As New DataTable
        Dim MyConnection As New System.Data.OleDb.OleDbConnection
        Dim DtSet As System.Data.DataSet
        Dim MyCommand As System.Data.OleDb.OleDbDataAdapter
        openFileDialog1.InitialDirectory = "c:\"
        openFileDialog1.Filter = "Excel files |*.xls;*.xlsx"
        openFileDialog1.Title = "Select file for import"
        openFileDialog1.FilterIndex = 2
        openFileDialog1.RestoreDirectory = True

        If openFileDialog1.ShowDialog() = System.Windows.Forms.DialogResult.OK Then
            Try
                myStream = openFileDialog1.OpenFile()
                If (myStream IsNot Nothing) Then
                    Dim FileName As String = openFileDialog1.FileName
                    Dim extension = Path.GetExtension(FileName)
                    'check file extension
                    If extension = ".xls" Or extension = ".xlsx" Then
                        Try
                            If MyConnection.State = ConnectionState.Open Then
                                MyConnection.Close()
                            End If
                            MyConnection = New System.Data.OleDb.OleDbConnection("provider=Microsoft.Jet.OLEDB.4.0;Data Source='" & FileName & "';Extended Properties=Excel 8.0;")
                            MyCommand = New System.Data.OleDb.OleDbDataAdapter("select * from [Source$]", MyConnection)
                            MyCommand.TableMappings.Add("Table", "timesheet")
                            DtSet = New System.Data.DataSet
                            MyCommand.Fill(DtSet)
                            dta = DtSet.Tables(0)
                        Catch ex As Exception
                            MessageBox.Show(ex.InnerException.ToString)
                        End Try
                        MyConnection.Close()
                    End If
                End If

            Catch Exc As Exception
                MessageBox.Show(Exc.InnerException.ToString)
            Finally
                ' Check this again, since we need to make sure we didn't throw an exception on open.
                If (myStream IsNot Nothing) Then
                    myStream.Close()
                End If
            End Try
            SaveRawAttendance(dta)
            frmUploadedTimesheet.ShowDialog()
        End If
    End Sub
    'review uploaded timesheet
    Private Sub ViewRawTimesheetToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles ViewRawTimesheetToolStripMenuItem.Click
        Dim frmUploadedTimesheet As New frmUploadedTimesheet()
        frmUploadedTimesheet.ShowDialog()
    End Sub

    Private Sub LeaveConvertToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles LeaveConvertToolStripMenuItem.Click
        Dim frmLeaveConversion As New frmLeaveConversion()
        frmLeaveConversion.ShowDialog()
    End Sub
End Class
