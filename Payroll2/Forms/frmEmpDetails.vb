Imports MySql.Data.MySqlClient
Imports System.Text.RegularExpressions
Imports Microsoft.Office.Interop

Public Class frmEmpDetails
    Private id, emp_fullname, employee_id, employmentStatus, taxcode As String
    Private totalLate, totalUndertime, totalOvertime, totalWorkHours, totalAllowance, totalBenefits, totalLoans As Double
    Private empHourlyWage, empDailyWage As Double
    Private daysAbsent As Integer = 0
    Private daysPresent As Integer = 0

    Sub New(ByVal emp_id As String)
        MyBase.New()
        id = emp_id
        InitializeComponent()
    End Sub

    'load whole form
    Private Sub frmEmpDetails_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'load employee basic details
        StrSql = "SELECT * FROM tbl_employee WHERE id_employee = '" & id & "'"
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader()
        If dtareader.HasRows Then
            dtareader.Read()
            tb_empid.Text = dtareader("emp_id").ToString
            tb_biometricid.Text = dtareader("emp_bio_id").ToString
            tb_surname.Text = dtareader("lName").ToString
            tb_firstname.Text = dtareader("fName").ToString
            tb_middlename.Text = dtareader("mName").ToString
            tb_company.Text = dtareader("company").ToString
            tb_branch.Text = dtareader("branch").ToString
            tb_position.Text = dtareader("position").ToString
            tb_monthlysalary.Text = If(String.IsNullOrEmpty(dtareader("basic_salary").ToString), 0, dtareader("basic_salary").ToString)
            tb_employmentstatus.Text = dtareader("employment_status").ToString
            employmentStatus = dtareader("employment_status").ToString
            taxcode = If(String.IsNullOrEmpty(dtareader("tax_status").ToString), 0, dtareader("tax_status").ToString)
            tb_sssID.Text = dtareader("sss_id").ToString
            tb_hdmfID.Text = dtareader("hdmf_id").ToString
            tb_phicID.Text = dtareader("phic_id").ToString
            lbl_shift.Text = dtareader("shiftgroup").ToString
        End If
        'get employee loans
        GetEmployeeLoans(id)
        'get employee leave
        GetEmployeeLeave(id)
        'get employee overtime
        GetEmployeeOvertime(id)
        'get employee shifts
        GetEmpShift(id)

        'reset dgv_emptimesheet & other dgv's
        dgv_emptimesheet.Refresh()
        'dgv_incentives.Refresh()
        dgv_emptimesheet.Columns.Clear()
        dgv_emptimesheet.DataSource = Nothing

        ' Set the CustomFormat string.
        dtp_timesheetmonth.Format = DateTimePickerFormat.Custom
        dtp_timesheetmonth.CustomFormat = "MMMM yyyy"
        'dtp_timesheetmonth.ShowUpDown = True

        'display current cutoff
        lbl_cutoff.Text = current_cutoff
        'check if current cutoff is finished
        If isCutoffFinished(current_cutoff) = True Then
            Dim ctrl As Control
            For Each ctrl In TabPage1.Controls
                ctrl.Enabled = False
            Next
        End If
        'get the date range of the cutoff
        getCutoffRange()
        computeWage()
        tb_regularot.Text = 0
        tb_holidayot.Text = 0
        totalOT()
        totalTimesheetDeduct()
        computeloans()
        computeTotalContributions()
        computeAllowance()
        'check for saved payslip
        StrSql = "SELECT * FROM tbl_payslip WHERE employee_id = '" & id & "' AND cutoff_id = " & cutoff_id
        QryReadP()
        Dim dtareader2 As MySqlDataReader = cmd.ExecuteReader
        If dtareader2.HasRows Then
            dtareader2.Read()
            payslip_id = dtareader2("payslip_id")
            loadpayslip()
        End If
        computeTotal()

        Label33.Text = daysPresent

        If app_mode <> "alone" Then
            tsb_loanadd.Enabled = False
            tsb_loandelete.Enabled = False
            tsb_loanedit.Enabled = False
        End If
    End Sub

