Imports MySql.Data.MySqlClient

Module modSync
    Function SyncEmployee() As Boolean
        Try
            StrSql = "INSERT INTO hris_payroll.tbl_employee SELECT hris.employees.id, hris.employees.employee_id, hris.employees.biometric_id, hris.employees.fName, hris.employees.mi, " _
                        & "hris.employees.lName, hris.shiftsgroup.shiftName, hris.employees.sssNo, hris.employees.phicNo, hris.employees.hdmfNo, " _
                        & "hris.employees.taxNo, hris.companies.name as company_name, hris.branches.name as branch_name, hris.positions.name as position_name, " _
                        & "hris.taxstatus.taxcode, hris.services.employmentStatus, hris.services.basicSalary FROM hris.employees " _
                        & "LEFT JOIN hris.services ON hris.employees.id = hris.services.employee_id " _
                        & "LEFT JOIN hris.positions ON hris.services.position_id = hris.positions.id " _
                        & "LEFT JOIN hris.companies ON hris.services.company_id = hris.companies.id " _
                        & "LEFT JOIN hris.branches ON hris.services.branch_id = hris.branches.id " _
                        & "LEFT JOIN hris.taxstatus ON hris.employees.taxstatus_id = hris.taxstatus.id " _
                        & "LEFT JOIN hris.shiftsgroup ON hris.employees.shiftgroup_id = hris.shiftsgroup.id "
            QryReadP()
            cmd.ExecuteNonQuery()
        Catch e As MySqlException
            MessageBox.Show(e.ToString)
            Return False
        End Try
        Return True
    End Function

    Function SyncLeaves() As Boolean
        Try
            StrSql = "INSERT INTO hris_payroll.tbl_leaves SELECT hris.leaveapp.id, hris.leaveapp.employee_id, " _
                        & "hris.leaves.name AS 'Leave Type', hris.leaveapp.durFrom AS 'From Date', hris.leaveapp.durTo AS 'To Date', hris.leaveapp.dateFiled AS 'Date Filed', " _
                        & "hris.leaveapp.days_applied AS 'Days Applied', hris.leaveapp.reason AS 'Reason', hris.leaveapp.status AS 'Status' FROM hris.leaveapp, hris.leaves, hris.employees " _
                        & "WHERE hris.leaveapp.leave_id = hris.leaves.id AND hris.leaveapp.employee_id = hris.employees.id AND hris.leaveapp.status = 'Approved by HR'"
            QryReadP()
            cmd.ExecuteNonQuery()
        Catch e As MySqlException
            MessageBox.Show(e.ToString)
            Return False
        End Try
        Return True
    End Function

    Function SyncLoans() As Boolean
        Try
            StrSql = "INSERT INTO hris_payroll.tbl_loans " _
                        & "SELECT hris.loans.id, hris.employees.id as employee_id, hris.loantype.loantype AS 'Loan', " _
                        & "hris.lendingcompany.name AS 'Lending Company', hris.loans.amount AS 'Amount', hris.loans.term AS 'Term', " _
                        & "hris.loans.monthlyAmortization AS 'Monthly Amortization', hris.loans.startDate AS 'From', " _
                        & "hris.loans.endDate AS 'To', hris.loans.remarks AS 'Remarks' " _
                        & "FROM hris.loans, hris.loantype, hris.employees, hris.lendingcompany WHERE hris.loans.employee_id = hris.employees.id " _
                        & "AND hris.lendingcompany.id = hris.loans.lendingCompany_id AND hris.loantype.id = hris.loans.loantype_id;"
            QryReadP()
            cmd.ExecuteNonQuery()
        Catch e As MySqlException
            MessageBox.Show(e.ToString)
            Return False
        End Try
        Return True
    End Function

    Function SyncOvertime() As Boolean
        Try
            StrSql = "INSERT INTO tbl_overtime " _
                        & "SELECT hris.overtime.id, hris.overtime.employee_id, " _
                        & "hris.overtime.reason AS 'Reason', hris.overtime.dateFiled AS 'Date Filed', " _
                        & "hris.overtime.dateRequested AS 'Date Requested', hris.overtime.timeStart AS 'From', " _
                        & "hris.overtime.timeEnd AS 'To', hris.overtime.status AS 'Status' " _
                        & "FROM hris.overtime WHERE hris.overtime.status = 'Approved by HR'"
            QryReadP()
            cmd.ExecuteNonQuery()
        Catch e As MySqlException
            MessageBox.Show(e.ToString)
            Return False
        End Try
        Return True
    End Function

    Function SyncShifts() As Boolean
        Try
            StrSql = "INSERT INTO hris_payroll.tbl_shifts " _
                        & "SELECT hris.shifts.id, hris.shifts.day as 'Day', hris.shifts.timein as 'From', " _
                        & "hris.shifts.timeout as 'To', hris.shiftsgroup.shiftName as 'Shift Name' " _
                        & "FROM hris.shifts, hris.shiftsgroup WHERE hris.shifts.shiftgroup_id = hris.shiftsgroup.id"
            QryReadP()
            cmd.ExecuteNonQuery()
        Catch e As MySqlException
            MessageBox.Show(e.ToString)
            Return False
        End Try
        Return True
    End Function

End Module
