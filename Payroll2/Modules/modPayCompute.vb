Imports MySql.Data.MySqlClient

Module modPayCompute
    Public empHourlyWage, empDailyWage As Double
    Public totalLate, totalUndertime, totalOvertime, totalWorkHours, totalAllowance, totalBenefits, totalLoans As Double

    'compute daily and ourly wage
    Sub computeWage(ByVal employmentStatus As String, ByVal monthlysalary As String)
        'daily rate
        'Probi daily rate = basic salary / (26 * 12)
        'regular = basic salary / (30 * 12)
        If employmentStatus = "Regular" Then
            empDailyWage = Double.Parse(monthlysalary) / 30
        Else
            empDailyWage = Double.Parse(monthlysalary) / 26
        End If
        empHourlyWage = empDailyWage / 8
    End Sub

    Function ComputeLates(ByVal emp_bio_id As String, ByVal id_employee As String) As Double
        'get total lates
        StrSql = "SELECT * FROM tbl_attendance WHERE " & If(String.IsNullOrEmpty(emp_bio_id), "id_employee = '" & id_employee & "'", "emp_bio_id = '" & emp_bio_id & "'") & " AND date BETWEEN '" & prevcutoff_fromdate.ToString("yyyy-MM-dd") & "' AND '" & prevcutoff_todate.ToString("yyyy-MM-dd") & "'"
        QryReadP()
        Dim latereader As MySqlDataReader = cmd.ExecuteReader
        If latereader.HasRows Then
            While latereader.Read()
                If CDbl(latereader("late")) >= 10 Then
                    totalLate += CDbl(latereader("late"))
                End If
            End While
        End If
        Return Math.Round(totalLate * 5, 2)
    End Function

    Function computeloans(ByVal id_employee As String) As Double
        StrSql = "SELECT tbl_loans.* FROM tbl_loans WHERE tbl_loans.employee_id='" & id_employee & "' AND endDate >= '" & todate_cutoff.ToString("yyyy-MM-dd") & "'"
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        Dim loans As Double = 0
        totalLoans = 0
        If dtareader.HasRows Then
            While dtareader.Read
                'StrSql2 = "SELECT SUM(amount), Max(date_paid) FROM tbl_loanpayments WHERE loan_id = '" & dtareader("loan_id").ToString & "'"
                'Connect_Sub("payroll")
                'cmd2 = New MySqlCommand(StrSql2, conn2)
                'Dim loanpayreader As MySqlDataReader = cmd2.ExecuteReader
                'If loanpayreader.HasRows Then
                '    loanpayreader.Read()

                'End If
                loans = dtareader("monthlyAmortization")
                totalLoans += loans
            End While
        End If
        Return Math.Round(totalLoans, 2)
    End Function

    Function computeAllowance(ByVal id_employee As String) As Double
        StrSql = "SELECT * FROM tbl_allowances WHERE employee_id = " & id_employee
        QryReadP()
        Dim dtareader3 As MySqlDataReader = cmd.ExecuteReader
        If dtareader3.HasRows Then
            While dtareader3.Read()
                totalAllowance += Double.Parse(dtareader3("amount"))
            End While
        End If
        Return totalAllowance
    End Function
End Module
