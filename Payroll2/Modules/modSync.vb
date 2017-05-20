Imports MySql.Data.MySqlClient
Imports System.Runtime.InteropServices

Module modSync
    Private FolderDownloads As New Guid("374DE290-123F-4565-9164-39C4925E467B")
    Dim sb As New System.Text.StringBuilder(128)
    <DllImport("shell32.dll")> _
    Private Function SHGetKnownFolderPath(<MarshalAs(UnmanagedType.LPStruct)> ByVal rfid As Guid, ByVal dwFlags As UInt32, ByVal hToken As IntPtr, <MarshalAs(UnmanagedType.LPWStr)> ByRef pszPath As System.Text.StringBuilder) As Int32
    End Function

    Function SyncTimesheet() As Boolean
        Return True
    End Function

    Function SyncEmployee() As Boolean
        Try
            'StrSql = "INSERT INTO hris_payroll.tbl_employee SELECT " & dbnameHR & ".employees.id, " & dbnameHR & ".employees.employee_id, " & dbnameHR & ".employees.biometric_id, " & dbnameHR & ".employees.fName, " & dbnameHR & ".employees.mi, " _
            '            & "" & dbnameHR & ".employees.lName, " & dbnameHR & ".shiftsgroup.shiftName, " & dbnameHR & ".employees.sssNo, " & dbnameHR & ".employees.phicNo, " & dbnameHR & ".employees.hdmfNo, " _
            '            & "" & dbnameHR & ".employees.taxNo, " & dbnameHR & ".companies.name as company_name, " & dbnameHR & ".branches.name as branch_name, " & dbnameHR & ".positions.name as position_name, " _
            '            & "" & dbnameHR & ".taxstatus.taxcode, " & dbnameHR & ".services.employmentStatus, " & dbnameHR & ".services.basicSalary FROM " & dbnameHR & ".employees " _
            '            & "LEFT JOIN " & dbnameHR & ".services ON " & dbnameHR & ".employees.id = " & dbnameHR & ".services.employee_id " _
            '            & "LEFT JOIN " & dbnameHR & ".positions ON " & dbnameHR & ".services.position_id = " & dbnameHR & ".positions.id " _
            '            & "LEFT JOIN " & dbnameHR & ".companies ON " & dbnameHR & ".services.company_id = " & dbnameHR & ".companies.id " _
            '            & "LEFT JOIN " & dbnameHR & ".branches ON " & dbnameHR & ".services.branch_id = " & dbnameHR & ".branches.id " _
            '            & "LEFT JOIN " & dbnameHR & ".taxstatus ON " & dbnameHR & ".employees.taxstatus_id = " & dbnameHR & ".taxstatus.id " _
            '            & "LEFT JOIN " & dbnameHR & ".shiftsgroup ON " & dbnameHR & ".employees.shiftgroup_id = " & dbnameHR & ".shiftsgroup.id "
            'SHGetKnownFolderPath(FolderDownloads, 0, IntPtr.Zero, sb)
            'StrSql = "CREATE TEMPORARY TABLE temporary_table LIKE tbl_employee; " _
            '            & "LOAD DATA LOCAL INFILE '" & sb.ToString.Replace("\", "\\") & "\\employee-list.csv' INTO TABLE temporary_table " _
            '            & "FIELDS TERMINATED BY ',' ENCLOSED BY '""' ESCAPED BY '' LINES TERMINATED BY '\n' IGNORE 1 LINES; " _
            '            & "INSERT INTO tbl_employee SELECT * FROM temporary_table " _
            '            & "ON DUPLICATE KEY UPDATE " _
            '            & "emp_id = VALUES(emp_id), emp_bio_id = CASE WHEN VALUES(emp_bio_id) = '' THEN VALUES(id) ELSE VALUES(emp_bio_id) END, " _
            '            & "fName = VALUES(fName), mName = VALUES(mname), " _
            '            & "lname = VALUES(lName), shiftgroup = VALUES(shiftgroup), " _
            '            & "sss_id = VALUES(sss_id), phic_id = VALUES(phic_id), " _
            '            & "hdmf_id = VALUES(hdmf_id), tin = VALUES(tin), " _
            '            & "employment_status = VALUES(employment_status), company = VALUES(company), " _
            '            & "branch = VALUES(branch),position = VALUES(position), " _
            '            & "tax_status = VALUES(tax_status),basic_salary = VALUES(basic_salary); " _
            '            & "DROP TEMPORARY TABLE temporary_table;"
            StrSql = "SELECT emp.id, emp.employee_id, emp.biometric_id, emp.fName, emp.mi, emp.lName, shift.shiftName, " _
                        & "emp.sssNo, emp.phicNo, emp.hdmfNo, emp.taxNo, (com.name) AS company, (bra.name) AS branch, " _
                        & "(pos.name) AS position, rank.rank, taxstat.taxcode, emp.emp_status, serv.basicSalary " _
                        & "FROM employees emp " _
                        & "LEFT JOIN shiftsgroup shift ON shift.id= emp.shiftgroup_id " _
                        & "LEFT JOIN companies com ON com.id= emp.company_id " _
                        & "LEFT JOIN branches bra ON bra.id= emp.branch_id " _
                        & "LEFT JOIN positions pos ON pos.id= emp.position_id " _
                        & "LEFT JOIN taxstatus taxstat ON taxstat.id= emp.taxstatus_id " _
                        & "LEFT JOIN rank ON rank.id= pos.rank_id " _
                        & "LEFT JOIN services serv ON serv.employee_id= emp.id AND serv.ifcurrent= '1' " _
                        & "WHERE ifNull(emp.employee_id,'') != 'SP-Admin'"
            QryReadH()
            Dim dt = New DataTable
            adpt.Fill(dt)
            For i = 0 To dt.Rows.Count - 1
                'dt.Rows({row number})({field/column}).ToString
                'dt.Rows(i)(0).ToString
                Try
                    StrSql = "REPLACE INTO tbl_employee(id_employee,emp_id,emp_bio_id,fName,mName,lName,shiftgroup,sss_id,phic_id,hdmf_id,tin,company,branch,position,rank,tax_status,employment_status,basic_salary) " _
                                & "VALUES(" & dt.Rows(i)(0).ToString & ",'" & dt.Rows(i)(1).ToString & "'," _
                                & "'" & dt.Rows(i)(2).ToString & "','" & dt.Rows(i)(3).ToString & "'," _
                                & "'" & dt.Rows(i)(4).ToString & "','" & dt.Rows(i)(5).ToString & "'," _
                                & "'" & dt.Rows(i)(6).ToString & "','" & dt.Rows(i)(7).ToString & "'," _
                                & "'" & dt.Rows(i)(8).ToString & "','" & dt.Rows(i)(9).ToString & "'," _
                                & "'" & dt.Rows(i)(10).ToString & "','" & dt.Rows(i)(11).ToString & "'," _
                                & "'" & dt.Rows(i)(12).ToString & "','" & dt.Rows(i)(13).ToString & "'," _
                                & "'" & dt.Rows(i)(14).ToString & "','" & dt.Rows(i)(15).ToString & "'," _
                                & "'" & dt.Rows(i)(16).ToString & "'," & dt.Rows(i)(17).ToString & ")"
                    QryReadP()
                    cmd.ExecuteNonQuery()
                Catch e As MySqlException
                    MessageBox.Show(e.ToString)
                    Return False
                End Try
            Next
        Catch e As MySqlException
            MessageBox.Show(e.ToString)
            Return False
        End Try
        Return True
    End Function

    Function SyncLeaves() As Boolean
        Try
            StrSql = "INSERT INTO hris_payroll.tbl_leaves SELECT " & dbnameHR & ".leaveapp.id, " & dbnameHR & ".leaveapp.employee_id, " _
                        & "" & dbnameHR & ".leaves.name AS 'Leave Type', " & dbnameHR & ".leaveapp.durFrom AS 'From Date', " & dbnameHR & ".leaveapp.durTo AS 'To Date', " & dbnameHR & ".leaveapp.dateFiled AS 'Date Filed', " _
                        & "" & dbnameHR & ".leaveapp.days_applied AS 'Days Applied', " & dbnameHR & ".leaveapp.reason AS 'Reason', " & dbnameHR & ".leaveapp.status AS 'Status' FROM " & dbnameHR & ".leaveapp, " & dbnameHR & ".leaves, " & dbnameHR & ".employees " _
                        & "WHERE " & dbnameHR & ".leaveapp.leave_id = " & dbnameHR & ".leaves.id AND " & dbnameHR & ".leaveapp.employee_id = " & dbnameHR & ".employees.id AND " & dbnameHR & ".leaveapp.status = 'Approved by HR'"
            'SHGetKnownFolderPath(FolderDownloads, 0, IntPtr.Zero, sb)
            'StrSql = "CREATE TEMPORARY TABLE temporary_table LIKE tbl_leaves; " _
            '            & "LOAD DATA LOCAL INFILE '" & sb.ToString.Replace("\", "\\") & "\\leaves-list.csv' INTO TABLE temporary_table " _
            '            & "FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'; " _
            '            & "INSERT INTO tbl_leaves SELECT * FROM temporary_table " _
            '            & "ON DUPLICATE KEY UPDATE employee_id = VALUES(employee_id), leave_type = VALUES(leave_type), " _
            '            & "durFrom = VALUES(durFrom),durTo = VALUES(durTo), " _
            '            & "dateFiled = VALUES(dateFiled),days_applied = VALUES(days_applied), " _
            '            & "reason = VALUES(reason),status = VALUES(status); " _
            '            & "DROP TEMPORARY TABLE temporary_table;"
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
                        & "SELECT " & dbnameHR & ".loans.id, " & dbnameHR & ".employees.id as employee_id, " & dbnameHR & ".loantype.loantype AS 'Loan', " _
                        & "" & dbnameHR & ".lendingcompany.name AS 'Lending Company', " & dbnameHR & ".loans.amount AS 'Amount', " & dbnameHR & ".loans.term AS 'Term', " _
                        & "" & dbnameHR & ".loans.monthlyAmortization AS 'Monthly Amortization', " & dbnameHR & ".loans.startDate AS 'From', " _
                        & "" & dbnameHR & ".loans.endDate AS 'To', " & dbnameHR & ".loans.remarks AS 'Remarks' " _
                        & "FROM " & dbnameHR & ".loans, " & dbnameHR & ".loantype, " & dbnameHR & ".employees, " & dbnameHR & ".lendingcompany WHERE " & dbnameHR & ".loans.employee_id = " & dbnameHR & ".employees.id " _
                        & "AND " & dbnameHR & ".lendingcompany.id = " & dbnameHR & ".loans.lendingCompany_id AND " & dbnameHR & ".loantype.id = " & dbnameHR & ".loans.loantype_id;"
            'SHGetKnownFolderPath(FolderDownloads, 0, IntPtr.Zero, sb)
            'StrSql = "CREATE TEMPORARY TABLE temporary_table LIKE tbl_loans; " _
            '            & "LOAD DATA LOCAL INFILE '" & sb.ToString.Replace("\", "\\") & "\\loans-list.csv' INTO TABLE temporary_table " _
            '            & "FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'; " _
            '            & "INSERT INTO tbl_loans SELECT * FROM temporary_table " _
            '            & "ON DUPLICATE KEY UPDATE employee_id = VALUES(employee_id), loan_type = VALUES(loan_type), " _
            '            & "lendingCompany = VALUES(lendingCompany), amount = VALUES(amount), " _
            '            & "term = VALUES(term), monthlyAmortization = VALUES(monthlyAmortization), " _
            '            & "startDate = VALUES(startDate), endDate = VALUES(endDate), remarks = VALUES(remarks); " _
            '            & "DROP TEMPORARY TABLE temporary_table;"
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
                        & "SELECT " & dbnameHR & ".overtime.id, " & dbnameHR & ".overtime.employee_id, " _
                        & "" & dbnameHR & ".overtime.reason AS 'Reason', " & dbnameHR & ".overtime.dateFiled AS 'Date Filed', " _
                        & "" & dbnameHR & ".overtime.dateRequested AS 'Date Requested', " & dbnameHR & ".overtime.timeStart AS 'From', " _
                        & "" & dbnameHR & ".overtime.timeEnd AS 'To', " & dbnameHR & ".overtime.status AS 'Status' " _
                        & "FROM " & dbnameHR & ".overtime WHERE " & dbnameHR & ".overtime.status = 'Approved by HR'"
            'SHGetKnownFolderPath(FolderDownloads, 0, IntPtr.Zero, sb)
            'StrSql = "CREATE TEMPORARY TABLE temporary_table LIKE tbl_overtime; " _
            '            & "LOAD DATA LOCAL INFILE '" & sb.ToString.Replace("\", "\\") & "\\overtime-list.csv' INTO TABLE temporary_table " _
            '            & "FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'; " _
            '            & "INSERT INTO tbl_overtime SELECT * FROM temporary_table " _
            '            & "ON DUPLICATE KEY UPDATE employee_id = VALUES(employee_id), reason = VALUES(reason), " _
            '            & "dateFiled = VALUES(dateFiled), dateRequested = VALUES(dateRequested), " _
            '            & "timeStart = VALUES(timeStart), timeEnd = VALUES(timeEnd), " _
            '            & "totalHours = VALUES(totalHours), status = VALUES(status); " _
            '            & "DROP TEMPORARY TABLE temporary_table;"
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
                        & "SELECT " & dbnameHR & ".shifts.id, " & dbnameHR & ".shifts.day as 'Day', " & dbnameHR & ".shifts.timein as 'From', " _
                        & "" & dbnameHR & ".shifts.timeout as 'To', " & dbnameHR & ".shiftsgroup.shiftName as 'Shift Name' " _
                        & "FROM " & dbnameHR & ".shifts, " & dbnameHR & ".shiftsgroup WHERE " & dbnameHR & ".shifts.shiftgroup_id = " & dbnameHR & ".shiftsgroup.id"
            QryReadP()
            cmd.ExecuteNonQuery()
        Catch e As MySqlException
            MessageBox.Show(e.ToString)
            Return False
        End Try
        Return True
    End Function

    Function SyncAllowances() As Boolean
        'SELECT serviceallowance.id, employee_id, allowances.name, amount FROM allowances, serviceallowance
        'WHERE serviceallowance.allowance_id = allowances.id;
        Return True
    End Function


End Module
