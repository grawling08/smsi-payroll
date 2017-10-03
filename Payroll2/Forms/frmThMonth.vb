Public Class frmThMonth
    Dim comp As String
    Private Sub frmThMonth_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        getCompanyList()
        If dt.Rows.Count > 0 Then
            cmb_company13.DataSource = dt
            cmb_company13.DisplayMember = "name"
        End If
    End Sub

    Private Sub cmb_company13_SelectedIndexChanged(sender As System.Object, e As System.EventArgs) Handles cmb_company13.SelectedIndexChanged
        comp = cmb_company13.Text
        StrSql = "SELECT a.id_employee AS ID, CONCAT(a.lName, ', ', a.fName, ' ', LEFT(a.mName, 1), '.') AS 'Employee', basic_salary as 'Basic Salary', " _
                    & "((basic_salary * 12)/12) as '13th Month'" _
                    & "FROM tbl_employee a WHERE a.company = '" & comp & "' AND a.employment_status NOT IN(' ','Resigned') ORDER BY Employee ASC"
        QryReadP()
        ', a.basic_salary AS 'Basic Salary'
        ds = New DataSet()
        adpt.Fill(ds, "Emp")
        dgv_thmonth.DataSource = ds.Tables(0)
        Dim col = dgv_thmonth.Columns.Count
        Dim i = 0
        While i <= col - 1
            dgv_thmonth.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
            dgv_thmonth.Columns(i).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
            i = i + 1
        End While
        dgv_thmonth.Columns(0).Visible = False
    End Sub
End Class