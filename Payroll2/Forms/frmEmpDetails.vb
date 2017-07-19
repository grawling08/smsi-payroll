﻿Imports MySql.Data.MySqlClient
Imports System.Text.RegularExpressions
Imports Microsoft.Office.Interop

Public Class frmEmpDetails
    Private id, emp_fullname, employee_id, employmentStatus, taxcode As String
    Private daysAbsent As Double = 0
    Private daysPresent As Double = 0

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
        'get employee travel orders
        GetEmpTO(id)
        'get employee insurance
        GetEmpInsurance(id)

        'reset dgv_emptimesheet & other dgv's
        dgv_emptimesheet.Refresh()
        'dgv_incentives.Refresh()
        dgv_emptimesheet.Columns.Clear()
        dgv_emptimesheet.DataSource = Nothing

        ' Set the CustomFormat string.
        dtp_timesheetmonth.Value = frmdate_cutoff
        dtp_timesheetmonth.Format = DateTimePickerFormat.Custom
        dtp_timesheetmonth.CustomFormat = "MMMM dd, yyyy"
        dtp_timesheetmonth2.Value = todate_cutoff
        dtp_timesheetmonth2.Format = DateTimePickerFormat.Custom
        dtp_timesheetmonth2.CustomFormat = "MMMM dd, yyyy"

        'display current cutoff
        lbl_cutoff.Text = current_cutoff
        'check if current cutoff is finished
        'If isCutoffFinished(current_cutoff) = True Then
        '    Dim ctrl As Control
        '    For Each ctrl In TabPage1.Controls
        '        ctrl.Enabled = False
        '    Next
        'End If
        'get previous cutoff days for deductions
        GetPrevCutoff()
        'get timesheet from hris
        loadtimesheetsp(frmdate_cutoff.ToString("yyyy-MM-dd"), todate_cutoff.ToString("yyyy-MM-dd"))
        'payroll computations
        computeWage(employmentStatus, tb_monthlysalary.Text)
        tb_income.Text = Math.Round((Double.Parse(tb_monthlysalary.Text) / 2), 2)
        tb_regularot.Text = totalOT(id)(0)
        tb_holidayot.Text = totalOT(id)(1)
        totalTimesheetDeduct()
        tb_undertime.Text = Math.Round(ComputeUndertime(tb_biometricid.Text, id), 2)
        tb_late.Text = ComputeLates(tb_biometricid.Text, id)
        tb_loans.Text = computeloans(id)
        tb_hdmf.Text = computeHDMF(tb_monthlysalary.Text)
        tb_phic.Text = computePhilhealth(tb_monthlysalary.Text)(2)
        tb_sss.Text = computeSSS(tb_monthlysalary.Text)(2)
        loadincentives(cutoff_id, id)
        loadotherdeduct(cutoff_id, id)
        'computeTotalContributions()
        totalAllowance = computeAllowance(id)
        tb_allowance.Text = totalAllowance
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

    Sub totalTimesheetDeduct()
        'loop cutoff range dates
        'check for absenses and leaves
        Dim countattendance = 0
        Dim CurrD As DateTime = prevcutoff_fromdate
        While (CurrD <= prevcutoff_todate)
            countattendance += 1
            StrSql = "SELECT * FROM tbl_attendance WHERE " & If(String.IsNullOrEmpty(tb_biometricid.Text), "id_employee = '" & id & "'", "emp_bio_id = '" & tb_biometricid.Text & "'") & " AND date = '" & CurrD.ToString("yyyy-MM-dd") & "' AND time_in <> '-' AND time_out <> '-'"
            'Console.Write(StrSql)
            QryReadP()
            Dim dtareader2 As MySqlDataReader = cmd.ExecuteReader
            If Not dtareader2.HasRows Then
                'check if current day in loop is not within the shift schedule
                StrSql = "Select * FROM tbl_shifts WHERE shiftgroup = (SELECT shiftgroup FROM tbl_employee WHERE id_employee = '" & id & "') AND day='" & CurrD.ToString("dddd") & "'"
                QryReadP()
                Dim dtareader4 As MySqlDataReader = cmd.ExecuteReader()
                If dtareader4.HasRows Then
                    'whole day absent 
                    daysAbsent += 1
                    'query leave where leave is approved by the hr
                    'if leave is with pay -1 to absent
                    'leave is without pay, treated as absent
                    StrSql = "SELECT tbl_leaves.*, tbl_leavedates.* FROM tbl_leaves JOIN tbl_leavedates ON tbl_leavedates.leaveapp_id = tbl_leaves.id WHERE tbl_leaves.employee_id = '" & id & "' AND tbl_leavedates.leavedate = '" & CurrD.ToString("yyyy-MM-dd") & "' AND tbl_leaves.status = 'Approved by HR' AND tbl_leaves.mode = 'with pay'"
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
        Label34.Text = countattendance
        tb_absents.Text = Math.Round((CDbl(daysAbsent) * empDailyWage), 2)
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

