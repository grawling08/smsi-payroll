Module modReports
    Sub GetPayrollBatch(ByVal cutoff As String, Optional ByVal company As String = "")
        StrSql = "SELECT tbl_employee.company as 'Company', " _
                    & "CONCAT(lName, ', ', fName, ' ', LEFT(mName, 1), '.') as Employee, " _
                    & "tbl_employee.employment_status, " _
                    & "tbl_payslip.income as 'BasicPay', " _
                    & "tbl_payslip.regot_pay as 'RegularOT', tbl_payslip.holot_pay as 'HolidayOT', tbl_payslip.ot_pay as 'TotalOT', " _
                    & "tbl_payslip.allowances as 'Allowances', " _
                    & "tbl_payslip.incentives as 'Incentives', " _
                    & "tbl_payslip.lateabsent_deduct as 'LateAbsent', " _
                    & "tbl_payslip.undertime_deduct as 'Undertime', " _
                    & "tbl_payslip.sss as 'SSS', tbl_payslip.phic as 'PHIC', tbl_payslip.hdmf as 'HDMF', " _
                    & "tbl_payslip.otherdeduct as 'OtherDeductions', " _
                    & "tbl_payslip.gross_income as 'GrossPay', tbl_payslip.insurance as 'Insurance', " _
                    & "tbl_payslip.tax as 'Tax', tbl_payslip.net_income as 'NetPay' " _
                    & "FROM tbl_payslip " _
                    & "JOIN tbl_employee ON tbl_payslip.employee_id = tbl_employee.id_employee " _
                    & "WHERE tbl_payslip.cutoff_id = (SELECT cutoff_id FROM tbl_cutoff WHERE cutoff_range = '" & cutoff & "') AND tbl_employee.company = '" & company & "' ORDER BY Employee"
        Console.Write(StrSql)
        QryReadP()
        ds = New DataSet1
        dt = New DataTable
        adpt.Fill(ds.Tables("pay"))
    End Sub

    Sub GetEmpPayInquiry(Optional ByVal cutoff As String = "", Optional ByVal emp As String = "")
        StrSql = "SELECT tbl_payslip.* FROM tbl_payslip, tbl_cutoff WHERE tbl_cutoff.cutoff_id = tbl_payslip.cutoff_id"
        QryReadP()
        ds = New DataSet1
        dt = New DataTable
        adpt.Fill(ds.Tables(0))
    End Sub

    Sub GetPaidLeave(Optional ByVal company As String = "", Optional ByVal employee_id As String = "")
        StrSql = "SELECT leaves.name AS 'Leave Type', leaveapp.durFrom AS 'From Date', leaveapp.durTo AS 'To Date', leaveapp.dateFiled AS 'Date Filed', leaveapp.days_applied AS 'Days Applied', leaveapp.reason AS 'Reason', leaveapp.status AS 'Status' " _
                            & "FROM leaveapp, leaves, employees, companies, services " _
                            & "WHERE leaveapp.leave_id = leaves.id AND leaveapp.employee_id = employees.id AND employees.id = services.employee_id AND services.company_id = companies.id AND services.ifcurrent = '1' AND leaveapp.status = 'Approved by HR' "
        If company <> "" Then
            StrSql = StrSql & "AND companies.name = '" & company & "' "
        End If
        If employee_id <> "" Then
            StrSql = StrSql & "AND employees.id = '" & employee_id & "' "
        End If

        QryReadH()
        ds = New DataSet1
        dt = New DataTable
        adpt.Fill(ds.Tables(0))
    End Sub

    Sub GetPaidOvertime(Optional ByVal company As String = "", Optional ByVal employee_id As String = "")
        StrSql = "SELECT CONCAT_WS(' ', fName, mi, lName) as emp_name, companies.name, overtime.* FROM overtime, employees, companies, services " _
                    & "WHERE status = 'Approved by HR' " _
                    & "AND employees.id = services.employee_id " _
                    & "AND services.company_id = companies.id " _
                    & "AND services.ifcurrent = '1' "
        If company <> "" Then
            StrSql = StrSql & "AND companies.name = '" & company & "' "
        End If
        If employee_id <> "" Then
            StrSql = StrSql & "AND employees.id = '" & employee_id & "' "
        End If
        QryReadH()
        ds = New DataSet1
        dt = New DataTable
        adpt.Fill(ds.Tables(0))
    End Sub
End Module
