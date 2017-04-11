Module modReports
    Sub GetPayrollBatch(ByVal cutoff As String, Optional ByVal company As String = "")
        StrSql = "SELECT tbl_payslip.* FROM tbl_payslip, tbl_cutoff WHERE tbl_cutoff.cutoff_range = '" & cutoff.ToString & "' AND tbl_cutoff.cutoff_id = tbl_payslip.cutoff_id"
        QryReadP()
        ds = New DataSet1
        dt = New DataTable
        adpt.Fill(ds.Tables(0))
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
