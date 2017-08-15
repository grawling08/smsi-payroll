Imports CrystalDecisions.CrystalReports.Engine
Imports MySql.Data.MySqlClient
Imports CrystalDecisions.Shared
Public Class frmReport

    Private Sub frmReport_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        StrSql = "CALL `sp_paysummary`('" & current_company & "', '" & cutoff_id & "', '" & prevcutoff_id & "','')"
        QryReadP()
        ds = New DataSet1
        dt = New DataTable
        adpt.Fill(ds.Tables(0))
        Dim crystal As New PayrollReport
        crystal.SetDataSource(ds.Tables(0))
        CrystalReportViewer1.ReportSource = crystal
        CrystalReportViewer1.Refresh()
    End Sub

End Class