﻿<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmMain
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmMain))
        Dim DataGridViewCellStyle1 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle2 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle3 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle4 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle5 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle6 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Me.MainMenu = New System.Windows.Forms.MenuStrip()
        Me.PayrollToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.TimesheetToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.UploadTimsheetToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ViewRawTimesheetToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.LeaveConvertToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStripSeparator5 = New System.Windows.Forms.ToolStripSeparator()
        Me.EmployeeToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ShiftsToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SettingsToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStripSeparator3 = New System.Windows.Forms.ToolStripSeparator()
        Me.ChangeCutoffCompanyToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.LogoutToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ReportsToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.PayrollJournalToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.EmployeePayToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.LeavesToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStripMenuItem2 = New System.Windows.Forms.ToolStripMenuItem()
        Me.PaidOvertimesToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.LoansToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CrystalReportSampleToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.HelpToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.HelpToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStripSeparator4 = New System.Windows.Forms.ToolStripSeparator()
        Me.AboutToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsb_savepayroll = New System.Windows.Forms.Panel()
        Me.TabControl3 = New System.Windows.Forms.TabControl()
        Me.TabPage3 = New System.Windows.Forms.TabPage()
        Me.lnk_setcutoff = New System.Windows.Forms.LinkLabel()
        Me.cb_cutoff = New System.Windows.Forms.ComboBox()
        Me.lnk_addcutoff = New System.Windows.Forms.LinkLabel()
        Me.lbl_currentcompany = New System.Windows.Forms.Label()
        Me.Panel2 = New System.Windows.Forms.Panel()
        Me.bindingnavigator = New System.Windows.Forms.BindingNavigator(Me.components)
        Me.ToolStripLabel2 = New System.Windows.Forms.ToolStripLabel()
        Me.tsbtn_cutoff = New System.Windows.Forms.ToolStripTextBox()
        Me.btn_loadpayroll = New System.Windows.Forms.ToolStripButton()
        Me.btn_resetpayroll = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripButton1 = New System.Windows.Forms.ToolStripButton()
        Me.dgv_payroll = New System.Windows.Forms.DataGridView()
        Me.TabControl1 = New System.Windows.Forms.TabControl()
        Me.TabPage1 = New System.Windows.Forms.TabPage()
        Me.BindingNavigator1 = New System.Windows.Forms.BindingNavigator(Me.components)
        Me.ToolStripLabel1 = New System.Windows.Forms.ToolStripLabel()
        Me.tstb_searchdgv = New System.Windows.Forms.ToolStripTextBox()
        Me.ToolStripSeparator1 = New System.Windows.Forms.ToolStripSeparator()
        Me.tsbtn_refreshdgv = New System.Windows.Forms.ToolStripButton()
        Me.dgv_emplist = New System.Windows.Forms.DataGridView()
        Me.ToolStripSeparator2 = New System.Windows.Forms.ToolStripSeparator()
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.ToolStripStatusLabel1 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.label_serverstatus = New System.Windows.Forms.ToolStripStatusLabel()
        Me.ToolStripStatusLabel2 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.label_loggedinas = New System.Windows.Forms.ToolStripStatusLabel()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.cb_companylist = New System.Windows.Forms.ComboBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.MainMenu.SuspendLayout()
        Me.tsb_savepayroll.SuspendLayout()
        Me.TabControl3.SuspendLayout()
        Me.TabPage3.SuspendLayout()
        Me.Panel2.SuspendLayout()
        CType(Me.bindingnavigator, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.bindingnavigator.SuspendLayout()
        CType(Me.dgv_payroll, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabControl1.SuspendLayout()
        Me.TabPage1.SuspendLayout()
        CType(Me.BindingNavigator1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.BindingNavigator1.SuspendLayout()
        CType(Me.dgv_emplist, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.StatusStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'MainMenu
        '
        Me.MainMenu.BackColor = System.Drawing.SystemColors.ActiveCaption
        Me.MainMenu.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.PayrollToolStripMenuItem, Me.ReportsToolStripMenuItem, Me.HelpToolStripMenuItem})
        Me.MainMenu.Location = New System.Drawing.Point(0, 0)
        Me.MainMenu.Name = "MainMenu"
        Me.MainMenu.Size = New System.Drawing.Size(1274, 24)
        Me.MainMenu.TabIndex = 0
        Me.MainMenu.Text = "MenuStrip1"
        '
        'PayrollToolStripMenuItem
        '
        Me.PayrollToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.TimesheetToolStripMenuItem, Me.LeaveConvertToolStripMenuItem, Me.ToolStripSeparator5, Me.EmployeeToolStripMenuItem, Me.ShiftsToolStripMenuItem, Me.SettingsToolStripMenuItem, Me.ToolStripSeparator3, Me.ChangeCutoffCompanyToolStripMenuItem, Me.LogoutToolStripMenuItem})
        Me.PayrollToolStripMenuItem.Name = "PayrollToolStripMenuItem"
        Me.PayrollToolStripMenuItem.Size = New System.Drawing.Size(55, 20)
        Me.PayrollToolStripMenuItem.Text = "Payroll"
        '
        'TimesheetToolStripMenuItem
        '
        Me.TimesheetToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.UploadTimsheetToolStripMenuItem, Me.ViewRawTimesheetToolStripMenuItem})
        Me.TimesheetToolStripMenuItem.Name = "TimesheetToolStripMenuItem"
        Me.TimesheetToolStripMenuItem.Size = New System.Drawing.Size(230, 22)
        Me.TimesheetToolStripMenuItem.Text = "Timesheet"
        '
        'UploadTimsheetToolStripMenuItem
        '
        Me.UploadTimsheetToolStripMenuItem.Name = "UploadTimsheetToolStripMenuItem"
        Me.UploadTimsheetToolStripMenuItem.Size = New System.Drawing.Size(182, 22)
        Me.UploadTimsheetToolStripMenuItem.Text = "Upload Timesheet"
        '
        'ViewRawTimesheetToolStripMenuItem
        '
        Me.ViewRawTimesheetToolStripMenuItem.Name = "ViewRawTimesheetToolStripMenuItem"
        Me.ViewRawTimesheetToolStripMenuItem.Size = New System.Drawing.Size(182, 22)
        Me.ViewRawTimesheetToolStripMenuItem.Text = "View Raw Timesheet"
        '
        'LeaveConvertToolStripMenuItem
        '
        Me.LeaveConvertToolStripMenuItem.Name = "LeaveConvertToolStripMenuItem"
        Me.LeaveConvertToolStripMenuItem.Size = New System.Drawing.Size(230, 22)
        Me.LeaveConvertToolStripMenuItem.Text = "Leave Conversion..."
        Me.LeaveConvertToolStripMenuItem.Visible = False
        '
        'ToolStripSeparator5
        '
        Me.ToolStripSeparator5.Name = "ToolStripSeparator5"
        Me.ToolStripSeparator5.Size = New System.Drawing.Size(227, 6)
        '
        'EmployeeToolStripMenuItem
        '
        Me.EmployeeToolStripMenuItem.Name = "EmployeeToolStripMenuItem"
        Me.EmployeeToolStripMenuItem.Size = New System.Drawing.Size(230, 22)
        Me.EmployeeToolStripMenuItem.Text = "Employees"
        Me.EmployeeToolStripMenuItem.Visible = False
        '
        'ShiftsToolStripMenuItem
        '
        Me.ShiftsToolStripMenuItem.Name = "ShiftsToolStripMenuItem"
        Me.ShiftsToolStripMenuItem.Size = New System.Drawing.Size(230, 22)
        Me.ShiftsToolStripMenuItem.Text = "Shifts"
        '
        'SettingsToolStripMenuItem
        '
        Me.SettingsToolStripMenuItem.Name = "SettingsToolStripMenuItem"
        Me.SettingsToolStripMenuItem.Size = New System.Drawing.Size(230, 22)
        Me.SettingsToolStripMenuItem.Text = "Settings"
        '
        'ToolStripSeparator3
        '
        Me.ToolStripSeparator3.Name = "ToolStripSeparator3"
        Me.ToolStripSeparator3.Size = New System.Drawing.Size(227, 6)
        '
        'ChangeCutoffCompanyToolStripMenuItem
        '
        Me.ChangeCutoffCompanyToolStripMenuItem.Name = "ChangeCutoffCompanyToolStripMenuItem"
        Me.ChangeCutoffCompanyToolStripMenuItem.Size = New System.Drawing.Size(230, 22)
        Me.ChangeCutoffCompanyToolStripMenuItem.Text = "Change Cutoff and Company"
        '
        'LogoutToolStripMenuItem
        '
        Me.LogoutToolStripMenuItem.Name = "LogoutToolStripMenuItem"
        Me.LogoutToolStripMenuItem.Size = New System.Drawing.Size(230, 22)
        Me.LogoutToolStripMenuItem.Text = "Logout"
        '
        'ReportsToolStripMenuItem
        '
        Me.ReportsToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.PayrollJournalToolStripMenuItem, Me.CrystalReportSampleToolStripMenuItem})
        Me.ReportsToolStripMenuItem.Name = "ReportsToolStripMenuItem"
        Me.ReportsToolStripMenuItem.Size = New System.Drawing.Size(59, 20)
        Me.ReportsToolStripMenuItem.Text = "Reports"
        '
        'PayrollJournalToolStripMenuItem
        '
        Me.PayrollJournalToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.EmployeePayToolStripMenuItem, Me.LeavesToolStripMenuItem, Me.ToolStripMenuItem2, Me.PaidOvertimesToolStripMenuItem, Me.LoansToolStripMenuItem})
        Me.PayrollJournalToolStripMenuItem.Name = "PayrollJournalToolStripMenuItem"
        Me.PayrollJournalToolStripMenuItem.Size = New System.Drawing.Size(190, 22)
        Me.PayrollJournalToolStripMenuItem.Text = "Generate Reports..."
        '
        'EmployeePayToolStripMenuItem
        '
        Me.EmployeePayToolStripMenuItem.Name = "EmployeePayToolStripMenuItem"
        Me.EmployeePayToolStripMenuItem.Size = New System.Drawing.Size(188, 22)
        Me.EmployeePayToolStripMenuItem.Text = "Payroll Register"
        '
        'LeavesToolStripMenuItem
        '
        Me.LeavesToolStripMenuItem.Name = "LeavesToolStripMenuItem"
        Me.LeavesToolStripMenuItem.Size = New System.Drawing.Size(188, 22)
        Me.LeavesToolStripMenuItem.Text = "Employee Pay Inquiry"
        '
        'ToolStripMenuItem2
        '
        Me.ToolStripMenuItem2.Name = "ToolStripMenuItem2"
        Me.ToolStripMenuItem2.Size = New System.Drawing.Size(188, 22)
        Me.ToolStripMenuItem2.Text = "Paid Leaves"
        '
        'PaidOvertimesToolStripMenuItem
        '
        Me.PaidOvertimesToolStripMenuItem.Name = "PaidOvertimesToolStripMenuItem"
        Me.PaidOvertimesToolStripMenuItem.Size = New System.Drawing.Size(188, 22)
        Me.PaidOvertimesToolStripMenuItem.Text = "Paid Overtimes"
        '
        'LoansToolStripMenuItem
        '
        Me.LoansToolStripMenuItem.Name = "LoansToolStripMenuItem"
        Me.LoansToolStripMenuItem.Size = New System.Drawing.Size(188, 22)
        Me.LoansToolStripMenuItem.Text = "Loans"
        '
        'CrystalReportSampleToolStripMenuItem
        '
        Me.CrystalReportSampleToolStripMenuItem.Name = "CrystalReportSampleToolStripMenuItem"
        Me.CrystalReportSampleToolStripMenuItem.Size = New System.Drawing.Size(190, 22)
        Me.CrystalReportSampleToolStripMenuItem.Text = "Crystal Report Sample"
        '
        'HelpToolStripMenuItem
        '
        Me.HelpToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.HelpToolStripMenuItem1, Me.ToolStripSeparator4, Me.AboutToolStripMenuItem})
        Me.HelpToolStripMenuItem.Name = "HelpToolStripMenuItem"
        Me.HelpToolStripMenuItem.Size = New System.Drawing.Size(44, 20)
        Me.HelpToolStripMenuItem.Text = "Help"
        '
        'HelpToolStripMenuItem1
        '
        Me.HelpToolStripMenuItem1.Name = "HelpToolStripMenuItem1"
        Me.HelpToolStripMenuItem1.Size = New System.Drawing.Size(107, 22)
        Me.HelpToolStripMenuItem1.Text = "Help"
        '
        'ToolStripSeparator4
        '
        Me.ToolStripSeparator4.Name = "ToolStripSeparator4"
        Me.ToolStripSeparator4.Size = New System.Drawing.Size(104, 6)
        '
        'AboutToolStripMenuItem
        '
        Me.AboutToolStripMenuItem.Name = "AboutToolStripMenuItem"
        Me.AboutToolStripMenuItem.Size = New System.Drawing.Size(107, 22)
        Me.AboutToolStripMenuItem.Text = "About"
        '
        'tsb_savepayroll
        '
        Me.tsb_savepayroll.AutoScroll = True
        Me.tsb_savepayroll.Controls.Add(Me.TabControl3)
        Me.tsb_savepayroll.Controls.Add(Me.lbl_currentcompany)
        Me.tsb_savepayroll.Controls.Add(Me.Panel2)
        Me.tsb_savepayroll.Controls.Add(Me.TabControl1)
        Me.tsb_savepayroll.Dock = System.Windows.Forms.DockStyle.Fill
        Me.tsb_savepayroll.Location = New System.Drawing.Point(0, 24)
        Me.tsb_savepayroll.Name = "tsb_savepayroll"
        Me.tsb_savepayroll.Size = New System.Drawing.Size(1274, 668)
        Me.tsb_savepayroll.TabIndex = 1
        '
        'TabControl3
        '
        Me.TabControl3.Controls.Add(Me.TabPage3)
        Me.TabControl3.Location = New System.Drawing.Point(3, 6)
        Me.TabControl3.Name = "TabControl3"
        Me.TabControl3.SelectedIndex = 0
        Me.TabControl3.Size = New System.Drawing.Size(295, 128)
        Me.TabControl3.TabIndex = 11
        '
        'TabPage3
        '
        Me.TabPage3.Controls.Add(Me.cb_companylist)
        Me.TabPage3.Controls.Add(Me.Label2)
        Me.TabPage3.Controls.Add(Me.Label1)
        Me.TabPage3.Controls.Add(Me.lnk_setcutoff)
        Me.TabPage3.Controls.Add(Me.cb_cutoff)
        Me.TabPage3.Controls.Add(Me.lnk_addcutoff)
        Me.TabPage3.Location = New System.Drawing.Point(4, 22)
        Me.TabPage3.Name = "TabPage3"
        Me.TabPage3.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage3.Size = New System.Drawing.Size(287, 102)
        Me.TabPage3.TabIndex = 0
        Me.TabPage3.Text = "Company Cutoff"
        Me.TabPage3.UseVisualStyleBackColor = True
        '
        'lnk_setcutoff
        '
        Me.lnk_setcutoff.AutoSize = True
        Me.lnk_setcutoff.Location = New System.Drawing.Point(227, 84)
        Me.lnk_setcutoff.Name = "lnk_setcutoff"
        Me.lnk_setcutoff.Size = New System.Drawing.Size(54, 13)
        Me.lnk_setcutoff.TabIndex = 2
        Me.lnk_setcutoff.TabStop = True
        Me.lnk_setcutoff.Text = "Set Cutoff"
        '
        'cb_cutoff
        '
        Me.cb_cutoff.FormattingEnabled = True
        Me.cb_cutoff.Location = New System.Drawing.Point(3, 60)
        Me.cb_cutoff.Name = "cb_cutoff"
        Me.cb_cutoff.Size = New System.Drawing.Size(278, 21)
        Me.cb_cutoff.TabIndex = 3
        '
        'lnk_addcutoff
        '
        Me.lnk_addcutoff.AutoSize = True
        Me.lnk_addcutoff.Location = New System.Drawing.Point(3, 84)
        Me.lnk_addcutoff.Name = "lnk_addcutoff"
        Me.lnk_addcutoff.Size = New System.Drawing.Size(57, 13)
        Me.lnk_addcutoff.TabIndex = 1
        Me.lnk_addcutoff.TabStop = True
        Me.lnk_addcutoff.Text = "Add Cutoff"
        '
        'lbl_currentcompany
        '
        Me.lbl_currentcompany.AutoSize = True
        Me.lbl_currentcompany.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbl_currentcompany.Location = New System.Drawing.Point(303, 6)
        Me.lbl_currentcompany.Name = "lbl_currentcompany"
        Me.lbl_currentcompany.Size = New System.Drawing.Size(51, 15)
        Me.lbl_currentcompany.TabIndex = 10
        Me.lbl_currentcompany.Text = "Label1"
        '
        'Panel2
        '
        Me.Panel2.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Panel2.Controls.Add(Me.bindingnavigator)
        Me.Panel2.Controls.Add(Me.dgv_payroll)
        Me.Panel2.Location = New System.Drawing.Point(301, 25)
        Me.Panel2.Name = "Panel2"
        Me.Panel2.Size = New System.Drawing.Size(970, 618)
        Me.Panel2.TabIndex = 9
        '
        'bindingnavigator
        '
        Me.bindingnavigator.AddNewItem = Nothing
        Me.bindingnavigator.CountItem = Nothing
        Me.bindingnavigator.DeleteItem = Nothing
        Me.bindingnavigator.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden
        Me.bindingnavigator.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripLabel2, Me.tsbtn_cutoff, Me.btn_loadpayroll, Me.btn_resetpayroll, Me.ToolStripButton1})
        Me.bindingnavigator.Location = New System.Drawing.Point(0, 0)
        Me.bindingnavigator.MoveFirstItem = Nothing
        Me.bindingnavigator.MoveLastItem = Nothing
        Me.bindingnavigator.MoveNextItem = Nothing
        Me.bindingnavigator.MovePreviousItem = Nothing
        Me.bindingnavigator.Name = "bindingnavigator"
        Me.bindingnavigator.PositionItem = Nothing
        Me.bindingnavigator.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.bindingnavigator.Size = New System.Drawing.Size(970, 25)
        Me.bindingnavigator.TabIndex = 0
        Me.bindingnavigator.Text = "BindingNavigator2"
        '
        'ToolStripLabel2
        '
        Me.ToolStripLabel2.Name = "ToolStripLabel2"
        Me.ToolStripLabel2.Size = New System.Drawing.Size(46, 22)
        Me.ToolStripLabel2.Text = "Cut-off"
        '
        'tsbtn_cutoff
        '
        Me.tsbtn_cutoff.Name = "tsbtn_cutoff"
        Me.tsbtn_cutoff.Size = New System.Drawing.Size(200, 25)
        '
        'btn_loadpayroll
        '
        Me.btn_loadpayroll.Image = CType(resources.GetObject("btn_loadpayroll.Image"), System.Drawing.Image)
        Me.btn_loadpayroll.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.btn_loadpayroll.Name = "btn_loadpayroll"
        Me.btn_loadpayroll.Size = New System.Drawing.Size(53, 22)
        Me.btn_loadpayroll.Text = "Load"
        '
        'btn_resetpayroll
        '
        Me.btn_resetpayroll.Image = CType(resources.GetObject("btn_resetpayroll.Image"), System.Drawing.Image)
        Me.btn_resetpayroll.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.btn_resetpayroll.Name = "btn_resetpayroll"
        Me.btn_resetpayroll.Size = New System.Drawing.Size(55, 22)
        Me.btn_resetpayroll.Text = "Reset"
        '
        'ToolStripButton1
        '
        Me.ToolStripButton1.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right
        Me.ToolStripButton1.Image = CType(resources.GetObject("ToolStripButton1.Image"), System.Drawing.Image)
        Me.ToolStripButton1.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.ToolStripButton1.Name = "ToolStripButton1"
        Me.ToolStripButton1.Size = New System.Drawing.Size(123, 22)
        Me.ToolStripButton1.Text = "Save Payroll Batch"
        Me.ToolStripButton1.Visible = False
        '
        'dgv_payroll
        '
        Me.dgv_payroll.AllowUserToAddRows = False
        Me.dgv_payroll.AllowUserToDeleteRows = False
        Me.dgv_payroll.AllowUserToResizeRows = False
        Me.dgv_payroll.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        DataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control
        DataGridViewCellStyle1.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgv_payroll.ColumnHeadersDefaultCellStyle = DataGridViewCellStyle1
        Me.dgv_payroll.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        DataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle2.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.ControlText
        DataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.[False]
        Me.dgv_payroll.DefaultCellStyle = DataGridViewCellStyle2
        Me.dgv_payroll.Location = New System.Drawing.Point(0, 28)
        Me.dgv_payroll.MultiSelect = False
        Me.dgv_payroll.Name = "dgv_payroll"
        Me.dgv_payroll.ReadOnly = True
        DataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Control
        DataGridViewCellStyle3.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgv_payroll.RowHeadersDefaultCellStyle = DataGridViewCellStyle3
        Me.dgv_payroll.RowHeadersVisible = False
        Me.dgv_payroll.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_payroll.Size = New System.Drawing.Size(967, 590)
        Me.dgv_payroll.TabIndex = 8
        '
        'TabControl1
        '
        Me.TabControl1.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.TabControl1.Controls.Add(Me.TabPage1)
        Me.TabControl1.Location = New System.Drawing.Point(3, 136)
        Me.TabControl1.Name = "TabControl1"
        Me.TabControl1.SelectedIndex = 0
        Me.TabControl1.Size = New System.Drawing.Size(299, 507)
        Me.TabControl1.TabIndex = 0
        '
        'TabPage1
        '
        Me.TabPage1.Controls.Add(Me.BindingNavigator1)
        Me.TabPage1.Controls.Add(Me.dgv_emplist)
        Me.TabPage1.Location = New System.Drawing.Point(4, 22)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage1.Size = New System.Drawing.Size(291, 481)
        Me.TabPage1.TabIndex = 0
        Me.TabPage1.Text = "Employees"
        Me.TabPage1.UseVisualStyleBackColor = True
        '
        'BindingNavigator1
        '
        Me.BindingNavigator1.AddNewItem = Nothing
        Me.BindingNavigator1.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.BindingNavigator1.CountItem = Nothing
        Me.BindingNavigator1.DeleteItem = Nothing
        Me.BindingNavigator1.Dock = System.Windows.Forms.DockStyle.None
        Me.BindingNavigator1.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden
        Me.BindingNavigator1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripLabel1, Me.tstb_searchdgv, Me.ToolStripSeparator1, Me.tsbtn_refreshdgv})
        Me.BindingNavigator1.Location = New System.Drawing.Point(3, 3)
        Me.BindingNavigator1.MoveFirstItem = Nothing
        Me.BindingNavigator1.MoveLastItem = Nothing
        Me.BindingNavigator1.MoveNextItem = Nothing
        Me.BindingNavigator1.MovePreviousItem = Nothing
        Me.BindingNavigator1.Name = "BindingNavigator1"
        Me.BindingNavigator1.PositionItem = Nothing
        Me.BindingNavigator1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.BindingNavigator1.Size = New System.Drawing.Size(222, 25)
        Me.BindingNavigator1.TabIndex = 1
        Me.BindingNavigator1.Text = "BindingNavigator1"
        '
        'ToolStripLabel1
        '
        Me.ToolStripLabel1.Name = "ToolStripLabel1"
        Me.ToolStripLabel1.Size = New System.Drawing.Size(45, 22)
        Me.ToolStripLabel1.Text = "Search:"
        '
        'tstb_searchdgv
        '
        Me.tstb_searchdgv.Name = "tstb_searchdgv"
        Me.tstb_searchdgv.Size = New System.Drawing.Size(100, 25)
        '
        'ToolStripSeparator1
        '
        Me.ToolStripSeparator1.Name = "ToolStripSeparator1"
        Me.ToolStripSeparator1.Size = New System.Drawing.Size(6, 25)
        '
        'tsbtn_refreshdgv
        '
        Me.tsbtn_refreshdgv.Image = CType(resources.GetObject("tsbtn_refreshdgv.Image"), System.Drawing.Image)
        Me.tsbtn_refreshdgv.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tsbtn_refreshdgv.Name = "tsbtn_refreshdgv"
        Me.tsbtn_refreshdgv.Size = New System.Drawing.Size(66, 22)
        Me.tsbtn_refreshdgv.Text = "Refresh"
        '
        'dgv_emplist
        '
        Me.dgv_emplist.AllowUserToAddRows = False
        Me.dgv_emplist.AllowUserToDeleteRows = False
        Me.dgv_emplist.AllowUserToResizeRows = False
        Me.dgv_emplist.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        DataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Control
        DataGridViewCellStyle4.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle4.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgv_emplist.ColumnHeadersDefaultCellStyle = DataGridViewCellStyle4
        Me.dgv_emplist.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        DataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle5.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle5.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle5.ForeColor = System.Drawing.SystemColors.ControlText
        DataGridViewCellStyle5.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle5.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.[False]
        Me.dgv_emplist.DefaultCellStyle = DataGridViewCellStyle5
        Me.dgv_emplist.Location = New System.Drawing.Point(3, 31)
        Me.dgv_emplist.MultiSelect = False
        Me.dgv_emplist.Name = "dgv_emplist"
        Me.dgv_emplist.ReadOnly = True
        DataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle6.BackColor = System.Drawing.SystemColors.Control
        DataGridViewCellStyle6.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle6.ForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle6.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle6.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgv_emplist.RowHeadersDefaultCellStyle = DataGridViewCellStyle6
        Me.dgv_emplist.RowHeadersVisible = False
        Me.dgv_emplist.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_emplist.Size = New System.Drawing.Size(285, 447)
        Me.dgv_emplist.TabIndex = 0
        '
        'ToolStripSeparator2
        '
        Me.ToolStripSeparator2.Name = "ToolStripSeparator2"
        Me.ToolStripSeparator2.Size = New System.Drawing.Size(180, 6)
        '
        'StatusStrip1
        '
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripStatusLabel1, Me.label_serverstatus, Me.ToolStripStatusLabel2, Me.label_loggedinas})
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 670)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.Size = New System.Drawing.Size(1274, 22)
        Me.StatusStrip1.SizingGrip = False
        Me.StatusStrip1.TabIndex = 2
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'ToolStripStatusLabel1
        '
        Me.ToolStripStatusLabel1.Font = New System.Drawing.Font("Segoe UI", 9.0!, System.Drawing.FontStyle.Bold)
        Me.ToolStripStatusLabel1.Name = "ToolStripStatusLabel1"
        Me.ToolStripStatusLabel1.Size = New System.Drawing.Size(86, 17)
        Me.ToolStripStatusLabel1.Text = "Server Status:"
        '
        'label_serverstatus
        '
        Me.label_serverstatus.Name = "label_serverstatus"
        Me.label_serverstatus.Size = New System.Drawing.Size(89, 17)
        Me.label_serverstatus.Text = "ToolStripLabel2"
        '
        'ToolStripStatusLabel2
        '
        Me.ToolStripStatusLabel2.Font = New System.Drawing.Font("Segoe UI", 9.0!, System.Drawing.FontStyle.Bold)
        Me.ToolStripStatusLabel2.Name = "ToolStripStatusLabel2"
        Me.ToolStripStatusLabel2.Size = New System.Drawing.Size(81, 17)
        Me.ToolStripStatusLabel2.Text = "Logged In As:"
        '
        'label_loggedinas
        '
        Me.label_loggedinas.Name = "label_loggedinas"
        Me.label_loggedinas.Size = New System.Drawing.Size(121, 17)
        Me.label_loggedinas.Text = "ToolStripStatusLabel3"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(3, 3)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(51, 13)
        Me.Label1.TabIndex = 4
        Me.Label1.Text = "Company"
        '
        'cb_companylist
        '
        Me.cb_companylist.FormattingEnabled = True
        Me.cb_companylist.Location = New System.Drawing.Point(6, 20)
        Me.cb_companylist.Name = "cb_companylist"
        Me.cb_companylist.Size = New System.Drawing.Size(275, 21)
        Me.cb_companylist.TabIndex = 5
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(3, 44)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(35, 13)
        Me.Label2.TabIndex = 4
        Me.Label2.Text = "Cutoff"
        '
        'frmMain
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(96.0!, 96.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi
        Me.AutoSize = True
        Me.ClientSize = New System.Drawing.Size(1274, 692)
        Me.Controls.Add(Me.StatusStrip1)
        Me.Controls.Add(Me.tsb_savepayroll)
        Me.Controls.Add(Me.MainMenu)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.MainMenuStrip = Me.MainMenu
        Me.Name = "frmMain"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Payroll System"
        Me.MainMenu.ResumeLayout(False)
        Me.MainMenu.PerformLayout()
        Me.tsb_savepayroll.ResumeLayout(False)
        Me.tsb_savepayroll.PerformLayout()
        Me.TabControl3.ResumeLayout(False)
        Me.TabPage3.ResumeLayout(False)
        Me.TabPage3.PerformLayout()
        Me.Panel2.ResumeLayout(False)
        Me.Panel2.PerformLayout()
        CType(Me.bindingnavigator, System.ComponentModel.ISupportInitialize).EndInit()
        Me.bindingnavigator.ResumeLayout(False)
        Me.bindingnavigator.PerformLayout()
        CType(Me.dgv_payroll, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabControl1.ResumeLayout(False)
        Me.TabPage1.ResumeLayout(False)
        Me.TabPage1.PerformLayout()
        CType(Me.BindingNavigator1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.BindingNavigator1.ResumeLayout(False)
        Me.BindingNavigator1.PerformLayout()
        CType(Me.dgv_emplist, System.ComponentModel.ISupportInitialize).EndInit()
        Me.StatusStrip1.ResumeLayout(False)
        Me.StatusStrip1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents MainMenu As System.Windows.Forms.MenuStrip
    Friend WithEvents PayrollToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ReportsToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsb_savepayroll As System.Windows.Forms.Panel
    Friend WithEvents TabControl1 As System.Windows.Forms.TabControl
    Friend WithEvents TabPage1 As System.Windows.Forms.TabPage
    Friend WithEvents BindingNavigator1 As System.Windows.Forms.BindingNavigator
    Friend WithEvents dgv_emplist As System.Windows.Forms.DataGridView
    Friend WithEvents tstb_searchdgv As System.Windows.Forms.ToolStripTextBox
    Friend WithEvents tsbtn_refreshdgv As System.Windows.Forms.ToolStripButton
    Friend WithEvents PayrollJournalToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripSeparator3 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents LogoutToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripSeparator2 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents HelpToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
    Friend WithEvents ToolStripStatusLabel1 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents label_serverstatus As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents ToolStripStatusLabel2 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents label_loggedinas As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents HelpToolStripMenuItem1 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripSeparator4 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents AboutToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripLabel1 As System.Windows.Forms.ToolStripLabel
    Friend WithEvents ToolStripSeparator1 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents dgv_payroll As System.Windows.Forms.DataGridView
    Friend WithEvents EmployeeToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents SettingsToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents EmployeePayToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents LeavesToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripMenuItem2 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents PaidOvertimesToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents Panel2 As System.Windows.Forms.Panel
    Friend WithEvents bindingnavigator As System.Windows.Forms.BindingNavigator
    Friend WithEvents ToolStripLabel2 As System.Windows.Forms.ToolStripLabel
    Friend WithEvents btn_loadpayroll As System.Windows.Forms.ToolStripButton
    Friend WithEvents btn_resetpayroll As System.Windows.Forms.ToolStripButton
    Friend WithEvents ToolStripButton1 As System.Windows.Forms.ToolStripButton
    Friend WithEvents LeaveConvertToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripSeparator5 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents TimesheetToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents UploadTimsheetToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ViewRawTimesheetToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents lbl_currentcompany As System.Windows.Forms.Label
    Friend WithEvents LoansToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ShiftsToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ChangeCutoffCompanyToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CrystalReportSampleToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents lnk_setcutoff As System.Windows.Forms.LinkLabel
    Friend WithEvents lnk_addcutoff As System.Windows.Forms.LinkLabel
    Friend WithEvents cb_cutoff As System.Windows.Forms.ComboBox
    Friend WithEvents tsbtn_cutoff As System.Windows.Forms.ToolStripTextBox
    Friend WithEvents TabControl3 As System.Windows.Forms.TabControl
    Friend WithEvents TabPage3 As System.Windows.Forms.TabPage
    Friend WithEvents cb_companylist As System.Windows.Forms.ComboBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label

End Class
