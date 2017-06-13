﻿Imports MySql.Data.MySqlClient
Imports System.Runtime.InteropServices

Module modSync
    'Private FolderDownloads As New Guid("374DE290-123F-4565-9164-39C4925E467B")
    'Dim sb As New System.Text.StringBuilder(128)
    '<DllImport("shell32.dll")> _
    'Private Function SHGetKnownFolderPath(<MarshalAs(UnmanagedType.LPStruct)> ByVal rfid As Guid, ByVal dwFlags As UInt32, ByVal hToken As IntPtr, <MarshalAs(UnmanagedType.LPWStr)> ByRef pszPath As System.Text.StringBuilder) As Int32
    'End Function
    Function SyncCompany() As Boolean
        StrSql = "SELECT name, code FROM companies"
        QryReadH()
        Dim dt = New DataTable
        adpt.Fill(dt)
        StrSql = "TRUNCATE tbl_company"
        QryReadP()
        cmd.ExecuteNonQuery()
        For i = 0 To dt.Rows.Count - 1
            'dt.Rows({row number})({field/column}).ToString
            'dt.Rows(i)(0).ToString
            Try
                StrSql = "INSERT INTO tbl_company(name,code) " _
                            & "VALUES('" & dt.Rows(i)(0).ToString & "','" & dt.Rows(i)(1).ToString & "')"
                'Console.Write(StrSql)
                QryReadP()
                cmd.ExecuteNonQuery()
            Catch e As MySqlException
                MessageBox.Show(e.ToString)
                Return False
            End Try
        Next
        Return True
    End Function


    Function SyncCutoff() As Boolean
        StrSql = "SELECT companies.name, cutoff.from_date, cutoff.to_date, occurence, status FROM cutoff, companies WHERE companies.id = cutoff.company_id"
        QryReadH()
        Dim dt = New DataTable
        adpt.Fill(dt)
        StrSql = "TRUNCATE tbl_cutoff"
        QryReadP()
        cmd.ExecuteNonQuery()
        For i = 0 To dt.Rows.Count - 1
            'dt.Rows({row number})({field/column}).ToString
            'dt.Rows(i)(0).ToString
            Try
                StrSql = "INSERT INTO tbl_cutoff(cutoff_range,company_id,occurence_id,from_date,to_date,status) " _
                            & "VALUES('" & CDate(dt.Rows(i)(1).ToString).ToString("d MMM yyyy") & " to " & CDate(dt.Rows(i)(2).ToString).ToString("d MMM yyyy") & "', " _
                            & "'" & dt.Rows(i)(0).ToString & "',(SELECT occurence_id FROM tblref_occurences WHERE name='" & dt.Rows(i)(3).ToString & "'),'" & CDate(dt.Rows(i)(1).ToString).ToString("yyyy-MM-dd") & "','" & CDate(dt.Rows(i)(2).ToString).ToString("yyyy-MM-dd") & "','" & dt.Rows(i)(4).ToString & "')"
                'Console.Write(StrSql)
                QryReadP()
                cmd.ExecuteNonQuery()
            Catch e As MySqlException
                MessageBox.Show(e.ToString)
                Return False
            End Try
        Next
        Return True
    End Function

    Function SyncEmployee() As Boolean
        Try
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
                        & "(pos.name) AS position, rank.rank, taxstat.taxcode, emp.emp_status, serv.basicSalary, emp.lastUpdated " _
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
            'Dim syncempreader As MySqlDataReader = cmd.ExecuteReader
            'If syncempreader.HasRows Then
            'While syncempreader.Read()
            For i = 0 To dt.Rows.Count - 1
                StrSql2 = "SELECT * FROM tbl_employee WHERE id_employee = '" & dt.Rows(i)(0).ToString & "'"
                Connect_Sub("payroll")
                cmd2 = New MySqlCommand(StrSql2, conn2)
                Dim reader1 As MySqlDataReader = cmd2.ExecuteReader
                If reader1.HasRows Then
                    'read, compare lastupdated and update or not
                    While reader1.Read()
                        If CDate(dt.Rows(i)(18).ToString).ToString("yyyy-MM-dd HH:mm:ss") > CDate(reader1(19).ToString).ToString("yyyy-MM-dd HH:mm:ss") Then
                            'update
                            Try
                                StrSql = "UPDATE tbl_employee SET emp_id = '" & dt.Rows(i)(1).ToString & "'," _
                                            & "emp_bio_id = '" & dt.Rows(i)(2).ToString & "', fName = '" & dt.Rows(i)(3).ToString & "'," _
                                            & "mName = '" & dt.Rows(i)(4).ToString & "', lName = '" & dt.Rows(i)(5).ToString & "'," _
                                            & "shiftgroup = '" & dt.Rows(i)(6).ToString & "', sss_id = '" & dt.Rows(i)(7).ToString & "'," _
                                            & "phic_id = '" & dt.Rows(i)(8).ToString & "', hdmf_id = '" & dt.Rows(i)(9).ToString & "'," _
                                            & "tin = '" & dt.Rows(i)(10).ToString & "', company = '" & dt.Rows(i)(11).ToString & "'," _
                                            & "branch = '" & dt.Rows(i)(12).ToString & "', position = '" & dt.Rows(i)(13).ToString & "'," _
                                            & "rank = '" & dt.Rows(i)(14).ToString & "', tax_status = '" & dt.Rows(i)(15).ToString & "'," _
                                            & "employment_status = '" & dt.Rows(i)(16).ToString & "', basic_salary = " & If(String.IsNullOrEmpty(dt.Rows(i)(17).ToString), 0, dt.Rows(i)(17).ToString) & "," _
                                            & "lastUpdated = '" & CDate(dt.Rows(i)(18).ToString).ToString("yyyy-MM-dd HH:mm:ss") & "' WHERE id_employee =" & dt.Rows(i)(0).ToString
                                'Console.Write(StrSql)
                                QryReadP()
                                cmd.ExecuteNonQuery()
                            Catch e As MySqlException
                                MessageBox.Show(e.ToString)
                                Return False
                            End Try
                        End If
                    End While
                Else
                    'insert
                    Try
                        StrSql = "INSERT INTO tbl_employee(id_employee,emp_id,emp_bio_id,fName,mName,lName,shiftgroup,sss_id,phic_id,hdmf_id,tin,company,branch,position,rank,tax_status,employment_status,basic_salary,lastUpdated) " _
                                    & "VALUES(" & dt.Rows(i)(0).ToString & ",'" & dt.Rows(i)(1).ToString & "'," _
                                    & "'" & dt.Rows(i)(2).ToString & "','" & dt.Rows(i)(3).ToString & "'," _
                                    & "'" & dt.Rows(i)(4).ToString & "','" & dt.Rows(i)(5).ToString & "'," _
                                    & "'" & dt.Rows(i)(6).ToString & "','" & dt.Rows(i)(7).ToString & "'," _
                                    & "'" & dt.Rows(i)(8).ToString & "','" & dt.Rows(i)(9).ToString & "'," _
                                    & "'" & dt.Rows(i)(10).ToString & "','" & dt.Rows(i)(11).ToString & "'," _
                                    & "'" & dt.Rows(i)(12).ToString & "','" & dt.Rows(i)(13).ToString & "'," _
                                    & "'" & dt.Rows(i)(14).ToString & "','" & dt.Rows(i)(15).ToString & "'," _
                                    & "'" & dt.Rows(i)(16).ToString & "'," & If(String.IsNullOrEmpty(dt.Rows(i)(17).ToString), 0, dt.Rows(i)(17).ToString) & ",'" & CDate(dt.Rows(i)(18).ToString).ToString("yyyy-MM-dd HH:mm:ss") & "')"
                        'Console.Write(StrSql)
                        QryReadP()
                        cmd.ExecuteNonQuery()
                    Catch e As MySqlException
                        MessageBox.Show(e.ToString)
                        Return False
                    End Try
                End If
                reader1.Dispose()
            Next
            'End While
            'End If
        Catch e As MySqlException
            MessageBox.Show(e.ToString)
            Return False
        End Try
        Return True
    End Function

    Function SyncLeaves() As Boolean
        Try
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
            StrSql = "SELECT leaveapp.id, leaveapp.employee_id, " _
                        & "leaves.name AS 'Leave Type', leaveapp.durFrom AS 'From Date', leaveapp.durTo AS 'To Date', leaveapp.dateFiled AS 'Date Filed', " _
                        & "leaveapp.days_applied AS 'Days Applied', leaveapp.mode, leaveapp.reason AS 'Reason', leaveapp.status AS 'Status' FROM leaveapp, leaves, employees " _
                        & "WHERE leaveapp.leave_id = leaves.id AND leaveapp.employee_id = employees.id AND leaveapp.status = 'Approved by HR'"
            QryReadH()
            Dim dt = New DataTable
            adpt.Fill(dt)
            For i = 0 To dt.Rows.Count - 1
                'dt.Rows({row number})({field/column}).ToString
                'dt.Rows(i)(0).ToString
                Try
                    StrSql = "REPLACE INTO tbl_leaves(id, employee_id,leave_type,durFrom,durTo,dateFiled,mode,days_applied,reason,status) " _
                                & "VALUES(" & dt.Rows(i)(0).ToString & "," & dt.Rows(i)(1).ToString & ",'" _
                                & dt.Rows(i)(2).ToString & "','" & CDate(dt.Rows(i)(3).ToString).ToString("yyyy-MM-dd") & "','" _
                                & CDate(dt.Rows(i)(4).ToString).ToString("yyyy-MM-dd") & "','" & CDate(dt.Rows(i)(5).ToString).ToString("yyyy-MM-dd") & "','" _
                                & dt.Rows(i)(6).ToString & "','" & dt.Rows(i)(7).ToString & "','" _
                                & dt.Rows(i)(8).ToString & "','" & dt.Rows(i)(9).ToString & "')"
                    'Console.Write(StrSql)
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

    Function SyncLoans() As Boolean
        Try
            StrSql = "SELECT loans.id, employees.id as employee_id, loantype.loantype AS 'Loan', " _
                        & "lendingcompany.name AS 'Lending Company', loans.amount AS 'Amount', loans.term AS 'Term', " _
                        & "loans.monthlyAmortization AS 'Monthly Amortization', loans.startDate AS 'From', " _
                        & "loans.endDate AS 'To', loans.remarks AS 'Remarks' " _
                        & "FROM loans, loantype, employees, lendingcompany WHERE loans.employee_id = employees.id " _
                        & "AND lendingcompany.id = loans.lendingCompany_id AND loantype.id = loans.loantype_id"
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
            QryReadH()
            Dim dt = New DataTable
            adpt.Fill(dt)
            For i = 0 To dt.Rows.Count - 1
                'dt.Rows({row number})({field/column}).ToString
                'dt.Rows(i)(0).ToString
                Try
                    StrSql = "REPLACE INTO tbl_loans(loan_id,employee_id,loan_type,lendingCompany,amount,term,monthlyAmortization,startDate,endDate,remarks)" _
                                & "VALUES(" & dt.Rows(i)(0).ToString & "," & dt.Rows(i)(1).ToString & ",'" & dt.Rows(i)(2).ToString & "','" _
                                & dt.Rows(i)(3).ToString & "'," & dt.Rows(i)(4).ToString & ",'" _
                                & dt.Rows(i)(5).ToString & "'," & dt.Rows(i)(6).ToString & ",'" _
                                & CDate(dt.Rows(i)(7).ToString).ToString("yyyy-MM-dd") & "','" & CDate(dt.Rows(i)(8).ToString).ToString("yyyy-MM-dd") & "','" _
                                & dt.Rows(i)(9).ToString & "')"
                    'Console.Write(StrSql)
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

    Function SyncOvertime() As Boolean
        Try
            StrSql = "SELECT overtimedates.id, overtime.employee_id, " _
                        & "overtimedates.overtimedate AS 'Date', overtime.reason AS 'Reason', " _
                        & "overtime.status AS 'Status', overtimedates.totaltime AS 'Total OT', " _
                        & "overtime.cutoffdate AS 'For Cutoff', overtime.lastUpdated " _
                        & "FROM overtime JOIN overtimedates ON overtime.id = overtimedates.overtime_id " _
                        & "WHERE overtime.status = 'Approved by HR' "
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
            QryReadH()
            Dim dt = New DataTable
            adpt.Fill(dt)
            For i = 0 To dt.Rows.Count - 1
                'dt.Rows({row number})({field/column}).ToString
                'dt.Rows(i)(0).ToString
                Try
                    StrSql = "REPLACE INTO tbl_overtime(id,employee_id,overtimedate,reason,status,totaltime,cutoffdate)" _
                                & "VALUES(" & dt.Rows(i)(0).ToString & "," & dt.Rows(i)(1).ToString & ",'" _
                                & CDate(dt.Rows(i)(2).ToString).ToString("yyyy-MM-dd") & "','" & dt.Rows(i)(3).ToString & "','" _
                                & dt.Rows(i)(4).ToString & "','" & dt.Rows(i)(5).ToString & "','" _
                                & dt.Rows(i)(6).ToString & "')"
                    'Console.Write(StrSql)
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

    Function SyncShifts() As Boolean
        Try
            StrSql = "SELECT shifts.id, shifts.day as 'Day', shifts.timein as 'From', " _
                        & "shifts.timeout as 'To', shiftsgroup.shiftName as 'Shift Name' " _
                        & "FROM shifts, shiftsgroup WHERE shifts.shiftgroup_id = shiftsgroup.id"
            QryReadH()
            Dim dt = New DataTable
            adpt.Fill(dt)
            For i = 0 To dt.Rows.Count - 1
                'dt.Rows({row number})({field/column}).ToString
                'dt.Rows(i)(0).ToString
                Try
                    StrSql = "REPLACE INTO tbl_shifts(id,day,timein,timeout,shiftgroup)" _
                                & "VALUES('" & dt.Rows(i)(0).ToString & "','" & dt.Rows(i)(1).ToString & "','" & dt.Rows(i)(2).ToString & "','" & dt.Rows(i)(3).ToString & "','" & dt.Rows(i)(4).ToString & "')"
                    'Console.Write(StrSql)
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

    Function SyncAllowances() As Boolean
        Try
            StrSql = "SELECT sa.id, sa.employee_id, (al.name) AS allowance, sa.amount FROM serviceallowance sa " _
                        & "JOIN allowances al ON al.id= sa.allowance_id LEFT JOIN services svs ON svs.id = sa.service_id " _
                        & "WHERE svs.ifcurrent = '1'"
            QryReadH()
            Dim dt = New DataTable
            adpt.Fill(dt)
            StrSql = "TRUNCATE tbl_allowances"
            QryReadP()
            cmd.ExecuteNonQuery()
            For i = 0 To dt.Rows.Count - 1
                'dt.Rows({row number})({field/column}).ToString
                'dt.Rows(i)(0).ToString
                Try
                    StrSql = "INSERT INTO tbl_allowances(employee_id,name,amount)" _
                                & "VALUES('" & dt.Rows(i)(1).ToString & "','" & dt.Rows(i)(2).ToString & "','" & dt.Rows(i)(3).ToString & "')"
                    'Console.Write(StrSql)
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

    Sub SyncTimesheet()
        getCutoffRange()
        StrSql = "SELECT * FROM timesheet WHERE dateLog BETWEEN '" & frmdate_cutoff.ToString("yyyy-MM-dd") & "' AND '" & todate_cutoff.ToString("yyyy-MM-dd") & "'"
        QryReadH()
        Dim dt = New DataTable
        adpt.Fill(dt)
        For i = 0 To dt.Rows.Count - 1
            StrSql = "SELECT * FROM tbl_attendance WHERE " _
                        & "emp_bio_id = '" & dt.Rows(i)(1).ToString & "' AND " _
                        & "date = '" & CDate(dt.Rows(i)(2).ToString).ToString("yyyy-MM-dd") & "' AND " _
                        & "time_in = '" & dt.Rows(i)(3).ToString & "' AND " _
                        & "time_out = '" & dt.Rows(i)(4).ToString & "'"
            QryReadP()
            Dim paytimerdr As MySqlDataReader = cmd.ExecuteReader
            If Not paytimerdr.HasRows Then
                StrSql = "INSERT INTO tbl_attendance(emp_bio_id,date,time_in,time_out,totalHours,late,undertime,overtime,remarks) " _
                            & "VALUES('" & dt.Rows(i)(1).ToString & "','" & CDate(dt.Rows(i)(2).ToString).ToString("yyyy-MM-dd") & "','" _
                            & dt.Rows(i)(3).ToString & "','" & dt.Rows(i)(4).ToString & "','" _
                            & dt.Rows(i)(5).ToString & "','" & dt.Rows(i)(6).ToString & "','" _
                            & dt.Rows(i)(7).ToString & "','" & dt.Rows(i)(8).ToString & "','" _
                            & dt.Rows(i)(9).ToString & "')"
                'Connect_Sub("payroll")
                'cmd2 = New MySqlCommand(StrSql2, conn2)
                'cmd2.ExecuteNonQuery()
                QryReadP()
                cmd.ExecuteNonQuery()
            End If
        Next
    End Sub

End Module