#End Region

    Sub loadtimesheetsp(ByVal startdate As String, ByVal enddate As String)
        StrSql = "CALL sp_timesheetPR('" & startdate & "','" & enddate & "','" & tb_biometricid.Text & "')"
        QryReadP()
        ds = New DataSet()
        adpt.Fill(ds, "timesheet")
        dgv_emptimesheet.DataSource = ds.Tables(0)
        Dim col = dgv_emptimesheet.Columns.Count
        For i As Integer = 0 To col
            dgv_emptimesheet.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
            i = i + i
        Next
        dgv_emptimesheet.Columns(0).Visible = False
        Close_Connect()
    End Sub
    'load timesheet
    Private Sub btn_loadtimesheet_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_loadtimesheet.Click
        loadtimesheetsp(dtp_timesheetmonth.Value.ToString("yyyy-MM-dd"), dtp_timesheetmonth2.Value.ToString("yyyy-MM-dd"))
        'StrSql = "SELECT emp_bio_id, dateLog, DATE_FORMAT(STR_TO_DATE(timein, '%T'),'%h:%s %p') as timein, DATE_FORMAT(STR_TO_DATE(timeout, '%T'),'%h:%s %p') as timeout, totalHours, late, undertime, overtime, remarks " _
        '            & "FROM timesheet WHERE emp_bio_id = '" & tb_biometricid.Text & "' " _
        '            & "AND Month(dateLog) = Month('" & dtp_timesheetmonth.Value.ToString("yyyy-MM-dd") & "') " _
        '            & "AND Year(dateLog) = Year('" & dtp_timesheetmonth.Value.ToString("yyyy-MM-dd") & "') ORDER BY dateLog"
        'QryReadH()
        'ds = New DataSet
        'adpt.Fill(ds, "TimesheetRaw")
        ''reset dgv
        'dgv_emptimesheet.Columns.Clear()
        'dgv_emptimesheet.DataSource = Nothing
        'dgv_emptimesheet.DataSource = ds.Tables(0)
        'Dim col = dgv_emptimesheet.Columns.Count
        'Dim i As Integer = 0
        'While i <= col - 1
        '    dgv_emptimesheet.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
        '    dgv_emptimesheet.Columns(i).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        '    i = i + 1
        'End While
        'dgv_emptimesheet.Columns(0).Visible = False
        '' dgv_emptimesheet.Columns(2).Visible = False
    End Sub
    'load employee travel orders
    Private Sub GetEmpTO(id As String)
        StrSql = "Select destination AS 'Destination', durFrom AS 'From', durTo AS 'To', days_applied AS 'Days', purpose AS 'Purpose'  FROM tbl_business WHERE employee_id = '" & id & "'"
        QryReadP()
        ds = New DataSet
        adpt.Fill(ds, "travel")
        dgv_travelorders.DataSource = ds.Tables(0)
        Dim col = dgv_travelorders.Columns.Count - 1
        Dim i = 0
        While i <= col
            dgv_travelorders.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
            dgv_travelorders.Columns(i).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
            i = i + 1
        End While
    End Sub
    'load employee shift schedule
    Sub GetEmpShift(ByVal EmpID As String)
        StrSql = "Select day as 'Day', timein as 'From', timeout as 'To' FROM tbl_shifts WHERE shiftgroup = (SELECT shiftgroup FROM tbl_employee WHERE id_employee = '" & id & "')"
        QryReadP()
        ds = New DataSet
        adpt.Fill(ds, "Shifts")
        dgv_shift.DataSource = ds.Tables(0)
        Dim col = dgv_shift.Columns.Count - 1
        Dim i = 0
        While i <= col
            dgv_shift.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
            dgv_shift.Columns(i).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
            i = i + 1
        End While
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
        StrSql = "SELECT leave_type AS 'Leave Type', durFrom AS 'From Date', durTo AS 'To Date', dateFiled AS 'Date Filed', days_applied AS 'Days Applied', reason AS 'Reason', mode AS 'With or W/o Pay', status AS 'Status' " _
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
        StrSql = "SELECT overtimedate AS 'Date', reason AS 'Reason', status AS 'Status', totaltime AS 'Total OT', cutoffdate AS 'For Cutoff' " _
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
    'employee insurance
    Private Sub GetEmpInsurance(id As String)
        StrSql = "SELECT * FROM tbl_insurance WHERE id_employee = '" & id & "'"
        QryReadP()
        ds = New DataSet()
        adpt.Fill(ds, "Insurance")
        dgv_insurance.DataSource = ds.Tables(0)
        Dim col = dgv_insurance.Columns.Count - 1
        For i As Integer = 0 To col
            dgv_insurance.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
            i = i + i
        Next
        Close_Connect()
    End Sub

    'load incentives
    Private Sub loadincentives(ByVal cutoff_id As String, ByVal id_employee As String)
        StrSql = "SELECT name as Name, amount as Amount FROM tbl_incentives WHERE cutoff_id = " & cutoff_id & " AND employee_id = " & id_employee
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        If dtareader.HasRows Then
            While dtareader.Read()
                Dim row As String() = New String() {dtareader("Name").ToString, dtareader("Amount").ToString}
                dgv_incentives.Rows.Add(row)
            End While
        End If
    End Sub
    'add new incentives
    Private Sub btn_addincentive_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_addincentive.Click
        Dim row As String() = New String() {"Edit", "0"}
        dgv_incentives.Rows.Add(row)
    End Sub
    'after cell edit compute net pay
    Private Sub dgv_incentives_CellEndEdit(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_incentives.CellEndEdit
        computeTotal()
        'save to db
        save_incentives(cutoff_id, id)
        'refresh dgv
        getPayslip(current_cutoff)
    End Sub
    'delete incentives
    Private Sub btn_delincentive_Click(sender As System.Object, e As System.EventArgs) Handles btn_delincentive.Click
        If dgv_incentives.Rows.Count > 0 Then
            Dim name = dgv_incentives.CurrentRow.Cells(0).Value.ToString
            Dim amount = dgv_incentives.CurrentRow.Cells(1).Value.ToString
            StrSql = "DELETE FROM tbl_incentives WHERE name = '" & name & "' AND amount = " & amount & " AND cutoff_id = " & cutoff_id & " AND employee_id = " & id
            QryReadP()
            cmd.ExecuteNonQuery()
            dgv_incentives.Rows.Remove(dgv_incentives.SelectedRows(0))
            computeTotal()
            getPayslip(current_cutoff)
        Else
            MessageBox.Show("No data to delete.")
        End If
    End Sub
    'save incentives
    Sub save_incentives(ByVal cutoff_id As String, ByVal id_employee As String)
        StrSql = "DELETE FROM tbl_incentives WHERE cutoff_id = " & cutoff_id & " AND employee_id = " & id_employee
        QryReadP()
        cmd.ExecuteNonQuery()
        If dgv_incentives.Rows.Count > 0 Then
            For Each row In dgv_incentives.Rows
                StrSql = "INSERT INTO tbl_incentives(cutoff_id,employee_id,name,amount) VALUES(" & cutoff_id & "," & id_employee & ",'" & row.Cells(0).Value.ToString() & "'," & row.Cells(1).Value.ToString() & ")"
                QryReadP()
                cmd.ExecuteNonQuery()
            Next
        End If
    End Sub

    'load other deductions
    Private Sub loadotherdeduct(ByVal cutoff_id As String, ByVal id_employee As String)
        StrSql = "SELECT name as Name, amount as Amount FROM tbl_otherdeductions WHERE cutoff_id = " & cutoff_id & " AND employee_id = " & id_employee
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        If dtareader.HasRows Then
            While dtareader.Read()
                Dim row As String() = New String() {dtareader("Name").ToString, dtareader("Amount").ToString}
                dgv_otherdeduct.Rows.Add(row)
            End While
        End If
    End Sub
    'add new other deductions
    Private Sub btn_adddeduct_Click(sender As System.Object, e As System.EventArgs) Handles btn_adddeduct.Click
        Dim row As String() = New String() {"Edit", "0"}
        dgv_otherdeduct.Rows.Add(row)
    End Sub
    'save other deductions
    Private Sub btn_deldeduct_Click(sender As System.Object, e As System.EventArgs) Handles btn_deldeduct.Click
        If dgv_otherdeduct.Rows.Count > 0 Then
            Dim name = dgv_otherdeduct.CurrentRow.Cells(0).Value.ToString
            Dim amount = dgv_otherdeduct.CurrentRow.Cells(1).Value.ToString
            StrSql = "DELETE FROM tbl_otherdeductions WHERE name = '" & name & "' AND amount = " & amount & " AND cutoff_id = " & cutoff_id & " AND employee_id = " & id
            QryReadP()
            cmd.ExecuteNonQuery()
            dgv_otherdeduct.Rows.Remove(dgv_otherdeduct.SelectedRows(0))
            computeTotal()
            getPayslip(current_cutoff)
        Else
            MessageBox.Show("No data to delete.")
        End If
    End Sub
    'autocompute after cell edit
    Private Sub dgv_otherdeduct_CellEndEdit(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_otherdeduct.CellEndEdit
        computeTotal()
        'save to db
        save_otherdeduct(cutoff_id, id)
        'refresh dgv
        getPayslip(current_cutoff)
    End Sub
    'save other deductions
    Sub save_otherdeduct(ByVal cutoff_id As String, ByVal id_employee As String)
        StrSql = "DELETE FROM tbl_otherdeductions WHERE cutoff_id = " & cutoff_id & " AND employee_id = " & id_employee
        QryReadP()
        cmd.ExecuteNonQuery()
        If dgv_otherdeduct.Rows.Count > 0 Then
            For Each row In dgv_otherdeduct.Rows
                StrSql = "INSERT INTO tbl_otherdeductions(cutoff_id,employee_id,name,amount) VALUES(" & cutoff_id & "," & id_employee & ",'" & row.Cells(0).Value.ToString() & "'," & row.Cells(1).Value.ToString() & ")"
                QryReadP()
                cmd.ExecuteNonQuery()
            Next
        End If
    End Sub

    'save payslip
    Private Sub btn_savepayslip_Click(sender As System.Object, e As System.EventArgs) Handles btn_savepayslip.Click
        'Dim payslip_id
        'check if saved payslip
        StrSql = "SELECT * FROM tbl_payslip WHERE employee_id = " & id & " AND cutoff_id = " & cutoff_id
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        If dtareader.HasRows Then
            dtareader.Read()
            'payslip_id = dtareader("payslip_id").ToString
            'edit/update database
            StrSql = "UPDATE tbl_payslip SET " _
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
            'save incentives & other dedctions
            save_incentives(cutoff_id, id)
            save_otherdeduct(cutoff_id, id)
        Else
            'saved new payslip
            StrSql = "INSERT INTO tbl_payslip VALUES(0,'" & id & "'," & cutoff_id & "," _
                    & CDbl(tb_income.Text) & "," & CDbl(tb_regularot.Text) & "," _
                    & CDbl(tb_holidayot.Text) & "," & CDbl(tb_totalot.Text) & "," & CDbl(tb_allowance.Text) & "," _
                    & totalBenefits & "," & CDbl(tb_late.Text) & "," & CDbl(tb_undertime.Text) & "," _
                    & CDbl(tb_tax.Text) & "," & CDbl(tb_sss.Text) & "," & CDbl(tb_phic.Text) & "," _
                    & CDbl(tb_hdmf.Text) & "," & tb_grossincome.Text & "," & tb_netincome.Text & ")"
            QryReadP()
            cmd.ExecuteNonQuery()
            payslip_id = cmd.LastInsertedId.ToString()
            'save incentives & other deductions
            save_incentives(cutoff_id, id)
            save_otherdeduct(cutoff_id, id)
            'save/check loan payments
        End If

        MessageBox.Show("Payslip Saved!")
        cmd.Dispose()
        'load payslip for the current cutoff
        getPayslip(current_cutoff)
        Close_Connect()
    End Sub

    'automatic compute net pay on enter
    Private Sub tb_allowance_KeyUp(sender As System.Object, e As System.Windows.Forms.KeyEventArgs) Handles tb_allowance.KeyUp, tb_tax.KeyUp, tb_sss.KeyUp, tb_phic.KeyUp, tb_hdmf.KeyUp, tb_loans.KeyUp, tb_netpaywithtax.KeyUp, tb_insurance.KeyUp
        If e.KeyCode = Keys.Enter Then
            'MsgBox("enter key pressd ")
            computeTotal()
        End If
    End Sub
    'nnumbers only input 
    Private Sub tb_allowance_KeyPress(sender As System.Object, e As System.Windows.Forms.KeyPressEventArgs) Handles tb_tax.KeyPress, tb_sss.KeyPress, tb_phic.KeyPress, tb_hdmf.KeyPress, tb_allowance.KeyPress, tb_netpaywithtax.KeyPress
        If Not Char.IsNumber(e.KeyChar) AndAlso Not Char.IsControl(e.KeyChar) AndAlso Not e.KeyChar = "." Then
            e.Handled = True
        End If
    End Sub

    'LOANS
    Private Sub BindingNavigatorAddNewItem_Click(sender As System.Object, e As System.EventArgs) Handles tsb_loanadd.Click
        Using frmLoans As New frmLoans(id, "")
            frmLoans.ShowDialog()
        End Using
    End Sub
    Private Sub ToolStripButton1_Click(sender As System.Object, e As System.EventArgs) Handles tsb_loanedit.Click
        Dim a = dgv_emploans.CurrentRow.Cells(0).Value.ToString()
        Using frmLoans As New frmLoans(id, a)
            frmLoans.ShowDialog()
        End Using
    End Sub

    'add timesheet
    Private Sub btn_addtimesheet_Click(sender As System.Object, e As System.EventArgs) Handles btn_addtimesheet.Click
        Using timesheet As New frmEditTimesheet("final", tb_biometricid.Text, id)
            timesheet.ShowDialog()
        End Using
    End Sub
    'edit timesheet
    Private Sub dgv_emptimesheet_CellDoubleClick(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_emptimesheet.CellDoubleClick
        If app_mode = "alone" Then
            Dim LogDate = DateTime.Parse(dgv_emptimesheet.CurrentRow.Cells(1).Value.ToString).ToString("MM/dd/yyyy")
            Dim Time_in = If(dgv_emptimesheet.CurrentRow.Cells(3).Value.ToString <> "-", DateTime.Parse(dgv_emptimesheet.CurrentRow.Cells(3).Value.ToString).ToString("hh:mm tt"), Nothing)
            Dim Time_out = If(dgv_emptimesheet.CurrentRow.Cells(4).Value.ToString <> "-", DateTime.Parse(dgv_emptimesheet.CurrentRow.Cells(4).Value.ToString).ToString("hh:mm tt"), Nothing)
            'MessageBox.Show(tb_biometricid.Text & " " & id & " " & LogDate & " " & Time_in & " " & Time_out)
            Using timesheet As New frmEditTimesheet("final", tb_biometricid.Text, id, LogDate, Time_in, Time_out)
                timesheet.ShowDialog()
                loadtimesheetsp(dtp_timesheetmonth.Value.ToString("yyyy-MM-dd"), dtp_timesheetmonth2.Value.ToString("yyyy-MM-dd"))
            End Using
            tb_regularot.Text = totalOT(id)(0)
            tb_holidayot.Text = totalOT(id)(1)
            totalTimesheetDeduct()
            tb_late.Text = ComputeLates(tb_biometricid.Text, id)
            tb_loans.Text = computeloans(id)
            tb_hdmf.Text = computeHDMF(tb_monthlysalary.Text)
            tb_phic.Text = computePhilhealth(tb_monthlysalary.Text)(2)
            tb_sss.Text = computeSSS(tb_monthlysalary.Text)(2)
            tb_allowance.Text = computeAllowance(id)
            computeTotal()
        End If
    End Sub

    

End Class