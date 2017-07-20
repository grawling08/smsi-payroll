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

    Function ComputeUndertime(ByVal emp_bio_id As String, ByVal id_employee As String) As Double
        'get total lates
        StrSql = "SELECT * FROM tbl_attendance WHERE " & If(String.IsNullOrEmpty(emp_bio_id), "id_employee = '" & id_employee & "'", "emp_bio_id = '" & emp_bio_id & "'") & " AND date BETWEEN '" & prevcutoff_fromdate.ToString("yyyy-MM-dd") & "' AND '" & prevcutoff_todate.ToString("yyyy-MM-dd") & "'"
        QryReadP()
        Dim underreader As MySqlDataReader = cmd.ExecuteReader
        If underreader.HasRows Then
            While underreader.Read()
                If CDbl(underreader("undertime")) >= 1 Then
                    totalUndertime += CDbl(underreader("late"))
                End If
            End While
        End If
        Return Math.Round(totalUndertime * empHourlyWage, 2)
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

    Function computeInsurance(ByVal id_employee As String) As Double
        Dim a As Double = 0
        StrSql = "SELECT * FROM tbl_insurance WHERE id_employee = '" & id_employee & "'"
        QryReadP()
        Dim dtareader3 As MySqlDataReader = cmd.ExecuteReader
        If dtareader3.HasRows Then
            While dtareader3.Read()
                a += Double.Parse(dtareader3("amount"))
            End While
        End If
        Return a
    End Function

    Function computeAllowance(ByVal id_employee As String) As Double
        Dim a As Double = 0
        StrSql = "SELECT * FROM tbl_allowances WHERE employee_id = " & id_employee
        QryReadP()
        Dim dtareader3 As MySqlDataReader = cmd.ExecuteReader
        If dtareader3.HasRows Then
            While dtareader3.Read()
                a += Double.Parse(dtareader3("amount"))
            End While
        End If
        Return a
    End Function

    Function computeIncentives(ByVal cutoff_id As String, ByVal id_employee As String) As Double
        Dim incentives As Double = 0
        StrSql = "SELECT SUM(amount) as Amount FROM tbl_incentives WHERE cutoff_id = " & cutoff_id & " AND employee_id = " & id_employee
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        If dtareader.HasRows Then
            While dtareader.Read()
                If Not IsDBNull(dtareader("Amount")) Then
                    incentives = Math.Round(Double.Parse(dtareader("Amount")), 2)
                End If
            End While
        End If
        Return incentives
    End Function

    Function computeOtherDeduct(ByVal cutoff_id As String, ByVal id_employee As String) As Double
        Dim otherdeduct As Double = 0
        StrSql = "SELECT SUM(amount) as Amount FROM tbl_otherdeductions WHERE cutoff_id = " & cutoff_id & " AND employee_id = " & id_employee
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        If dtareader.HasRows Then
            While dtareader.Read()
                If Not IsDBNull(dtareader("Amount")) Then
                    otherdeduct = Math.Round(Double.Parse(dtareader("Amount")), 2)
                End If
            End While
        End If
        Return otherdeduct
    End Function

    Function totalOT(ByVal id As String) As Double()
        Dim ot() As Double = {0, 0} 'index: 0=regular ot; 1=holiday ot
        Dim isRestdayOT As Boolean = False
        Dim isRegHolidayOT As Boolean = False
        Dim isSpecHolidayOT As Boolean = False
        Dim isRegOt As Boolean = False
        StrSql = "SELECT * FROM tbl_overtime WHERE employee_id = '" & id & "' AND " _
                            & "status = 'Approved by HR' AND overtimedate = '" & frmdate_cutoff.ToString("yyyy-MM-dd") & " to " & todate_cutoff.ToString("yyyy-MM-dd") & "'"
        QryReadP()
        Dim otreader As MySqlDataReader = cmd.ExecuteReader
        If otreader.HasRows Then
            While otreader.Read
                Dim totalhours = otreader("totaltime")
                StrSql = "SELECT * FROM tbl_shifts WHERE shiftgroup = (SELECT shiftgroup FROM tbl_employee WHERE id_employee = '" & id & "') AND day = '" & otreader("overtimedate").ToString("dddd") & "'"
                QryReadP()
                Dim shiftreader As MySqlDataReader = cmd.ExecuteReader()
                If Not shiftreader.HasRows Then
                    isRestdayOT = True
                Else
                    isRegOt = True
                End If
                'check if holiday
                StrSql = "SELECT * FROM tblref_holiday WHERE date1 = '" & otreader("overtimedate").ToString("yyyy-MM-dd") & "'"
                QryReadP()
                Dim holidayreader As MySqlDataReader = cmd.ExecuteReader
                If holidayreader.HasRows Then
                    holidayreader.Read()
                    If holidayreader("type") = "Regular Holidays" Then
                        isRegHolidayOT = True
                    ElseIf holidayreader("type") = "Special (Non-Working) Days" Then
                        isSpecHolidayOT = True
                    End If
                End If
                'if restday, regholiday and specialholiday are all false then regOT is true
                If isRestdayOT = True Then
                    'Overtime rate/hour = (hourly rate on rest day or special holiday X 169%)
                    'tb_regularot.Text += Math.Round(empHourlyWage * 1.69 * totalhours, 2)
                    ot(0) += Math.Round(empHourlyWage * 1.69 * totalhours, 2)
                ElseIf isSpecHolidayOT = True Then
                    'Overtime rate/hour = (hourly rate on rest day or special holiday X 169%)
                    'tb_holidayot.Text += Math.Round(empHourlyWage * 1.69 * totalhours, 2)
                    ot(1) += Math.Round(empHourlyWage * 1.69 * totalhours, 2)
                ElseIf isRestdayOT = True And isSpecHolidayOT = True Then
                    'Overtime rate/hour = (hourly rate on rest day and special holiday X 195%)
                    ot(1) += Math.Round(empHourlyWage * 1.95 * totalhours, 2)
                ElseIf isRegHolidayOT = True Then
                    'Overtime rate/hour = (hourly rate on rest day and special holiday X 260%)
                    ot(1) += Math.Round(empHourlyWage * 2.6 * totalhours, 2)
                ElseIf isRegHolidayOT = True And isRestdayOT = True Then
                    'Overtime rate/hour = (hourly rate on rest day and special holiday X 338%)
                    ot(1) += Math.Round(empHourlyWage * 3.38 * totalhours, 2)
                ElseIf isRegHolidayOT = False And isRestdayOT = False And isSpecHolidayOT = False Then
                    'Hourly rate * 125% * number of hours
                    ot(0) += Math.Round(empHourlyWage * 1.25 * totalhours, 2)
                End If
            End While
        End If
        Return ot
    End Function
End Module
