Imports CrystalDecisions.CrystalReports.Engine
Imports MySql.Data.MySqlClient
Imports CrystalDecisions.Shared
Public Class frmReport

    Private Sub frmReport_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        StrSql = "SELECT tbl_employee.company as 'Company', " _
                    & "CONCAT(lName, ', ', fName, ' ', LEFT(mName, 1), '.') as Employee, " _
                    & "tbl_payslip.income as 'BasicPay', " _
                    & "tbl_payslip.regot_pay as 'RegularOT', tbl_payslip.holot_pay as 'HolidayOT', tbl_payslip.ot_pay as 'TotalOT', " _
                    & "tbl_payslip.allowances as 'Allowances', " _
                    & "tbl_payslip.incentives as 'Incentives', " _
                    & "tbl_payslip.lateabsent_deduct as 'LateAbsent', " _
                    & "tbl_payslip.undertime_deduct as 'Undertime', " _
                    & "tbl_payslip.sss as 'SSS', tbl_payslip.phic as 'PHIC', tbl_payslip.hdmf as 'HDMF', " _
                    & "tbl_payslip.gross_income as 'GrossPay', tbl_payslip.loans as 'Loans', " _
                    & "tbl_payslip.otherdeduct as 'Other Deductions', tbl_payslip.insurance as 'Insurance', " _
                    & "tbl_payslip.tax as 'Tax', tbl_payslip.net_income as 'NetPay' " _
                    & "FROM tbl_payslip " _
                    & "JOIN tbl_employee ON tbl_payslip.employee_id = tbl_employee.id_employee " _
                    & "WHERE tbl_payslip.cutoff_id = (SELECT cutoff_id FROM tbl_cutoff WHERE cutoff_range = '" & current_cutoff & "') AND tbl_employee.company = '" & current_company & "' ORDER BY Employee"
        'Console.Write(StrSql)
        QryReadP()
        ds = New DataSet1
        dt = New DataTable
        adpt.Fill(ds.Tables(0))
        Dim crystal As New rptPayroll
        crystal.SetDataSource(ds.Tables(0))
        CrystalReportViewer1.ReportSource = crystal
        CrystalReportViewer1.Refresh()
    End Sub

End Class