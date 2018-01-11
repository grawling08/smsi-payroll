Imports MySql.Data.MySqlClient
Imports System.Text.RegularExpressions

Public Class frmEmpDetails
    Private id, emp_fullname, employee_id, employmentStatus, taxcode As String
    Private isExcluded As Boolean

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
            monthlysalary = If(String.IsNullOrEmpty(dtareader("basic_salary").ToString), 0, dtareader("basic_salary").ToString)
            tb_employmentstatus.Text = dtareader("employment_status").ToString
            employmentStatus = dtareader("employment_status").ToString
            taxcode = If(String.IsNullOrEmpty(dtareader("tax_status").ToString), 0, dtareader("tax_status").ToString)
            tb_sssID.Text = dtareader("sss_id").ToString
            tb_hdmfID.Text = dtareader("hdmf_id").ToString
            tb_phicID.Text = dtareader("phic_id").ToString
            lbl_shift.Text = dtareader("shiftgroup").ToString
            isExcluded = If(dtareader("isExcluded").ToString = "1", True, False)
        End If

        chkbox_excluded.Checked = isExcluded

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
        dtp_timesheetmonth.Value = prevcutoff_fromdate
        dtp_timesheetmonth.Format = DateTimePickerFormat.Custom
        dtp_timesheetmonth.CustomFormat = "MMMM dd, yyyy"
        dtp_timesheetmonth2.Value = prevcutoff_todate
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

        'load sp_payrollsummary
        StrSql = "SELECT * FROM tbl_payslip WHERE cutoff_id = '" & cutoff_id & "' AND employee_id = '" & id & "'"
        QryReadP()
        Dim chkPayslipRdr As MySqlDataReader = cmd.ExecuteReader
        If chkPayslipRdr.HasRows Then
            chkPayslipRdr.Read()
            'display data
            tb_income.Text = Math.Round((Double.Parse(monthlysalary) / num_occurence), 2)
            tb_late.Text = chkPayslipRdr("late_deduct").ToString
            tb_absents.Text = chkPayslipRdr("absent").ToString
            tb_undertime.Text = chkPayslipRdr("undertime_deduct").ToString
            tb_regularot.Text = chkPayslipRdr("regot_pay").ToString
            tb_holidayot.Text = chkPayslipRdr("holot_pay").ToString
            tb_sss.Text = chkPayslipRdr("sss").ToString
            tb_phic.Text = chkPayslipRdr("phic").ToString
            tb_hdmf.Text = chkPayslipRdr("hdmf").ToString
            tb_allowance.Text = chkPayslipRdr("allowances").ToString
            tb_loans.Text = chkPayslipRdr("loans").ToString
            tb_insurance.Text = chkPayslipRdr("insurance").ToString
        Else
            StrSql = "CALL `sp_paysummary`('" & current_company & "', '" & cutoff_id & "', '" & prevcutoff_id & "','" & id & "','empdetails')"
            QryReadP()
            Dim paysumreader As MySqlDataReader = cmd.ExecuteReader
            If paysumreader.HasRows Then
                paysumreader.Read()
                tb_income.Text = Math.Round((Double.Parse(monthlysalary) / num_occurence), 2)
                tb_late.Text = paysumreader("Late").ToString
                tb_absents.Text = paysumreader("Absent").ToString
                tb_undertime.Text = paysumreader("Undertime").ToString
                'tb_undertime.Text = Math.Round(ComputeUndertime(tb_biometricid.Text, id), 2)
                tb_regularot.Text = paysumreader("Regular OT").ToString
                tb_holidayot.Text = paysumreader("Holiday OT").ToString
                tb_sss.Text = paysumreader("SSS").ToString
                tb_phic.Text = paysumreader("PHIC").ToString
                tb_hdmf.Text = paysumreader("HDMF").ToString
                tb_allowance.Text = paysumreader("Allowances").ToString
                tb_loans.Text = paysumreader("Loans").ToString
                tb_insurance.Text = paysumreader("Insurance").ToString
            End If
        End If
        'get timesheet from hris
        loadtimesheetsp(prevcutoff_fromdate.ToString("yyyy-MM-dd"), prevcutoff_todate.ToString("yyyy-MM-dd"))
        'payroll computations
        computeWage(employmentStatus, monthlysalary)
        loadincentives(cutoff_id, id)
        loadotherdeduct(cutoff_id, id)
        tb_hdmf.Text = computeHDMF(monthlysalary)
        tb_phic.Text = computePhilhealth(monthlysalary)(2)
        tb_sss.Text = computeSSS(monthlysalary)(2)
        computeTotal()

        Label33.Text = daysPresent

        If app_mode = "alone" Then
            tsb_loanadd.Enabled = True
            tsb_loandelete.Enabled = True
            tsb_loanedit.Enabled = True
            btn_addtimesheet.Enabled = True
            btn_addtimesheet.Visible = True
            'tsb_addinsureance.Enabled = False
            'tsb_deleteinsurance.Enabled = False
            'tsb_editinsurance.Enabled = False
        End If
    End Sub

    Sub computeTotal()
        'If(String.Equals(tb_late.Text,'-'),0,tb_late.Text)

        tb_grosspay.Text = Double.Parse(tb_income.Text) - Double.Parse(If(String.Equals(tb_late.Text, "-"), 0, tb_late.Text)) - _
                           Double.Parse(If(String.Equals(tb_absents.Text, "-"), 0, tb_absents.Text)) - _
                           Double.Parse(If(String.Equals(tb_undertime.Text, "-"), 0, tb_undertime.Text)) + _
                           Double.Parse(If(String.Equals(tb_regularot.Text, "-"), 0, tb_regularot.Text)) + _
                           Double.Parse(If(String.Equals(tb_holidayot.Text, "-"), 0, tb_holidayot.Text))
        tb_taxableincome.Text = Double.Parse(tb_grosspay.Text) - Double.Parse(tb_sss.Text) - Double.Parse(tb_phic.Text) - Double.Parse(tb_hdmf.Text)
        tb_tax.Text = Math.Round(computeTax(Double.Parse(tb_taxableincome.Text)), 2)
        tb_netpaywithtax.Text = Double.Parse(tb_taxableincome.Text) - Double.Parse(tb_tax.Text)
        totalBenefits = 0
        If dgv_incentives.Rows.Count > 0 Then
            For Each row In dgv_incentives.Rows
                totalBenefits += Double.Parse(row.Cells(2).Value.ToString())
            Next
        End If
        otherdeduct = 0
        If dgv_otherdeduct.Rows.Count > 0 Then
            For Each row In dgv_otherdeduct.Rows
                otherdeduct += Double.Parse(row.Cells(2).Value.ToString())
            Next
        End If
        tb_totalbenefits.Text = Double.Parse(If(String.Equals(tb_allowance.Text, "-"), 0, tb_allowance.Text)) + totalBenefits
        tb_totaldeductions.Text = otherdeduct + Double.Parse(If(String.Equals(tb_loans.Text, "-"), 0, tb_loans.Text)) + Double.Parse(If(String.Equals(tb_insurance.Text, "-"), 0, tb_insurance.Text))
        tb_netincome.Text = Math.Round(Double.Parse(tb_netpaywithtax.Text) + Double.Parse(tb_totalbenefits.Text) - Double.Parse(tb_totaldeductions.Text), 2)
    End Sub

    Sub loadtimesheetsp(ByVal startdate As String, ByVal enddate As String)
        StrSql = "CALL sp_timesheet('" & startdate & "','" & enddate & "','" & tb_biometricid.Text & "','')"
        Console.Write(StrSql)
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
            i = i + 1
        End While
    End Sub
    'employee loans
    Public Sub GetEmployeeLoans(ByVal EmpID As String)
        StrSql = "SELECT loan_id, loan_type AS 'Loan', lendingCompany AS 'Lending Company', amount AS 'Amount', term AS 'Term', monthlyAmortization AS 'Monthly Amortization', startDate AS 'From', endDate AS 'To', remarks AS 'Remarks' " _
                    & "FROM tbl_loans WHERE employee_id = '" & EmpID & "' AND status = 'Unpaid' "
        QryReadP()
        ds = New DataSet()
        adpt.Fill(ds, "Loans")
        dgv_emploans.DataSource = ds.Tables(0)
        Dim col = dgv_emploans.Columns.Count
        For i As Integer = 0 To col
            dgv_emploans.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
            i = i + i
        Next
        'dgv_emploans.Columns(0).Visible = False
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
        dgv_insurance.Rows.Clear()
        dgv_insurance.Refresh()
        StrSql = "SELECT * FROM tbl_insurance WHERE id_employee = '" & id & "'"
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        If dtareader.HasRows Then
            While dtareader.Read()
                Dim row As String() = New String() {dtareader("insurance_id").ToString, dtareader("id_employee").ToString, dtareader("insurance_name").ToString, dtareader("amount").ToString}
                dgv_insurance.Rows.Add(row)
            End While
        End If
        Dim col = dgv_insurance.Columns.Count - 1
        For i As Integer = 0 To col
            dgv_insurance.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
            i = i + i
        Next
        dgv_insurance.Columns(0).Visible = False
        dgv_insurance.Columns(1).Visible = False
        Close_Connect()
    End Sub
    'add new insurance
    Private Sub tsb_addinsureance_Click(sender As System.Object, e As System.EventArgs) Handles tsb_addinsureance.Click
        Dim row As String() = New String() {"", If(String.IsNullOrWhiteSpace(id.ToString), 0, id), "Edit", "0"}
        dgv_insurance.Rows.Add(row)
    End Sub
    'after cell edit of insurance compute net pay
    Private Sub dgv_insurance_CellEndEdit(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_insurance.CellEndEdit
        loading.Show()
        computeTotal()
        'save to db
        save_insurance(id)
        'refresh dgv
        getPayslip(current_cutoff)
        loading.Close()
    End Sub
    'save insurance
    Sub save_insurance(ByVal id_employee As String)
        If dgv_insurance.Rows.Count > 0 Then
            'For Each row In dgv_incentives.CurrentRow
            If String.IsNullOrWhiteSpace(dgv_insurance.CurrentRow.Cells(0).Value.ToString()) Then
                StrSql2 = "INSERT INTO tbl_insurance VALUES(0,'" & id_employee & "','" & dgv_insurance.CurrentRow.Cells(2).Value.ToString() & "'," & dgv_insurance.CurrentRow.Cells(3).Value.ToString() & ")"
            Else
                StrSql = "SELECT * FROM tbl_insurance WHERE insurance_id = " & dgv_insurance.CurrentRow.Cells(0).Value.ToString()
                QryReadP()
                Dim insurancereader As MySqlDataReader = cmd.ExecuteReader
                If insurancereader.HasRows Then
                    StrSql2 = "UPDATE tbl_insurance SET insurance_name='" & dgv_insurance.CurrentRow.Cells(2).Value.ToString() & "', amount = " & dgv_insurance.CurrentRow.Cells(3).Value.ToString() & " WHERE insurance_id = " & dgv_insurance.CurrentRow.Cells(0).Value.ToString()
                Else
                    StrSql2 = "INSERT INTO tbl_insurance VALUES(0,'" & id_employee & "','" & dgv_insurance.CurrentRow.Cells(2).Value.ToString() & "'," & dgv_insurance.CurrentRow.Cells(3).Value.ToString() & ")"
                End If
            End If
            Connect_Sub("payroll")
            cmd2 = New MySqlCommand(StrSql2, conn2)
            cmd2.ExecuteNonQuery()
            'Next
        End If
    End Sub
    'delete insurance
    Private Sub tsb_deleteinsurance_Click(sender As System.Object, e As System.EventArgs) Handles tsb_deleteinsurance.Click
        Console.Write("delete" + vbCrLf)
        If dgv_insurance.Rows.Count > 0 Then
            If dgv_insurance.CurrentRow.Cells(0).Value.ToString <> "" Then
                StrSql = "DELETE FROM tbl_insurance WHERE insurance_id = " & dgv_insurance.CurrentRow.Cells(0).Value.ToString
                QryReadP()
                cmd.ExecuteNonQuery()
            End If
            dgv_insurance.Rows.Remove(dgv_insurance.SelectedRows(0))
            GetEmpInsurance(id)
            computeTotal()
            getPayslip(current_cutoff)
        Else
            MessageBox.Show("No data to delete.")
        End If
    End Sub

    'load incentives
    Private Sub loadincentives(ByVal cutoff_id As String, ByVal id_employee As String)
        dgv_incentives.Rows.Clear()
        dgv_incentives.Refresh()
        StrSql = "SELECT incentives_id, name as Name, amount as Amount FROM tbl_incentives WHERE cutoff_id = " & cutoff_id & " AND employee_id = " & id_employee
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        If dtareader.HasRows Then
            While dtareader.Read()
                Dim row As String() = New String() {dtareader("incentives_id").ToString, dtareader("Name").ToString, dtareader("Amount").ToString}
                dgv_incentives.Rows.Add(row)
            End While
        End If
        dgv_incentives.Columns(0).Visible = False
    End Sub
    'add new incentives
    Private Sub btn_addincentive_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_addincentive.Click
        Dim row As String() = New String() {"", "Edit", "0"}
        dgv_incentives.Rows.Add(row)
    End Sub
    'after cell edit of incentives compute net pay
    Private Sub dgv_incentives_CellEndEdit(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_incentives.CellEndEdit
        loading.Show()
        computeTotal()
        'save to db
        save_incentives(cutoff_id, id)
        'refresh dgv
        getPayslip(current_cutoff)
        loading.Close()
    End Sub
    'delete incentives
    Private Sub btn_delincentive_Click(sender As System.Object, e As System.EventArgs) Handles btn_delincentive.Click
        If dgv_incentives.Rows.Count > 0 Then
            StrSql = "DELETE FROM tbl_incentives WHERE incentives_id = " & dgv_incentives.CurrentRow.Cells(0).Value.ToString
            QryReadP()
            cmd.ExecuteNonQuery()
            dgv_incentives.Rows.Remove(dgv_incentives.SelectedRows(0))
            loadincentives(cutoff_id, id)
            computeTotal()
            getPayslip(current_cutoff)
        Else
            MessageBox.Show("No data to delete.")
        End If
    End Sub
    'save incentives
    Sub save_incentives(ByVal cutoff_id As String, ByVal id_employee As String)
        If dgv_incentives.Rows.Count > 0 Then
            'For Each row In dgv_incentives.CurrentRow
            If String.IsNullOrWhiteSpace(dgv_incentives.CurrentRow.Cells(0).Value.ToString()) Then
                StrSql2 = "INSERT INTO tbl_incentives VALUES(0,'" & cutoff_id & "','" & id_employee & "','" & dgv_incentives.CurrentRow.Cells(1).Value.ToString() & "'," & dgv_incentives.CurrentRow.Cells(2).Value.ToString() & ")"
            Else
                StrSql = "SELECT * FROM tbl_incentives WHERE incentives_id = " & dgv_incentives.CurrentRow.Cells(0).Value.ToString()
                QryReadP()
                Dim incentivesreader As MySqlDataReader = cmd.ExecuteReader
                If incentivesreader.HasRows Then
                    StrSql2 = "UPDATE tbl_incentives SET name='" & dgv_incentives.CurrentRow.Cells(1).Value.ToString() & "', amount = " & dgv_incentives.CurrentRow.Cells(2).Value.ToString() & " WHERE incentives_id = " & dgv_incentives.CurrentRow.Cells(0).Value.ToString()
                Else
                    StrSql2 = "INSERT INTO tbl_incentives VALUES(0,'" & cutoff_id & "','" & id_employee & "','" & dgv_incentives.CurrentRow.Cells(1).Value.ToString() & "'," & dgv_incentives.CurrentRow.Cells(2).Value.ToString() & ")"
                End If
            End If
            Connect_Sub("payroll")
            cmd2 = New MySqlCommand(StrSql2, conn2)
            cmd2.ExecuteNonQuery()
            'Next
        End If
        loadincentives(cutoff_id, id)
    End Sub

    'load other deductions
    Private Sub loadotherdeduct(ByVal cutoff_id As String, ByVal id_employee As String)
        'dgv_otherdeduct.Rows.Clear()
        dgv_otherdeduct.Refresh()
        StrSql = "SELECT deduct_id, name as Name, amount as Amount FROM tbl_otherdeductions WHERE cutoff_id = " & cutoff_id & " AND employee_id = " & id_employee
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        If dtareader.HasRows Then
            While dtareader.Read()
                Dim row As String() = New String() {dtareader("deduct_id").ToString, dtareader("Name").ToString, dtareader("Amount").ToString}
                dgv_otherdeduct.Rows.Add(row)
            End While
        End If
        'dgv_otherdeduct.Columns(0).Visible = False
    End Sub
    'add new other deductions
    Private Sub btn_adddeduct_Click(sender As System.Object, e As System.EventArgs) Handles btn_adddeduct.Click
        Dim row As String() = New String() {"", "Edit", "0"}
        dgv_otherdeduct.Rows.Add(row)
    End Sub
    'delete other deductions
    Private Sub btn_deldeduct_Click(sender As System.Object, e As System.EventArgs) Handles btn_deldeduct.Click
        If dgv_otherdeduct.Rows.Count > 0 Then
            StrSql = "SELECT deduct_id, name as Name, amount as Amount FROM tbl_otherdeductions WHERE deduct_id = '" & dgv_otherdeduct.CurrentRow.Cells(0).Value.ToString & "' AND employee_id = " & id
            QryReadP()
            Dim dtareader As MySqlDataReader = cmd.ExecuteReader
            If dtareader.HasRows Then
                StrSql = "DELETE FROM tbl_otherdeductions WHERE deduct_id = " & dgv_otherdeduct.CurrentRow.Cells(0).Value.ToString
                QryReadP()
                cmd.ExecuteNonQuery()
            End If
            dgv_otherdeduct.Rows.Remove(dgv_otherdeduct.SelectedRows(0))
            loadotherdeduct(cutoff_id, id)
            computeTotal()
            getPayslip(current_cutoff)
        Else
            MessageBox.Show("No data to delete.")
        End If
    End Sub
    'autocompute after cell edit
    Private Sub dgv_otherdeduct_CellEndEdit(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_otherdeduct.CellEndEdit
        loading.Show()
        computeTotal()
        'save to db
        save_otherdeduct(cutoff_id, id)
        'refresh dgv
        getPayslip(current_cutoff)
        loading.Close()
    End Sub
    'save other deductions
    Sub save_otherdeduct(ByVal cutoff_id As String, ByVal id_employee As String)
        If dgv_otherdeduct.Rows.Count > 0 Then
            'For Each row In dgv_otherdeduct.CurrentRow
            If String.IsNullOrWhiteSpace(dgv_otherdeduct.CurrentRow.Cells(0).Value.ToString()) Then
                StrSql2 = "INSERT INTO tbl_otherdeductions VALUES(0,'" & cutoff_id & "','" & id_employee & "','" & dgv_otherdeduct.CurrentRow.Cells(1).Value.ToString() & "'," & dgv_otherdeduct.CurrentRow.Cells(2).Value.ToString() & ")"
            Else
                StrSql = "SELECT * FROM tbl_otherdeductions WHERE deduct_id = " & dgv_otherdeduct.CurrentRow.Cells(0).Value.ToString()
                QryReadP()
                Dim incentivesreader As MySqlDataReader = cmd.ExecuteReader
                If incentivesreader.HasRows Then
                    StrSql2 = "UPDATE tbl_otherdeductions SET name='" & dgv_otherdeduct.CurrentRow.Cells(1).Value.ToString() & "', amount = " & dgv_otherdeduct.CurrentRow.Cells(2).Value.ToString() & " WHERE deduct_id = " & dgv_otherdeduct.CurrentRow.Cells(0).Value.ToString()
                Else
                    StrSql2 = "INSERT INTO tbl_otherdeductions VALUES(0,'" & cutoff_id & "','" & id_employee & "','" & dgv_otherdeduct.CurrentRow.Cells(1).Value.ToString() & "'," & dgv_otherdeduct.CurrentRow.Cells(2).Value.ToString() & ")"
                End If
            End If
            Connect_Sub("payroll")
            cmd2 = New MySqlCommand(StrSql2, conn2)
            cmd2.ExecuteNonQuery()
            'Next
        End If
        loadotherdeduct(cutoff_id, id)
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
                    & "income =" & CDbl(tb_income.Text) & "," _
                    & "regot_pay =" & CDbl(tb_regularot.Text) & "," _
                    & "holot_pay =" & CDbl(tb_holidayot.Text) & ", " _
                    & "ot_pay =" & CDbl(tb_regularot.Text) + CDbl(tb_holidayot.Text) & "," _
                    & "allowances =" & CDbl(tb_allowance.Text) & "," _
                    & "incentives =" & totalBenefits & "," _
                    & "late_deduct =" & CDbl(tb_late.Text) & "," _
                    & "absent =" & CDbl(tb_absents.Text) & "," _
                    & "undertime_deduct =" & CDbl(tb_undertime.Text) & "," _
                    & "sss =" & CDbl(tb_sss.Text) & "," _
                    & "phic =" & CDbl(tb_phic.Text) & "," _
                    & "hdmf =" & CDbl(tb_hdmf.Text) & "," _
                    & "gross_income =" & tb_taxableincome.Text & "," _
                    & "loans =" & CDbl(tb_loans.Text) & "," _
                    & "otherdeduct =" & CDbl(otherdeduct) & "," _
                    & "insurance =" & CDbl(tb_insurance.Text) & "," _
                    & "tax =" & CDbl(tb_tax.Text) & "," _
                    & "net_income =" & tb_netincome.Text _
                    & " WHERE payslip_id = '" & dtareader("payslip_id").ToString & "'"
            QryReadP()
            cmd.ExecuteNonQuery()
            'save incentives & other deductions to HRIS database only
            save_incentives(cutoff_id, id)
            save_otherdeduct(cutoff_id, id)
        Else
            'saved new payslip
            StrSql = "INSERT INTO tbl_payslip VALUES(0,'" & id & "'," & cutoff_id & "," _
                    & CDbl(tb_income.Text) & "," & CDbl(tb_regularot.Text) & "," _
                    & CDbl(tb_holidayot.Text) & "," & CDbl(tb_regularot.Text) + CDbl(tb_holidayot.Text) & "," & CDbl(tb_allowance.Text) & "," _
                    & totalBenefits & "," & CDbl(tb_late.Text) & "," & CDbl(tb_absents.Text) & "," & CDbl(tb_undertime.Text) & "," _
                    & CDbl(tb_sss.Text) & "," & CDbl(tb_phic.Text) & "," & CDbl(tb_hdmf.Text) & "," _
                    & CDbl(tb_taxableincome.Text) & "," & tb_loans.Text & "," & otherdeduct & "," & tb_insurance.Text & "," & tb_tax.Text & "," & tb_netincome.Text & ")"
            QryReadP()
            cmd.ExecuteNonQuery()
            payslip_id = cmd.LastInsertedId.ToString()
            'save incentives & other deductions to HRIS database only
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
    Private Sub tb_allowance_KeyUp(sender As System.Object, e As System.Windows.Forms.KeyEventArgs) Handles tb_tax.KeyUp, tb_sss.KeyUp, tb_phic.KeyUp, tb_hdmf.KeyUp, tb_netpaywithtax.KeyUp
        If e.KeyCode = Keys.Enter Then
            'MsgBox("enter key pressd ")
            computeTotal()
        End If
    End Sub
    'nnumbers only input 
    Private Sub tb_allowance_KeyPress(sender As System.Object, e As System.Windows.Forms.KeyPressEventArgs) Handles tb_tax.KeyPress, tb_sss.KeyPress, tb_phic.KeyPress, tb_hdmf.KeyPress, tb_netpaywithtax.KeyPress
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
            tb_absents.Text = totalTimesheetDeduct(id, tb_biometricid.Text)(0)
            Label34.Text = totalTimesheetDeduct(id, tb_biometricid.Text)(1) ' hidden count attendance
            tb_late.Text = ComputeLates(tb_biometricid.Text, id)
            tb_loans.Text = computeloans(id)
            tb_hdmf.Text = computeHDMF(monthlysalary)
            tb_phic.Text = computePhilhealth(monthlysalary)(2)
            tb_sss.Text = computeSSS(monthlysalary)(2)
            tb_allowance.Text = computeAllowance(id)
            tb_insurance.Text = computeInsurance(id)
            computeTotal()
        End If
    End Sub


    Private Sub dgv_otherdeduct_MouseDown(sender As System.Object, e As System.Windows.Forms.MouseEventArgs) Handles dgv_otherdeduct.MouseDown
        If e.Button = Windows.Forms.MouseButtons.Right Then
            Dim ht As DataGridView.HitTestInfo
            ht = Me.dgv_otherdeduct.HitTest(e.X, e.Y)
            If ht.Type = DataGridViewHitTestType.Cell Then
                dgv_otherdeduct.ContextMenuStrip = cms_deduct
            End If
        End If
    End Sub

    Private Sub AddOtherDeductionToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles AddOtherDeductionToolStripMenuItem.Click
        Dim row As String() = New String() {"Edit", "0"}
        dgv_otherdeduct.Rows.Add(row)
    End Sub

    Private Sub DeleteToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles DeleteToolStripMenuItem.Click
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

    Private Sub chkbox_excluded_MouseClick(sender As System.Object, e As System.Windows.Forms.MouseEventArgs) Handles chkbox_excluded.MouseDown
        Dim msgCaption As String = ""
        Dim msgContent As String = ""
        Dim a As Boolean = False
        If Not chkbox_excluded.Checked Then
            msgCaption = "Exclude this employee from Payroll?"
            msgContent = "Exclude from Payroll"
            a = True
        Else
            msgCaption = "Return this employee to Payroll?"
            msgContent = "Return to from Payroll"
            a = False
        End If
        Dim result = MessageBox.Show(msgCaption, msgContent, MessageBoxButtons.OKCancel)
        If result.ToString = "OK" Then
            StrSql = "UPDATE tbl_employee SET isExcluded = " & a & " WHERE id_employee =" & id
            QryReadP()
            cmd.ExecuteNonQuery()
            chkbox_excluded.Checked = a
        End If
    End Sub

End Class