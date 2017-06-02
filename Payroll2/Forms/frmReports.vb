Public Class frmReports

    Private Sub frmReports_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        GetPayrollBatch(current_cutoff, current_company)
        Dim objRpt As New CrystalReport1
        objRpt.SetDataSource(ds.Tables(1))
        CrystalReportViewer1.ReportSource = objRpt
        CrystalReportViewer1.Refresh()
    End Sub
End Class