#Region "computations"
    'compute daily and ourly wage
    Sub computeWage()
        'daily rate
        'Probi daily rate = basic salary / (26 * 12)
        'regular = basic salary / (30 * 12)
        If employmentStatus = "Regular" Then
            empDailyWage = Double.Parse(tb_monthlysalary.Text) / 30
        Else
            empDailyWage = Double.Parse(tb_monthlysalary.Text) / 26
        End If
        empHourlyWage = empDailyWage / 8
    End Sub

    Sub totalOT()
        Dim isRestdayOT As Boolean = False
        Dim isRegHolidayOT As Boolean = False
        Dim isSpecHolidayOT As Boolean = False
        Dim isRegOt As Boolean = False
        'loop throug active cutoff range
        Dim CurrD As DateTime = frmdate_cutoff
        While (CurrD <= todate_cutoff)
            'query attendance per cutoff date
            StrSql = "SELECT * FROM tbl_attendance WHERE " & If(String.IsNullOrEmpty(tb_biometricid.Text), "id_employee = '" & id & "'", "emp_bio_id = '" & tb_biometricid.Text & "'") & " AND date = '" & CurrD.ToString("yyyy-MM-dd") & "'"
            QryReadP()
            Dim dtareader As MySqlDataReader = cmd.ExecuteReader
            If dtareader.HasRows Then
                dtareader.Read()
                Dim tempOT = dtareader("overtime")
                Dim tempTotalHours = dtareader("totalHours")
                daysPresent += 1
                totalWorkHours += dtareader("totalHours")
                'check for approved OT
                StrSql = "SELECT * FROM tbl_overtime WHERE employee_id = '" & id & "' AND " _
                            & "dateRequested = '" & CurrD.ToString("yyyy-MM-dd") & "' AND status = 'Approved by HR'"
                QryReadP()
                Dim otreader As MySqlDataReader = cmd.ExecuteReader
                If otreader.HasRows Then
                    'check if rest day
                    StrSql = "SELECT * FROM tbl_shifts WHERE shiftgroup = (SELECT shiftgroup FROM tbl_employee WHERE id_employee = '" & id & "') AND day='" & CurrD.ToString("dddd") & "'"
                    QryReadP()
                    Dim shiftreader As MySqlDataReader = cmd.ExecuteReader()
                    If Not shiftreader.HasRows Then
                        isRestdayOT = True
                    End If
                    'check if holiday
                    StrSql = "SELECT * FROM tblref_holiday WHERE date1 = '" & CurrD.ToString("yyyy-MM-dd") & "'"
                    QryReadP()
                    Dim holidayreader As MySqlDataReader = cmd.ExecuteReader
                    If holidayreader.HasRows Then
                        holidayreader.Read()
                        If holidayreader("type") = "Special (Non-Working) Days" Then
                            isRegHolidayOT = True
                        ElseIf holidayreader("type") = "Regular Holidays" Then
                            isSpecHolidayOT = True
                        End If
                    End If
                    'if restday, regholiday and specialholiday are all false then regOT is true
                    If isRestdayOT = True Then
                        'Hourly rate * 130% * 130% * number of hours
                        tb_regularot.Text += Math.Round(empHourlyWage * 1.3 * 1.3 * tempTotalHours, 2)
                    ElseIf isSpecHolidayOT = True Then
                        tb_holidayot.Text += Math.Round(empHourlyWage * 1.3 * 1.3 * tempTotalHours, 2)
                    ElseIf isRestdayOT = True And isSpecHolidayOT = True Then
                        'Hourly rate * 150% * 130% * number of hours
                        tb_holidayot.Text += Math.Round(empHourlyWage * 1.5 * 1.3 * tempTotalHours, 2)
                    ElseIf isRegHolidayOT = True Then
                        'Hourly rate * 200% * 130% * number of hours
                        tb_holidayot.Text += Math.Round(empHourlyWage * 2 * 1.3 * tempTotalHours, 2)
                    ElseIf isRegHolidayOT = True And isRestdayOT = True Then
                        'hourly rate * 260% * 130% * number of hours
                        tb_holidayot.Text += Math.Round(empHourlyWage * 2.6 * 1.3 * tempTotalHours, 2)
                    ElseIf isRegHolidayOT = False And isRestdayOT = False And isSpecHolidayOT = False Then
                        'Hourly rate * 125% * number of hours
                        tb_regularot.Text += Math.Round(empHourlyWage * 1.25 * tempOT, 2)
                    End If
                End If
            End If
            CurrD = CurrD.AddDays(1)
        End While
    End Sub

    Sub totalTimesheetDeduct()
        'loop cutoff range dates
        'check for absenses and leaves
        Dim countattendance = 0
        Dim CurrD As DateTime = frmdate_cutoff
        While (CurrD <= todate_cutoff)
            countattendance += 1
            StrSql = "SELECT * FROM tbl_attendance WHERE " & If(String.IsNullOrEmpty(tb_biometricid.Text), "id_employee = '" & id & "'", "emp_bio_id = '" & tb_biometricid.Text & "'") & " and date = '" & CurrD.ToString("yyyy-MM-dd") & "'"
            'Console.Write(StrSql)
            QryReadP()
            Dim dtareader2 As MySqlDataReader = cmd.ExecuteReader
            If Not dtareader2.HasRows Then
                'check if current day in loop is not within the shift schedule
                StrSql = "Select * FROM tbl_shifts WHERE shiftgroup = (SELECT shiftgroup FROM tbl_employee WHERE id_employee = '" & id & "') AND day='" & CurrD.ToString("dddd") & "'"
                QryReadP()
                Dim dtareader4 As MySqlDataReader = cmd.ExecuteReader()
                If dtareader4.HasRows Then
                    'absent 
                    daysAbsent += 1
                    'query leave where leave is approved by the hr
                    'if leave is with pay -1 to absent
                    'leave is without pay, treated as absent
                    StrSql = "SELECT tbl_leaves.* FROM tbl_leaves, tbl_employee WHERE tbl_employee.id_employee = '" & id & "' AND tbl_employee.id = tbl_leaves.employee_id AND durFrom <= '" & CurrD.ToString("yyyy-MM-dd") & "' AND durTo >= '" & CurrD.ToString("yyyy-MM-dd") & "' AND status = 'Approved by HR' AND mode = 'with pay'"
                    QryReadP()
                    Dim dtareader5 As MySqlDataReader = cmd.ExecuteReader
                    If dtareader5.HasRows Then
                        'merong leave
                        daysAbsent -= 1
                        totalWorkHours += 8.0
                    End If
                Else
                    If CurrD.ToString("dddd") = "Sunday" Then
                        daysPresent += 1
                    End If
                End If
            End If
            CurrD = CurrD.AddDays(1)
        End While
        Label34.Text = countattendance
        'get total lates
        StrSql = "SELECT * FROM tbl_attendance WHERE " & If(String.IsNullOrEmpty(tb_biometricid.Text), "id_employee = '" & id & "'", "emp_bio_id = '" & tb_biometricid.Text & "'") & " AND date BETWEEN '" & frmdate_cutoff.ToString("yyyy-MM-dd") & "' AND '" & todate_cutoff.ToString("yyyy-MM-dd") & "'"
        QryReadP()
        Dim latereader As MySqlDataReader = cmd.ExecuteReader
        If latereader.HasRows Then
            While latereader.Read()
                totalLate += CDbl(latereader("late"))
            End While
        End If
        tb_late.Text = Math.Round(totalLate * 5, 2)
        tb_absents.Text = Math.Round((CDbl(daysAbsent) * empDailyWage), 2)
        tb_undertime.Text = Math.Round(totalUndertime * empHourlyWage, 2)
        tb_totalworkhours.Text = totalWorkHours
        tb_income.Text = Math.Round((Double.Parse(tb_monthlysalary.Text) / 2), 2) ' Math.Round(daysPresent * empDailyWage, 2)
    End Sub

    Sub loadpayslip()
        StrSql = "SELECT * FROM tbl_payslip WHERE employee_id = '" & id & "' AND cutoff_id = " & cutoff_id
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        If dtareader.HasRows Then
            dtareader.Read()
            tb_allowance.Text = dtareader("allowances").ToString
            tb_tax.Text = dtareader("tax").ToString
            tb_sss.Text = dtareader("sss").ToString
            tb_phic.Text = dtareader("phic").ToString
            tb_hdmf.Text = dtareader("hdmf").ToString
            loadincentives(dtareader("payslip_id").ToString)
        End If
    End Sub

    Sub computeTotal()
        tb_totalot.Text = CDbl(tb_regularot.Text) + CDbl(tb_holidayot.Text) 'plus holiday computation
        totalBenefits = 0
        If dgv_incentives.Rows.Count > 0 Then
            For Each row In dgv_incentives.Rows
                totalBenefits += CDbl(row.Cells(1).Value.ToString())
            Next
        End If
        Dim otherdeduct = 0
        If dgv_otherdeduct.Rows.Count > 0 Then
            For Each row In dgv_otherdeduct.Rows
                otherdeduct += CDbl(row.Cells(1).Value.ToString())
            Next
        End If
        tb_totaldeductions.Text = CDbl(tb_late.Text) + CDbl(tb_absents.Text) + CDbl(tb_undertime.Text) + CDbl(tb_sss.Text) + CDbl(tb_phic.Text) + CDbl(tb_hdmf.Text) + CDbl(otherdeduct)
        tb_totalbenefits.Text = CDbl(tb_allowance.Text) + totalBenefits
        tb_grossincome.Text = Math.Round(CDbl(tb_totalot.Text) + CDbl(tb_income.Text) - CDbl(tb_totaldeductions.Text), 2)
        tb_tax.Text = Math.Round(computeTax(tb_grossincome.Text, taxcode), 2)
        Dim taxated_income = CDbl(tb_grossincome.Text) - CDbl(tb_tax.Text)
        tb_netpaywithtax.Text = taxated_income
        tb_netincome.Text = Math.Round((taxated_income + CDbl(tb_totalbenefits.Text) - CDbl(tb_loans.Text)), 2)
    End Sub

    Sub computeTotalContributions()
        tb_hdmf.Text = computeHDMF(tb_monthlysalary.Text)
        tb_phic.Text = computePhilhealth(tb_monthlysalary.Text)(2)
        tb_sss.Text = computeSSS(tb_monthlysalary.Text)(2)
    End Sub

    Sub computeAllowance()
        StrSql = "SELECT * FROM tbl_allowances WHERE employee_id = " & id
        QryReadP()
        Dim dtareader3 As MySqlDataReader = cmd.ExecuteReader
        If dtareader3.HasRows Then
            While dtareader3.Read()
                totalAllowance += Double.Parse(dtareader3("amount"))
            End While
        End If
        tb_allowance.Text = totalAllowance
    End Sub

    Sub computeloans()
        StrSql = "SELECT tbl_loans.* FROM tbl_loans WHERE tbl_loans.employee_id='" & id & "' AND endDate >= '" & todate_cutoff.ToString("yyyy-MM-dd") & "'"
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        Dim loans As Double = 0
        If dtareader.HasRows Then
            While dtareader.Read
                loans = dtareader("monthlyAmortization") / num_occurence
                totalLoans += loans
            End While
        End If
        tb_loans.Text = Math.Round(totalLoans, 2)
    End Sub
