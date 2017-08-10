Imports MySql.Data.MySqlClient

Module modPayCompute
    Public empHourlyWage, empDailyWage As Double
    Public totalLate, totalUndertime, totalOvertime, totalWorkHours, totalAllowance, totalBenefits, totalLoans, otherdeduct As Double
    Public daysAbsent As Double = 0
    Public daysPresent As Double = 0
    Public monthlysalary As Double = 0
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
        totalLate = 0
        'get total lates
        Dim CurrD As DateTime = prevcutoff_fromdate
        While (CurrD <= prevcutoff_todate)
            StrSql = "SELECT * FROM tbl_attendance WHERE " & If(String.IsNullOrEmpty(emp_bio_id), "id_employee = '" & id_employee & "'", "emp_bio_id = '" & emp_bio_id & "'") & " AND date = '" & CurrD.ToString("yyyy-MM-dd") & "'"
            QryReadP()
            Dim latereader As MySqlDataReader = cmd.ExecuteReader
            If latereader.HasRows Then
                latereader.Read()
                Dim a = CDbl(latereader("late"))
                StrSql = "SELECT * FROM tbl_attendancealter WHERE private_key = '" & latereader("private_key").ToString & "'"
                QryReadP()
                Dim alterreader As MySqlDataReader = cmd.ExecuteReader
                If alterreader.HasRows Then
                    alterreader.Read()
                    If CDbl(alterreader("late")) >= 10 Then
                        totalLate += (CDbl(alterreader("late")) - 10)
                    End If
                    alterreader.Close()
                Else
                    If a >= 10 Then
                        totalLate += (a - 10)
                    End If
                End If
                latereader.Close()
            Else
                StrSql = "SELECT * FROM tbl_attendancealter WHERE employee_id = '" & id_employee & "' AND datelog = '" & CurrD.ToString("yyyy-MM-dd") & "'"
                QryReadP()
                Dim alterreader As MySqlDataReader = cmd.ExecuteReader
                If alterreader.HasRows Then
                    alterreader.Read()
                    If CDbl(alterreader("late")) >= 10 Then
                        totalLate += (CDbl(alterreader("late")) - 10)
                    End If
                    alterreader.Close()
                End If
            End If
            cmd.Dispose()
            CurrD = CurrD.AddDays(1)
        End While
        Return Math.Round(totalLate * 5, 2)
    End Function

    Function ComputeUndertime(ByVal emp_bio_id As String, ByVal id_employee As String) As Double
        totalUndertime = 0
        'get total undertime
        'get total lates
        Dim CurrD As DateTime = prevcutoff_fromdate
        While (CurrD <= prevcutoff_todate)
            StrSql = "SELECT * FROM tbl_attendance WHERE " & If(String.IsNullOrEmpty(emp_bio_id), "id_employee = '" & id_employee & "'", "emp_bio_id = '" & emp_bio_id & "'") & " AND date = '" & CurrD.ToString("yyyy-MM-dd") & "'"
            QryReadP()
            Dim latereader As MySqlDataReader = cmd.ExecuteReader
            If latereader.HasRows Then
                latereader.Read()
                Dim a = CDbl(latereader("undertime"))
                StrSql = "SELECT * FROM tbl_attendancealter WHERE private_key = '" & latereader("private_key").ToString & "'"
                QryReadP()
                Dim alterreader As MySqlDataReader = cmd.ExecuteReader
                If alterreader.HasRows Then
                    alterreader.Read()
                    totalUndertime += CDbl(alterreader("undertime"))
                    alterreader.Close()
                Else
                    totalUndertime += a
                End If
                latereader.Close()
            Else
                StrSql = "SELECT * FROM tbl_attendancealter WHERE employee_id = '" & id_employee & "' AND datelog = '" & CurrD.ToString("yyyy-MM-dd") & "'"
                QryReadP()
                Dim alterreader As MySqlDataReader = cmd.ExecuteReader
                If alterreader.HasRows Then
                    alterreader.Read()
                    totalUndertime += CDbl(alterreader("undertime"))
                    alterreader.Close()
                End If
            End If
                cmd.Dispose()
                CurrD = CurrD.AddDays(1)
        End While
        Return Math.Round(totalUndertime * 5, 2)
    End Function

    Function computeloans(ByVal id_employee As String) As Double
        StrSql = "SELECT tbl_loans.* FROM tbl_loans WHERE tbl_loans.employee_id='" & id_employee & "' AND endDate >= '" & todate_cutoff.ToString("yyyy-MM-dd") & "'"
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        Dim loans As Double = 0
        totalLoans = 0
        If dtareader.HasRows Then
            While dtareader.Read
                loans = dtareader("monthlyAmortization") / 2 'default: divide my 2 for semi-monthly
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

        Dim CurrD As DateTime = prevcutoff_fromdate
        While (CurrD <= prevcutoff_todate)
            StrSql = "SELECT * FROM tbl_overtime WHERE employee_id = '" & id & "' AND status = 'Approved by HR' AND overtimedate = '" & CurrD.ToString("yyyy-MM-dd") & "'"
            QryReadP()
            Dim otreader As MySqlDataReader = cmd.ExecuteReader
            If otreader.HasRows Then
                otreader.Read()
                Dim totalhours = otreader("totaltime")
                StrSql = "SELECT * FROM tbl_shifts WHERE shiftgroup = (SELECT shiftgroup FROM tbl_employee WHERE id_employee = '" & id & "') AND day = '" & CurrD.ToString("dddd") & "'"
                QryReadP()
                Dim shiftreader As MySqlDataReader = cmd.ExecuteReader()
                If Not shiftreader.HasRows Then
                    isRestdayOT = True
                Else
                    isRegOt = True
                End If
                'check if holiday
                StrSql = "SELECT * FROM tblref_holiday WHERE date1 = '" & CurrD.ToString("yyyy-MM-dd") & "'"
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
                    'OT on a Rest day 
                    ot(0) += Math.Round((empHourlyWage + ((empHourlyWage * 1.3) * 0.3)) * totalhours, 2)
                ElseIf isSpecHolidayOT = True Then
                    'OT on a Special holiday
                    ot(1) += Math.Round((empHourlyWage + ((empHourlyWage * 1.3) * 0.3)) * totalhours, 2)
                ElseIf isRestdayOT = True And isSpecHolidayOT = True Then
                    'OT on a rest day w/c falls on a special holiday
                    ot(1) += Math.Round((empHourlyWage + ((empHourlyWage * 1.5) * 0.3)) * totalhours, 2)
                ElseIf isRegHolidayOT = True Then
                    'OT on a Regular holiday
                    ot(1) += Math.Round((empHourlyWage + ((empHourlyWage * 2) * 0.3)) * totalhours, 2)
                ElseIf isRegHolidayOT = True And isRestdayOT = True Then
                    'OT on a rest day w/c falls on a regular holiday
                    ot(1) += Math.Round((empHourlyWage + ((empHourlyWage * 2.6) * 0.3)) * totalhours, 2)
                ElseIf isRegHolidayOT = False And isRestdayOT = False And isSpecHolidayOT = False Then
                    'Ordinary OT
                    ot(0) += Math.Round((empHourlyWage + (empHourlyWage * 0.25)) * totalhours, 2)
                End If
            End If
            CurrD = CurrD.AddDays(1)
        End While
        Return ot
    End Function

    Function totalTimesheetDeduct(ByVal id_employee As String, ByVal emp_bio_id As String)
        Dim totalabsent() As Double = {0, 0} '0: totalabsent, 1: countattendance
        'reset value of Dim daysAbsent to 0
        daysAbsent = 0
        daysPresent = 0
        'loop cutoff range dates
        'check for absenses and leaves
        Dim countattendance = 0
        Dim CurrD As DateTime = prevcutoff_fromdate
        While (CurrD <= prevcutoff_todate)
            countattendance += 1
            StrSql = "SELECT * FROM tbl_attendance WHERE " & If(String.IsNullOrEmpty(emp_bio_id), "id_employee = '" & id_employee & "'", "emp_bio_id = '" & emp_bio_id & "'") & " AND date = '" & CurrD.ToString("yyyy-MM-dd") & "' AND time_in <> '-' AND time_out <> '-'"
            QryReadP()
            Dim dtareader2 As MySqlDataReader = cmd.ExecuteReader
            If Not dtareader2.HasRows Then
                'check if current day in loop is not within the shift schedule
                StrSql = "Select * FROM tbl_shifts WHERE shiftgroup = (SELECT shiftgroup FROM tbl_employee WHERE id_employee = '" & id_employee & "') AND day='" & CurrD.ToString("dddd") & "'"
                QryReadP()
                Dim dtareader4 As MySqlDataReader = cmd.ExecuteReader()
                If dtareader4.HasRows Then
                    'whole day absent 
                    daysAbsent += 1
                    'query leave where leave is approved by the hr
                    'if leave is with pay -1 to absent
                    'leave is without pay, treated as absent
                    StrSql = "SELECT tbl_leaves.*, tbl_leavedates.* FROM tbl_leaves JOIN tbl_leavedates ON tbl_leavedates.leaveapp_id = tbl_leaves.id WHERE tbl_leaves.employee_id = '" & id_employee & "' AND tbl_leavedates.leavedate = '" & CurrD.ToString("yyyy-MM-dd") & "' AND tbl_leaves.status = 'Approved by HR' AND tbl_leaves.mode = 'with pay'"
                    QryReadP()
                    Dim dtareader5 As MySqlDataReader = cmd.ExecuteReader
                    If dtareader5.HasRows Then
                        'merong leave
                        dtareader5.Read()
                        If dtareader5("daystatus").ToString = "Whole Day" Then
                            daysAbsent -= 1.0
                        ElseIf dtareader5("daystatus").ToString = "AM" Or dtareader5("daystatus").ToString = "PM" Then
                            daysAbsent -= 0.5
                        End If
                    End If
                    'check for travels
                    StrSql = "SELECT tbl_business.*, tbl_businessdates.* FROM tbl_business JOIN tbl_businessdates ON tbl_businessdates.business_id = tbl_business.id WHERE tbl_business.employee_id = '" & id_employee & "' AND tbl_businessdates.businessdate = '" & CurrD.ToString("yyyy-MM-dd") & "' AND tbl_business.status = 'Approved by HR'"
                    QryReadP()
                    Dim dtareader6 As MySqlDataReader = cmd.ExecuteReader
                    If dtareader6.HasRows Then
                        'merong travels
                        dtareader6.Read()
                        If dtareader6("daystatus").ToString = "Whole Day" Then
                            daysAbsent -= 1.0
                        ElseIf dtareader6("daystatus").ToString = "AM" Or dtareader6("daystatus").ToString = "PM" Then
                            daysAbsent -= 0.5
                        End If
                    End If
                    'check in timesheet alter if has correction
                    StrSql = "SELECT * FROM tbl_attendancealter WHERE employee_id = '" & id_employee & "' AND datelog = '" & CurrD.ToString("yyyy-MM-dd") & "'"
                    QryReadP()
                    Dim alterreader As MySqlDataReader = cmd.ExecuteReader
                    If alterreader.HasRows Then
                        daysAbsent -= 1
                    End If
                Else
                    If CurrD.ToString("dddd") = "Sunday" Then
                        daysPresent += 1
                    End If
                End If
                'check if holiday
                StrSql = "SELECT * FROM tblref_holiday WHERE date1 = '" & CurrD.ToString("yyyy-MM-dd") & "'"
                QryReadP()
                Dim holidayreader As MySqlDataReader = cmd.ExecuteReader
                If holidayreader.HasRows Then
                    daysAbsent -= 1
                End If
            Else
                dtareader2.Read()
                Dim checktimein = DateTime.Parse(dtareader2("time_in")).ToString("hh:mm tt")
                Dim checktimeout = DateTime.Parse(dtareader2("time_out")).ToString("hh:mm tt")
                If DateTime.Parse(checktimein) >= #12:00:00 PM# And DateTime.Parse(checktimein) <= #1:00:00 PM# Then
                    'halfday absent am
                    daysAbsent += 0.5
                ElseIf DateTime.Parse(checktimeout) >= #12:00:00 PM# And DateTime.Parse(checktimeout) <= #1:00:00 PM# Then
                    'halfday absent pm
                    daysAbsent += 0.5
                End If
            End If
            CurrD = CurrD.AddDays(1)
        End While
        totalabsent(1) = countattendance
        totalabsent(0) = Math.Round((CDbl(daysAbsent) * empDailyWage), 2)
        Return totalabsent
    End Function

End Module
