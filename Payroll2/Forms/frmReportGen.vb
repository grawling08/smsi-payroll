Imports Microsoft.Reporting.WinForms

Public Class frmReportGen
    Private rep_num As Integer
    Public Sub New(ByVal rep_num As Integer)
        MyBase.New()
        Me.rep_num = rep_num
        InitializeComponent()
    End Sub
    'REPORT NUMBER:
    '1 - payroll register 
    '2 - employee pay inquiry
    '3 - paid leaves
    '4 - paid overtime
    Private Sub frmReportGen_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        ReportViewer1.RefreshReport()
        'get list of company, employees, cutoff
        LoadCompanyList()
        LoadEmpID()
        LoadCutoffList()
        Select Case rep_num
            Case 1
                'payroll register
                Me.Text = "Generate Reports - Payroll Register"
                Label1.Text = "Payroll Register"
                cb_selemployee.Visible = False
                Label2.Visible = False
            Case 2
                'employeee pay inquiry
                Label1.Text = "Employee Pay Inquiry"
                Me.Text = "Generate Reports - Employee Pay Inquiry"
            Case 3
                'paid leaves
                Label1.Text = "Paid Leaves"
                Me.Text = "Generate Reports - Paid Leaves"
            Case 4
                'paid overtime
                Label1.Text = "Paid Overtime"
                Me.Text = "Generate Reports - Paid Overtime"
        End Select
        Me.ReportViewer1.RefreshReport()
    End Sub

    Sub LoadCompanyList()
        getCompanyList()
        cb_selcompany.Items.Clear()
        If dt.Rows.Count > 0 Then
            Dim i = 0
            While i < dt.Rows.Count
                If i = 0 Then
                    cb_selcompany.Items.Insert(i, " ")
                End If
                cb_selcompany.Items.Insert(i, dt.Rows(i).Item(1))
                i += 1
            End While
        End If
    End Sub

    Sub LoadEmpID(Optional ByVal company As String = "")
        getEmpIDList(company)
        cb_selemployee.Items.Clear()
        If dt.Rows.Count > 0 Then
            Dim j = 0
            While j < dt.Rows.Count
                If j = 0 Then
                    cb_selemployee.Items.Insert(j, " ")
                End If
                cb_selemployee.Items.Insert(j, dt.Rows(j).Item(1) & "-" & dt.Rows(j).Item(0))
                j += 1
            End While
        End If
    End Sub

    Sub LoadCutoffList()
        GetCutoff()
        cb_selcutoff.Items.Clear()
        If dt.Rows.Count > 0 Then
            Dim j = 0
            While j < dt.Rows.Count
                If j = 0 Then
                    cb_selcutoff.Items.Insert(j, " ")
                End If
                cb_selcutoff.Items.Insert(j, dt.Rows(j).Item(1))
                j += 1
            End While
        End If
    End Sub

    Private Sub Button1_Click(sender As System.Object, e As System.EventArgs) Handles Button1.Click
        Select Case rep_num
            Case 1
                'payroll register
                GetPayrollBatch(cb_selcutoff.Text, cb_selcompany.Text)
                ReportViewer1.ProcessingMode = ProcessingMode.Local
                ReportViewer1.LocalReport.ReportPath = Application.StartupPath & "\Reports\Report1.rdlc"
                ReportViewer1.LocalReport.DataSources.Clear()
                ReportViewer1.LocalReport.DataSources.Add(New Microsoft.Reporting.WinForms.ReportDataSource("DataSet1", ds.Tables("pay")))
                ReportViewer1.DocumentMapCollapsed = True
                ReportViewer1.RefreshReport()
            Case 2
                'employeee pay inquiry
                If cb_selemployee.Text <> "" Then
                    Dim arr() As String
                    arr = cb_selemployee.Text.Split("-")
                    GetEmpPayInquiry(cb_selcutoff.Text, arr(1))
                    MessageBox.Show(arr(1))
                Else
                    MessageBox.Show("Select an Employee.")
                    cb_selemployee.Focus()
                End If
            Case 3
                'paid leaves
                GetPaidLeave(cb_selcompany.Text)
                ReportViewer1.ProcessingMode = ProcessingMode.Local
                ReportViewer1.LocalReport.ReportPath = Application.StartupPath & "\Reports\rptLeavePay.rdlc"
                ReportViewer1.LocalReport.DataSources.Clear()
                ReportViewer1.LocalReport.DataSources.Add(New Microsoft.Reporting.WinForms.ReportDataSource("DataSet1", ds.Tables("paid_leave")))
                ReportViewer1.DocumentMapCollapsed = True
                ReportViewer1.RefreshReport()
            Case 4
                'paid overtime
                GetPaidOvertime(cb_selcompany.Text)
                ReportViewer1.ProcessingMode = ProcessingMode.Local
                ReportViewer1.LocalReport.ReportPath = Application.StartupPath & "\Reports\rptPaidOvertime.rdlc"
                ReportViewer1.LocalReport.DataSources.Clear()
                ReportViewer1.LocalReport.DataSources.Add(New Microsoft.Reporting.WinForms.ReportDataSource("DataSet1", ds.Tables("paid_overtime")))
                ReportViewer1.DocumentMapCollapsed = True
                ReportViewer1.RefreshReport()
        End Select

    End Sub

    Private Sub cb_selcompany_SelectedValueChanged(sender As System.Object, e As System.EventArgs) Handles cb_selcompany.SelectedValueChanged
        LoadEmpID(cb_selcompany.Text)
    End Sub
End Class