#End Region

    'load timesheet
    Private Sub btn_loadtimesheet_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_loadtimesheet.Click
        StrSql = "SELECT * FROM tbl_attendance WHERE emp_bio_id = '" & tb_biometricid.Text & "' " _
                        & "AND Month(date) = Month('" & dtp_timesheetmonth.Value.ToString("yyyy-MM-dd") & "') " _
                        & "AND Year(date) = Year('" & dtp_timesheetmonth.Value.ToString("yyyy-MM-dd") & "') ORDER BY date"
        QryReadP()
        ds = New DataSet
        adpt.Fill(ds, "TimesheetRaw")
        'reset dgv
        dgv_emptimesheet.Columns.Clear()
        dgv_emptimesheet.DataSource = Nothing
        dgv_emptimesheet.DataSource = ds.Tables(0)
        Dim col = dgv_emptimesheet.Columns.Count
        Dim i As Integer = 0
        While i <= col - 1
            dgv_emptimesheet.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
            dgv_emptimesheet.Columns(i).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
            i = i + 1
        End While
        dgv_emptimesheet.Columns(0).Visible = False
        dgv_emptimesheet.Columns(1).Visible = False
        dgv_emptimesheet.Columns(2).Visible = False
    End Sub

    'load employee shift schedule
    Sub GetEmpShift(ByVal EmpID As String)
        StrSql = "Select day as 'Day', timein as 'From', timeout as 'To' FROM tbl_shifts WHERE shiftgroup = (SELECT shiftgroup FROM tbl_employee WHERE id_employee = '" & id & "')"
        QryReadP()
            ds = New DataSet
            adpt.Fill(ds, "Shifts")
            dgv_shift.DataSource = ds.Tables(0)
            Dim col = dgv_shift.Columns.Count - 1
            For i As Integer = 0 To col
                dgv_shift.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
                i = i + i
            Next
    End Sub

    'employee loans
    Public Sub GetEmployeeLoans(ByVal EmpID As String)
        StrSql = "SELECT loan_id, loan_type AS 'Loan', lendingCompany AS 'Lending Company', amount AS 'Amount', term AS 'Term', monthlyAmortization AS 'Monthly Amortization', startDate AS 'From', endDate AS 'To', remarks AS 'Remarks' " _
                    & "FROM tbl_loans WHERE employee_id = '" & EmpID & "' "
        QryReadP()
        ds = New DataSet()
        adpt.Fill(ds, "Loans")
        dgv_emploans.DataSource = ds.Tables(0)
        Dim col = dgv_emploans.Columns.Count
        For i As Integer = 0 To col
            dgv_emploans.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
            i = i + i
        Next
        dgv_emploans.Columns(0).Visible = False
        Close_Connect()
    End Sub

    'employee leave applications
    Sub GetEmployeeLeave(ByVal EmpID As String)
        StrSql = "SELECT leave_type AS 'Leave Type', durFrom AS 'From Date', durTo AS 'To Date', dateFiled AS 'Date Filed', days_applied AS 'Days Applied', reason AS 'Reason', status AS 'Status' " _
                            & "FROM tbl_leaves WHERE employee_id = '" & EmpID & "' AND status = 'Approved by HR' "
        QryReadP()
        ds = New DataSet()
        adpt.Fill(ds, "Leave")
        dgv_empleave.DataSource = ds.Tables(0)
        Dim col = dgv_empleave.Columns.Count - 1
        For i As Integer = 0 To col
            dgv_empleave.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
            i = i + i
        Next
        Close_Connect()
    End Sub

    'employee overtime
    Private Sub GetEmployeeOvertime(EmpID As String)
        StrSql = "SELECT reason AS 'Reason', dateFiled AS 'Date Filed', dateRequested AS 'Date Requested', timeStart AS 'From', timeEnd AS 'To', status AS 'Status'" _
                            & "FROM tbl_overtime WHERE employee_id = '" & EmpID & "' AND status = 'Approved by HR' "
        QryReadP()
        ds = New DataSet()
        adpt.Fill(ds, "Overtime")
        dgv_overtime.DataSource = ds.Tables(0)
        Dim col = dgv_overtime.Columns.Count - 1
        For i As Integer = 0 To col
            dgv_overtime.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
            i = i + i
        Next
        Close_Connect()
    End Sub

    'load incentives
    Private Sub loadincentives(ByVal payslip_id As String)
        StrSql = "SELECT name as Name, amount as Amount FROM tbl_incentives WHERE payslip_id = '" & payslip_id & "'"
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        If dtareader.HasRows Then
            While dtareader.Read()
                Dim row As String() = New String() {dtareader("Name").ToString, dtareader("Amount").ToString}
                dgv_incentives.Rows.Add(row)
            End While
        End If
    End Sub

    Private Sub btn_addincentive_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_addincentive.Click
        Dim row As String() = New String() {"Edit", "0"}
        dgv_incentives.Rows.Add(row)
    End Sub

    Private Sub btn_delincentive_Click(sender As System.Object, e As System.EventArgs) Handles btn_delincentive.Click
        If dgv_incentives.Rows.Count > 0 Then
            'StrSql = "DELETE FROM tbl_incentives WHERE payslip_id = " & payslip_id
            'QryReadP()
            'cmd.ExecuteNonQuery()
            dgv_incentives.Rows.Remove(dgv_incentives.SelectedRows(0))
            computeTotal()
        Else
            MessageBox.Show("No data to delete.")
        End If
    End Sub

    'save payslip
    Private Sub btn_savepayslip_Click(sender As System.Object, e As System.EventArgs) Handles btn_savepayslip.Click
        'Dim payslip_id
        'check if saved payslip
        StrSql = "SELECT * FROM tbl_payslip WHERE employee_id = '" & id & "' AND cutoff_id = " & cutoff_id
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        If dtareader.HasRows Then
            dtareader.Read()
            'payslip_id = dtareader("payslip_id").ToString
            'edit/update database
            StrSql = "UPDATE tbl_payslip SET totalWorkHours =" & tb_totalworkhours.Text & "," _
                    & "income =" & CDbl(tb_income.Text) & "," & "regot_pay =" & CDbl(tb_regularot.Text) & "," _
                    & "holot_pay =" & CDbl(tb_holidayot.Text) & "," & "ot_pay =" & CDbl(tb_totalot.Text) & "," _
                    & "allowances =" & CDbl(tb_allowance.Text) & "," & "incentives =" & totalBenefits & "," _
                    & "lateabsent_deduct =" & CDbl(tb_late.Text) & "," & "undertime_deduct =" & CDbl(tb_undertime.Text) & "," _
                    & "tax =" & CDbl(tb_tax.Text) & "," & "sss =" & CDbl(tb_sss.Text) & "," _
                    & "phic =" & CDbl(tb_phic.Text) & "," & "hdmf =" & CDbl(tb_hdmf.Text) & "," _
                    & "gross_income =" & tb_grossincome.Text & "," & "net_income =" & tb_netincome.Text _
                    & " WHERE payslip_id = '" & dtareader("payslip_id").ToString & "'"
            QryReadP()
            cmd.ExecuteNonQuery()
            'save incentives
            save_incentives(payslip_id)
        Else
            'saved new payslip
            StrSql = "INSERT INTO tbl_payslip VALUES(0,'" & id & "'," & cutoff_id & "," _
                    & tb_totalworkhours.Text & "," & CDbl(tb_income.Text) & "," & CDbl(tb_regularot.Text) & "," _
                    & CDbl(tb_holidayot.Text) & "," & CDbl(tb_totalot.Text) & "," & CDbl(tb_allowance.Text) & "," _
                    & totalBenefits & "," & CDbl(tb_late.Text) & "," & CDbl(tb_undertime.Text) & "," _
                    & CDbl(tb_tax.Text) & "," & CDbl(tb_sss.Text) & "," & CDbl(tb_phic.Text) & "," _
                    & CDbl(tb_hdmf.Text) & "," & tb_grossincome.Text & "," & tb_netincome.Text & ")"
            QryReadP()
            cmd.ExecuteNonQuery()
            payslip_id = cmd.LastInsertedId.ToString()
            'save incentives
            save_incentives(payslip_id)
        End If

        MessageBox.Show("Payslip Saved!")
        cmd.Dispose()
        'load payslip for the current cutoff
        getPayslip(current_cutoff)
        Close_Connect()
    End Sub
    'save incentives
    Sub save_incentives(ByVal payslip_id As String)
        StrSql = "DELETE FROM tbl_incentives WHERE payslip_id = " & payslip_id
        QryReadP()
        cmd.ExecuteNonQuery()
        If dgv_incentives.Rows.Count > 0 Then
            For Each row In dgv_incentives.Rows
                StrSql = "INSERT INTO tbl_incentives(payslip_id,name,amount) VALUES(" & payslip_id & ",'" & row.Cells(0).Value.ToString() & "'," & row.Cells(1).Value.ToString() & ")"
                QryReadP()
                cmd.ExecuteNonQuery()
            Next
        End If
    End Sub

    'automatic compute net pay on enter
    Private Sub tb_allowance_KeyUp(sender As System.Object, e As System.Windows.Forms.KeyEventArgs) Handles tb_allowance.KeyUp, tb_tax.KeyUp, tb_sss.KeyUp, tb_phic.KeyUp, tb_hdmf.KeyUp, tb_loans.KeyUp, tb_netpaywithtax.KeyUp
        If e.KeyCode = Keys.Enter Then
            'MsgBox("enter key pressd ")
            computeTotal()
        End If
    End Sub
    'after cell edit compute net pay
    Private Sub dgv_incentives_CellEndEdit(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_incentives.CellEndEdit
        computeTotal()
    End Sub
    'nnumbers only input 
    Private Sub tb_allowance_KeyPress(sender As System.Object, e As System.Windows.Forms.KeyPressEventArgs) Handles tb_tax.KeyPress, tb_sss.KeyPress, tb_phic.KeyPress, tb_hdmf.KeyPress, tb_allowance.KeyPress, tb_netpaywithtax.KeyPress
        If Not Char.IsNumber(e.KeyChar) AndAlso Not Char.IsControl(e.KeyChar) AndAlso Not e.KeyChar = "." Then
            e.Handled = True
        End If
    End Sub
    'LOANS
    Private Sub BindingNavigatorAddNewItem_Click(sender As System.Object, e As System.EventArgs) Handles tsb_loanadd.Click
        Dim frmLoans As New frmLoans(id, "")
        frmLoans.ShowDialog()
    End Sub
    Private Sub ToolStripButton1_Click(sender As System.Object, e As System.EventArgs) Handles tsb_loanedit.Click
        Dim a = dgv_emploans.CurrentRow.Cells(0).Value.ToString()
        Dim frmLoans As New frmLoans(id, a)
        frmLoans.ShowDialog()
    End Sub

    Private Sub btn_addtimesheet_Click(sender As System.Object, e As System.EventArgs) Handles btn_addtimesheet.Click
        Dim timesheet As New frmEditTimesheet("final", tb_biometricid.Text, id)
        timesheet.ShowDialog()
    End Sub
    'other deductions
    Private Sub btn_adddeduct_Click(sender As System.Object, e As System.EventArgs) Handles btn_adddeduct.Click
        Dim row As String() = New String() {"Edit", "0"}
        dgv_otherdeduct.Rows.Add(row)
    End Sub
    'other deductions
    Private Sub btn_deldeduct_Click(sender As System.Object, e As System.EventArgs) Handles btn_deldeduct.Click
        If dgv_otherdeduct.Rows.Count > 0 Then
            'StrSql = "DELETE FROM tbl_incentives WHERE payslip_id = " & payslip_id
            'QryReadP()
            'cmd.ExecuteNonQuery()
            dgv_otherdeduct.Rows.Remove(dgv_otherdeduct.SelectedRows(0))
            computeTotal()
        Else
            MessageBox.Show("No data to delete.")
        End If
    End Sub
    'autocompute after cell edit
    Private Sub dgv_otherdeduct_CellEndEdit(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_otherdeduct.CellEndEdit
        computeTotal()
    End Sub
End Class