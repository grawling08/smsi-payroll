<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmEmpDetails
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
        Me.dgv_emploans = New System.Windows.Forms.DataGridView()
        Me.dgv_empleave = New System.Windows.Forms.DataGridView()
        Me.TabControl2 = New System.Windows.Forms.TabControl()
        Me.TabPage1 = New System.Windows.Forms.TabPage()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.Label19 = New System.Windows.Forms.Label()
        Me.tb_allowance = New System.Windows.Forms.TextBox()
        Me.dgv_incentives = New System.Windows.Forms.DataGridView()
        Me.DataGridViewTextBoxColumn3 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Column1 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Column2 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.btn_delincentive = New System.Windows.Forms.Button()
        Me.btn_addincentive = New System.Windows.Forms.Button()
        Me.Label31 = New System.Windows.Forms.Label()
        Me.tb_totalbenefits = New System.Windows.Forms.TextBox()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.btn_deldeduct = New System.Windows.Forms.Button()
        Me.btn_adddeduct = New System.Windows.Forms.Button()
        Me.Label38 = New System.Windows.Forms.Label()
        Me.dgv_otherdeduct = New System.Windows.Forms.DataGridView()
        Me.Column3 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Column4 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Column5 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Label29 = New System.Windows.Forms.Label()
        Me.Label14 = New System.Windows.Forms.Label()
        Me.Label21 = New System.Windows.Forms.Label()
        Me.tb_totaldeductions = New System.Windows.Forms.TextBox()
        Me.tb_insurance = New System.Windows.Forms.TextBox()
        Me.tb_loans = New System.Windows.Forms.TextBox()
        Me.Label18 = New System.Windows.Forms.Label()
        Me.Label34 = New System.Windows.Forms.Label()
        Me.Label17 = New System.Windows.Forms.Label()
        Me.Label33 = New System.Windows.Forms.Label()
        Me.Label16 = New System.Windows.Forms.Label()
        Me.tb_holidayot = New System.Windows.Forms.TextBox()
        Me.btn_savepayslip = New System.Windows.Forms.Button()
        Me.Label32 = New System.Windows.Forms.Label()
        Me.tb_grosspay = New System.Windows.Forms.TextBox()
        Me.lbl_cutoff = New System.Windows.Forms.Label()
        Me.tb_regularot = New System.Windows.Forms.TextBox()
        Me.Label36 = New System.Windows.Forms.Label()
        Me.Label25 = New System.Windows.Forms.Label()
        Me.Label22 = New System.Windows.Forms.Label()
        Me.Label30 = New System.Windows.Forms.Label()
        Me.Label24 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.tb_taxableincome = New System.Windows.Forms.TextBox()
        Me.Label23 = New System.Windows.Forms.Label()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.tb_sss = New System.Windows.Forms.TextBox()
        Me.tb_phic = New System.Windows.Forms.TextBox()
        Me.tb_hdmf = New System.Windows.Forms.TextBox()
        Me.Label26 = New System.Windows.Forms.Label()
        Me.Label27 = New System.Windows.Forms.Label()
        Me.Label28 = New System.Windows.Forms.Label()
        Me.tb_income = New System.Windows.Forms.TextBox()
        Me.Label15 = New System.Windows.Forms.Label()
        Me.tb_netpaywithtax = New System.Windows.Forms.TextBox()
        Me.tb_tax = New System.Windows.Forms.TextBox()
        Me.tb_netincome = New System.Windows.Forms.TextBox()
        Me.tb_undertime = New System.Windows.Forms.TextBox()
        Me.tb_late = New System.Windows.Forms.TextBox()
        Me.tb_absents = New System.Windows.Forms.TextBox()
        Me.TabPage3 = New System.Windows.Forms.TabPage()
        Me.FlowLayoutPanel1 = New System.Windows.Forms.FlowLayoutPanel()
        Me.dtp_timesheetmonth = New System.Windows.Forms.DateTimePicker()
        Me.Label39 = New System.Windows.Forms.Label()
        Me.dtp_timesheetmonth2 = New System.Windows.Forms.DateTimePicker()
        Me.btn_loadtimesheet = New System.Windows.Forms.Button()
        Me.btn_addtimesheet = New System.Windows.Forms.Button()
        Me.dgv_emptimesheet = New System.Windows.Forms.DataGridView()
        Me.TabPage7 = New System.Windows.Forms.TabPage()
        Me.BindingNavigator1 = New System.Windows.Forms.BindingNavigator(Me.components)
        Me.tsb_loanadd = New System.Windows.Forms.ToolStripButton()
        Me.tsb_loanedit = New System.Windows.Forms.ToolStripButton()
        Me.tsb_loandelete = New System.Windows.Forms.ToolStripButton()
        Me.TabPage5 = New System.Windows.Forms.TabPage()
        Me.ToolStrip1 = New System.Windows.Forms.ToolStrip()
        Me.tsb_addinsureance = New System.Windows.Forms.ToolStripButton()
        Me.tsb_deleteinsurance = New System.Windows.Forms.ToolStripButton()
        Me.dgv_insurance = New System.Windows.Forms.DataGridView()
        Me.Column8 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Column9 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Column6 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Column7 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.TabPage8 = New System.Windows.Forms.TabPage()
        Me.TabPage2 = New System.Windows.Forms.TabPage()
        Me.dgv_overtime = New System.Windows.Forms.DataGridView()
        Me.TabPage4 = New System.Windows.Forms.TabPage()
        Me.dgv_travelorders = New System.Windows.Forms.DataGridView()
        Me.tb_middlename = New System.Windows.Forms.TextBox()
        Me.tb_firstname = New System.Windows.Forms.TextBox()
        Me.tb_biometricid = New System.Windows.Forms.TextBox()
        Me.tb_employmentstatus = New System.Windows.Forms.TextBox()
        Me.tb_hdmfID = New System.Windows.Forms.TextBox()
        Me.tb_phicID = New System.Windows.Forms.TextBox()
        Me.tb_position = New System.Windows.Forms.TextBox()
        Me.tb_branch = New System.Windows.Forms.TextBox()
        Me.tb_company = New System.Windows.Forms.TextBox()
        Me.tb_sssID = New System.Windows.Forms.TextBox()
        Me.tb_empid = New System.Windows.Forms.TextBox()
        Me.tb_surname = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Label35 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Label12 = New System.Windows.Forms.Label()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.GroupBox4 = New System.Windows.Forms.GroupBox()
        Me.chkbox_excluded = New System.Windows.Forms.CheckBox()
        Me.lbl_shift = New System.Windows.Forms.Label()
        Me.Label37 = New System.Windows.Forms.Label()
        Me.dgv_shift = New System.Windows.Forms.DataGridView()
        Me.cms_deduct = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.AddOtherDeductionToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.DeleteToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        CType(Me.dgv_emploans, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.dgv_empleave, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabControl2.SuspendLayout()
        Me.TabPage1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        CType(Me.dgv_incentives, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox3.SuspendLayout()
        CType(Me.dgv_otherdeduct, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox1.SuspendLayout()
        Me.TabPage3.SuspendLayout()
        Me.FlowLayoutPanel1.SuspendLayout()
        CType(Me.dgv_emptimesheet, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabPage7.SuspendLayout()
        CType(Me.BindingNavigator1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.BindingNavigator1.SuspendLayout()
        Me.TabPage5.SuspendLayout()
        Me.ToolStrip1.SuspendLayout()
        CType(Me.dgv_insurance, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabPage8.SuspendLayout()
        Me.TabPage2.SuspendLayout()
        CType(Me.dgv_overtime, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabPage4.SuspendLayout()
        CType(Me.dgv_travelorders, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox4.SuspendLayout()
        CType(Me.dgv_shift, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.cms_deduct.SuspendLayout()
        Me.SuspendLayout()
        '
        'dgv_emploans
        '
        Me.dgv_emploans.AllowUserToAddRows = False
        Me.dgv_emploans.AllowUserToDeleteRows = False
        Me.dgv_emploans.AllowUserToResizeRows = False
        Me.dgv_emploans.BackgroundColor = System.Drawing.Color.WhiteSmoke
        Me.dgv_emploans.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgv_emploans.Location = New System.Drawing.Point(3, 31)
        Me.dgv_emploans.MultiSelect = False
        Me.dgv_emploans.Name = "dgv_emploans"
        Me.dgv_emploans.ReadOnly = True
        Me.dgv_emploans.RowHeadersVisible = False
        Me.dgv_emploans.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_emploans.Size = New System.Drawing.Size(545, 420)
        Me.dgv_emploans.TabIndex = 0
        '
        'dgv_empleave
        '
        Me.dgv_empleave.AllowUserToAddRows = False
        Me.dgv_empleave.AllowUserToDeleteRows = False
        Me.dgv_empleave.AllowUserToResizeRows = False
        Me.dgv_empleave.BackgroundColor = System.Drawing.Color.WhiteSmoke
        Me.dgv_empleave.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgv_empleave.Dock = System.Windows.Forms.DockStyle.Fill
        Me.dgv_empleave.Location = New System.Drawing.Point(3, 3)
        Me.dgv_empleave.MultiSelect = False
        Me.dgv_empleave.Name = "dgv_empleave"
        Me.dgv_empleave.ReadOnly = True
        Me.dgv_empleave.RowHeadersVisible = False
        Me.dgv_empleave.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_empleave.Size = New System.Drawing.Size(545, 448)
        Me.dgv_empleave.TabIndex = 0
        '
        'TabControl2
        '
        Me.TabControl2.Controls.Add(Me.TabPage1)
        Me.TabControl2.Controls.Add(Me.TabPage3)
        Me.TabControl2.Controls.Add(Me.TabPage7)
        Me.TabControl2.Controls.Add(Me.TabPage5)
        Me.TabControl2.Controls.Add(Me.TabPage8)
        Me.TabControl2.Controls.Add(Me.TabPage2)
        Me.TabControl2.Controls.Add(Me.TabPage4)
        Me.TabControl2.Location = New System.Drawing.Point(302, 1)
        Me.TabControl2.Name = "TabControl2"
        Me.TabControl2.SelectedIndex = 0
        Me.TabControl2.Size = New System.Drawing.Size(559, 480)
        Me.TabControl2.TabIndex = 0
        '
        'TabPage1
        '
        Me.TabPage1.Controls.Add(Me.GroupBox2)
        Me.TabPage1.Controls.Add(Me.GroupBox3)
        Me.TabPage1.Controls.Add(Me.Label18)
        Me.TabPage1.Controls.Add(Me.Label34)
        Me.TabPage1.Controls.Add(Me.Label17)
        Me.TabPage1.Controls.Add(Me.Label33)
        Me.TabPage1.Controls.Add(Me.Label16)
        Me.TabPage1.Controls.Add(Me.tb_holidayot)
        Me.TabPage1.Controls.Add(Me.btn_savepayslip)
        Me.TabPage1.Controls.Add(Me.Label32)
        Me.TabPage1.Controls.Add(Me.tb_grosspay)
        Me.TabPage1.Controls.Add(Me.lbl_cutoff)
        Me.TabPage1.Controls.Add(Me.tb_regularot)
        Me.TabPage1.Controls.Add(Me.Label36)
        Me.TabPage1.Controls.Add(Me.Label25)
        Me.TabPage1.Controls.Add(Me.Label22)
        Me.TabPage1.Controls.Add(Me.Label30)
        Me.TabPage1.Controls.Add(Me.Label24)
        Me.TabPage1.Controls.Add(Me.Label5)
        Me.TabPage1.Controls.Add(Me.tb_taxableincome)
        Me.TabPage1.Controls.Add(Me.Label23)
        Me.TabPage1.Controls.Add(Me.GroupBox1)
        Me.TabPage1.Controls.Add(Me.tb_income)
        Me.TabPage1.Controls.Add(Me.Label15)
        Me.TabPage1.Controls.Add(Me.tb_netpaywithtax)
        Me.TabPage1.Controls.Add(Me.tb_tax)
        Me.TabPage1.Controls.Add(Me.tb_netincome)
        Me.TabPage1.Controls.Add(Me.tb_undertime)
        Me.TabPage1.Controls.Add(Me.tb_late)
        Me.TabPage1.Controls.Add(Me.tb_absents)
        Me.TabPage1.Location = New System.Drawing.Point(4, 22)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage1.Size = New System.Drawing.Size(551, 454)
        Me.TabPage1.TabIndex = 3
        Me.TabPage1.Text = "Payroll Details"
        Me.TabPage1.UseVisualStyleBackColor = True
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.Label19)
        Me.GroupBox2.Controls.Add(Me.tb_allowance)
        Me.GroupBox2.Controls.Add(Me.dgv_incentives)
        Me.GroupBox2.Controls.Add(Me.btn_delincentive)
        Me.GroupBox2.Controls.Add(Me.btn_addincentive)
        Me.GroupBox2.Controls.Add(Me.Label31)
        Me.GroupBox2.Controls.Add(Me.tb_totalbenefits)
        Me.GroupBox2.Location = New System.Drawing.Point(275, 210)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(270, 181)
        Me.GroupBox2.TabIndex = 15
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Additionals"
        '
        'Label19
        '
        Me.Label19.AutoSize = True
        Me.Label19.Location = New System.Drawing.Point(6, 129)
        Me.Label19.Name = "Label19"
        Me.Label19.Size = New System.Drawing.Size(56, 13)
        Me.Label19.TabIndex = 8
        Me.Label19.Text = "Allowance"
        '
        'tb_allowance
        '
        Me.tb_allowance.Location = New System.Drawing.Point(139, 126)
        Me.tb_allowance.Name = "tb_allowance"
        Me.tb_allowance.ReadOnly = True
        Me.tb_allowance.Size = New System.Drawing.Size(124, 20)
        Me.tb_allowance.TabIndex = 9
        Me.tb_allowance.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'dgv_incentives
        '
        Me.dgv_incentives.AllowUserToAddRows = False
        Me.dgv_incentives.AllowUserToDeleteRows = False
        Me.dgv_incentives.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill
        Me.dgv_incentives.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgv_incentives.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.DataGridViewTextBoxColumn3, Me.Column1, Me.Column2})
        Me.dgv_incentives.Location = New System.Drawing.Point(6, 40)
        Me.dgv_incentives.MultiSelect = False
        Me.dgv_incentives.Name = "dgv_incentives"
        Me.dgv_incentives.RowHeadersVisible = False
        Me.dgv_incentives.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_incentives.Size = New System.Drawing.Size(257, 80)
        Me.dgv_incentives.TabIndex = 5
        '
        'DataGridViewTextBoxColumn3
        '
        Me.DataGridViewTextBoxColumn3.HeaderText = "Column3"
        Me.DataGridViewTextBoxColumn3.Name = "DataGridViewTextBoxColumn3"
        Me.DataGridViewTextBoxColumn3.Visible = False
        '
        'Column1
        '
        Me.Column1.HeaderText = "Name"
        Me.Column1.Name = "Column1"
        '
        'Column2
        '
        Me.Column2.HeaderText = "Amount"
        Me.Column2.Name = "Column2"
        '
        'btn_delincentive
        '
        Me.btn_delincentive.Location = New System.Drawing.Point(228, 13)
        Me.btn_delincentive.Name = "btn_delincentive"
        Me.btn_delincentive.Size = New System.Drawing.Size(35, 23)
        Me.btn_delincentive.TabIndex = 4
        Me.btn_delincentive.Text = "Del"
        Me.btn_delincentive.UseVisualStyleBackColor = True
        '
        'btn_addincentive
        '
        Me.btn_addincentive.Location = New System.Drawing.Point(187, 13)
        Me.btn_addincentive.Name = "btn_addincentive"
        Me.btn_addincentive.Size = New System.Drawing.Size(35, 23)
        Me.btn_addincentive.TabIndex = 3
        Me.btn_addincentive.Text = "Add"
        Me.btn_addincentive.UseVisualStyleBackColor = True
        '
        'Label31
        '
        Me.Label31.AutoSize = True
        Me.Label31.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label31.Location = New System.Drawing.Point(4, 155)
        Me.Label31.Name = "Label31"
        Me.Label31.Size = New System.Drawing.Size(134, 13)
        Me.Label31.TabIndex = 6
        Me.Label31.Text = "TOTAL ADDITIONALS"
        '
        'tb_totalbenefits
        '
        Me.tb_totalbenefits.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.tb_totalbenefits.Location = New System.Drawing.Point(139, 152)
        Me.tb_totalbenefits.Name = "tb_totalbenefits"
        Me.tb_totalbenefits.ReadOnly = True
        Me.tb_totalbenefits.Size = New System.Drawing.Size(124, 20)
        Me.tb_totalbenefits.TabIndex = 7
        Me.tb_totalbenefits.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.btn_deldeduct)
        Me.GroupBox3.Controls.Add(Me.btn_adddeduct)
        Me.GroupBox3.Controls.Add(Me.Label38)
        Me.GroupBox3.Controls.Add(Me.dgv_otherdeduct)
        Me.GroupBox3.Controls.Add(Me.Label29)
        Me.GroupBox3.Controls.Add(Me.Label14)
        Me.GroupBox3.Controls.Add(Me.Label21)
        Me.GroupBox3.Controls.Add(Me.tb_totaldeductions)
        Me.GroupBox3.Controls.Add(Me.tb_insurance)
        Me.GroupBox3.Controls.Add(Me.tb_loans)
        Me.GroupBox3.Location = New System.Drawing.Point(275, 3)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(270, 205)
        Me.GroupBox3.TabIndex = 14
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Deductions"
        '
        'btn_deldeduct
        '
        Me.btn_deldeduct.Location = New System.Drawing.Point(229, 12)
        Me.btn_deldeduct.Name = "btn_deldeduct"
        Me.btn_deldeduct.Size = New System.Drawing.Size(35, 23)
        Me.btn_deldeduct.TabIndex = 17
        Me.btn_deldeduct.Text = "Del"
        Me.btn_deldeduct.UseVisualStyleBackColor = True
        '
        'btn_adddeduct
        '
        Me.btn_adddeduct.Location = New System.Drawing.Point(188, 12)
        Me.btn_adddeduct.Name = "btn_adddeduct"
        Me.btn_adddeduct.Size = New System.Drawing.Size(35, 23)
        Me.btn_adddeduct.TabIndex = 16
        Me.btn_adddeduct.Text = "Add"
        Me.btn_adddeduct.UseVisualStyleBackColor = True
        '
        'Label38
        '
        Me.Label38.AutoSize = True
        Me.Label38.Location = New System.Drawing.Point(6, 17)
        Me.Label38.Name = "Label38"
        Me.Label38.Size = New System.Drawing.Size(90, 13)
        Me.Label38.TabIndex = 15
        Me.Label38.Text = "Other Deductions"
        '
        'dgv_otherdeduct
        '
        Me.dgv_otherdeduct.AllowUserToAddRows = False
        Me.dgv_otherdeduct.AllowUserToDeleteRows = False
        Me.dgv_otherdeduct.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill
        Me.dgv_otherdeduct.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgv_otherdeduct.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.Column3, Me.Column4, Me.Column5})
        Me.dgv_otherdeduct.Location = New System.Drawing.Point(7, 38)
        Me.dgv_otherdeduct.MultiSelect = False
        Me.dgv_otherdeduct.Name = "dgv_otherdeduct"
        Me.dgv_otherdeduct.RowHeadersVisible = False
        Me.dgv_otherdeduct.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_otherdeduct.Size = New System.Drawing.Size(257, 80)
        Me.dgv_otherdeduct.TabIndex = 14
        '
        'Column3
        '
        Me.Column3.HeaderText = "Column3"
        Me.Column3.Name = "Column3"
        Me.Column3.Visible = False
        '
        'Column4
        '
        Me.Column4.HeaderText = "Name"
        Me.Column4.Name = "Column4"
        '
        'Column5
        '
        Me.Column5.HeaderText = "Amount"
        Me.Column5.Name = "Column5"
        '
        'Label29
        '
        Me.Label29.AutoSize = True
        Me.Label29.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label29.Location = New System.Drawing.Point(4, 179)
        Me.Label29.Name = "Label29"
        Me.Label29.Size = New System.Drawing.Size(132, 13)
        Me.Label29.TabIndex = 12
        Me.Label29.Text = "TOTAL DEDUCTIONS"
        '
        'Label14
        '
        Me.Label14.AutoSize = True
        Me.Label14.Location = New System.Drawing.Point(6, 153)
        Me.Label14.Name = "Label14"
        Me.Label14.Size = New System.Drawing.Size(54, 13)
        Me.Label14.TabIndex = 10
        Me.Label14.Text = "Insurance"
        '
        'Label21
        '
        Me.Label21.AutoSize = True
        Me.Label21.Location = New System.Drawing.Point(6, 127)
        Me.Label21.Name = "Label21"
        Me.Label21.Size = New System.Drawing.Size(36, 13)
        Me.Label21.TabIndex = 10
        Me.Label21.Text = "Loans"
        '
        'tb_totaldeductions
        '
        Me.tb_totaldeductions.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.tb_totaldeductions.Location = New System.Drawing.Point(140, 176)
        Me.tb_totaldeductions.Name = "tb_totaldeductions"
        Me.tb_totaldeductions.ReadOnly = True
        Me.tb_totaldeductions.Size = New System.Drawing.Size(124, 20)
        Me.tb_totaldeductions.TabIndex = 13
        Me.tb_totaldeductions.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'tb_insurance
        '
        Me.tb_insurance.Location = New System.Drawing.Point(140, 150)
        Me.tb_insurance.Name = "tb_insurance"
        Me.tb_insurance.ReadOnly = True
        Me.tb_insurance.Size = New System.Drawing.Size(124, 20)
        Me.tb_insurance.TabIndex = 11
        Me.tb_insurance.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'tb_loans
        '
        Me.tb_loans.Location = New System.Drawing.Point(140, 124)
        Me.tb_loans.Name = "tb_loans"
        Me.tb_loans.ReadOnly = True
        Me.tb_loans.Size = New System.Drawing.Size(124, 20)
        Me.tb_loans.TabIndex = 11
        Me.tb_loans.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'Label18
        '
        Me.Label18.AutoSize = True
        Me.Label18.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label18.Location = New System.Drawing.Point(8, 163)
        Me.Label18.Name = "Label18"
        Me.Label18.Size = New System.Drawing.Size(78, 13)
        Me.Label18.TabIndex = 4
        Me.Label18.Text = "GROSS PAY"
        '
        'Label34
        '
        Me.Label34.AutoSize = True
        Me.Label34.Location = New System.Drawing.Point(9, 433)
        Me.Label34.Name = "Label34"
        Me.Label34.Size = New System.Drawing.Size(45, 13)
        Me.Label34.TabIndex = 12
        Me.Label34.Text = "Label33"
        Me.Label34.Visible = False
        '
        'Label17
        '
        Me.Label17.AutoSize = True
        Me.Label17.Location = New System.Drawing.Point(9, 137)
        Me.Label17.Name = "Label17"
        Me.Label17.Size = New System.Drawing.Size(44, 13)
        Me.Label17.TabIndex = 2
        Me.Label17.Text = "Hol. OT"
        '
        'Label33
        '
        Me.Label33.AutoSize = True
        Me.Label33.Location = New System.Drawing.Point(9, 420)
        Me.Label33.Name = "Label33"
        Me.Label33.Size = New System.Drawing.Size(45, 13)
        Me.Label33.TabIndex = 12
        Me.Label33.Text = "Label33"
        Me.Label33.Visible = False
        '
        'Label16
        '
        Me.Label16.AutoSize = True
        Me.Label16.Location = New System.Drawing.Point(9, 111)
        Me.Label16.Name = "Label16"
        Me.Label16.Size = New System.Drawing.Size(48, 13)
        Me.Label16.TabIndex = 0
        Me.Label16.Text = "Reg. OT"
        '
        'tb_holidayot
        '
        Me.tb_holidayot.Location = New System.Drawing.Point(142, 134)
        Me.tb_holidayot.Name = "tb_holidayot"
        Me.tb_holidayot.ReadOnly = True
        Me.tb_holidayot.Size = New System.Drawing.Size(121, 20)
        Me.tb_holidayot.TabIndex = 3
        Me.tb_holidayot.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'btn_savepayslip
        '
        Me.btn_savepayslip.Font = New System.Drawing.Font("Segoe UI", 15.75!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Underline), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn_savepayslip.ForeColor = System.Drawing.Color.Red
        Me.btn_savepayslip.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btn_savepayslip.Location = New System.Drawing.Point(282, 397)
        Me.btn_savepayslip.Name = "btn_savepayslip"
        Me.btn_savepayslip.Size = New System.Drawing.Size(256, 49)
        Me.btn_savepayslip.TabIndex = 13
        Me.btn_savepayslip.Text = "S A V E  P A Y S L I P"
        Me.btn_savepayslip.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage
        Me.btn_savepayslip.UseVisualStyleBackColor = True
        '
        'Label32
        '
        Me.Label32.AutoSize = True
        Me.Label32.Location = New System.Drawing.Point(9, 407)
        Me.Label32.Name = "Label32"
        Me.Label32.Size = New System.Drawing.Size(75, 13)
        Me.Label32.TabIndex = 3
        Me.Label32.Text = "Current Cutoff:"
        '
        'tb_grosspay
        '
        Me.tb_grosspay.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.tb_grosspay.Location = New System.Drawing.Point(142, 160)
        Me.tb_grosspay.Name = "tb_grosspay"
        Me.tb_grosspay.ReadOnly = True
        Me.tb_grosspay.Size = New System.Drawing.Size(121, 20)
        Me.tb_grosspay.TabIndex = 5
        Me.tb_grosspay.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'lbl_cutoff
        '
        Me.lbl_cutoff.AutoSize = True
        Me.lbl_cutoff.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbl_cutoff.Location = New System.Drawing.Point(81, 407)
        Me.lbl_cutoff.Name = "lbl_cutoff"
        Me.lbl_cutoff.Size = New System.Drawing.Size(52, 13)
        Me.lbl_cutoff.TabIndex = 3
        Me.lbl_cutoff.Text = "Label31"
        '
        'tb_regularot
        '
        Me.tb_regularot.Location = New System.Drawing.Point(142, 108)
        Me.tb_regularot.Name = "tb_regularot"
        Me.tb_regularot.ReadOnly = True
        Me.tb_regularot.Size = New System.Drawing.Size(121, 20)
        Me.tb_regularot.TabIndex = 1
        Me.tb_regularot.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'Label36
        '
        Me.Label36.AutoSize = True
        Me.Label36.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label36.Location = New System.Drawing.Point(9, 348)
        Me.Label36.Name = "Label36"
        Me.Label36.Size = New System.Drawing.Size(125, 13)
        Me.Label36.TabIndex = 9
        Me.Label36.Text = "Total Pay Net of Tax"
        '
        'Label25
        '
        Me.Label25.AutoSize = True
        Me.Label25.Location = New System.Drawing.Point(9, 322)
        Me.Label25.Name = "Label25"
        Me.Label25.Size = New System.Drawing.Size(84, 13)
        Me.Label25.TabIndex = 9
        Me.Label25.Text = "Withholding Tax"
        '
        'Label22
        '
        Me.Label22.AutoSize = True
        Me.Label22.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label22.Location = New System.Drawing.Point(8, 296)
        Me.Label22.Name = "Label22"
        Me.Label22.Size = New System.Drawing.Size(97, 13)
        Me.Label22.TabIndex = 8
        Me.Label22.Text = "Taxable Income"
        '
        'Label30
        '
        Me.Label30.AutoSize = True
        Me.Label30.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label30.Location = New System.Drawing.Point(9, 374)
        Me.Label30.Name = "Label30"
        Me.Label30.Size = New System.Drawing.Size(84, 13)
        Me.Label30.TabIndex = 11
        Me.Label30.Text = "NET INCOME"
        '
        'Label24
        '
        Me.Label24.AutoSize = True
        Me.Label24.Location = New System.Drawing.Point(8, 85)
        Me.Label24.Name = "Label24"
        Me.Label24.Size = New System.Drawing.Size(55, 13)
        Me.Label24.TabIndex = 2
        Me.Label24.Text = "Undertime"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(8, 59)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(54, 13)
        Me.Label5.TabIndex = 0
        Me.Label5.Text = "Absences"
        '
        'tb_taxableincome
        '
        Me.tb_taxableincome.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.tb_taxableincome.Location = New System.Drawing.Point(142, 293)
        Me.tb_taxableincome.Name = "tb_taxableincome"
        Me.tb_taxableincome.ReadOnly = True
        Me.tb_taxableincome.Size = New System.Drawing.Size(121, 20)
        Me.tb_taxableincome.TabIndex = 9
        Me.tb_taxableincome.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'Label23
        '
        Me.Label23.AutoSize = True
        Me.Label23.Location = New System.Drawing.Point(8, 33)
        Me.Label23.Name = "Label23"
        Me.Label23.Size = New System.Drawing.Size(28, 13)
        Me.Label23.TabIndex = 0
        Me.Label23.Text = "Late"
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.tb_sss)
        Me.GroupBox1.Controls.Add(Me.tb_phic)
        Me.GroupBox1.Controls.Add(Me.tb_hdmf)
        Me.GroupBox1.Controls.Add(Me.Label26)
        Me.GroupBox1.Controls.Add(Me.Label27)
        Me.GroupBox1.Controls.Add(Me.Label28)
        Me.GroupBox1.Location = New System.Drawing.Point(6, 186)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(263, 101)
        Me.GroupBox1.TabIndex = 6
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Less"
        '
        'tb_sss
        '
        Me.tb_sss.Location = New System.Drawing.Point(136, 19)
        Me.tb_sss.Name = "tb_sss"
        Me.tb_sss.ReadOnly = True
        Me.tb_sss.Size = New System.Drawing.Size(121, 20)
        Me.tb_sss.TabIndex = 5
        Me.tb_sss.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'tb_phic
        '
        Me.tb_phic.Location = New System.Drawing.Point(136, 45)
        Me.tb_phic.Name = "tb_phic"
        Me.tb_phic.ReadOnly = True
        Me.tb_phic.Size = New System.Drawing.Size(121, 20)
        Me.tb_phic.TabIndex = 7
        Me.tb_phic.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'tb_hdmf
        '
        Me.tb_hdmf.Location = New System.Drawing.Point(136, 71)
        Me.tb_hdmf.Name = "tb_hdmf"
        Me.tb_hdmf.ReadOnly = True
        Me.tb_hdmf.Size = New System.Drawing.Size(121, 20)
        Me.tb_hdmf.TabIndex = 9
        Me.tb_hdmf.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'Label26
        '
        Me.Label26.AutoSize = True
        Me.Label26.Location = New System.Drawing.Point(2, 22)
        Me.Label26.Name = "Label26"
        Me.Label26.Size = New System.Drawing.Size(28, 13)
        Me.Label26.TabIndex = 4
        Me.Label26.Text = "SSS"
        '
        'Label27
        '
        Me.Label27.AutoSize = True
        Me.Label27.Location = New System.Drawing.Point(3, 48)
        Me.Label27.Name = "Label27"
        Me.Label27.Size = New System.Drawing.Size(32, 13)
        Me.Label27.TabIndex = 6
        Me.Label27.Text = "PHIC"
        '
        'Label28
        '
        Me.Label28.AutoSize = True
        Me.Label28.Location = New System.Drawing.Point(3, 74)
        Me.Label28.Name = "Label28"
        Me.Label28.Size = New System.Drawing.Size(38, 13)
        Me.Label28.TabIndex = 8
        Me.Label28.Text = "HDMF"
        '
        'tb_income
        '
        Me.tb_income.Location = New System.Drawing.Point(142, 4)
        Me.tb_income.Name = "tb_income"
        Me.tb_income.ReadOnly = True
        Me.tb_income.Size = New System.Drawing.Size(121, 20)
        Me.tb_income.TabIndex = 5
        Me.tb_income.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'Label15
        '
        Me.Label15.AutoSize = True
        Me.Label15.Location = New System.Drawing.Point(3, 7)
        Me.Label15.Name = "Label15"
        Me.Label15.Size = New System.Drawing.Size(65, 13)
        Me.Label15.TabIndex = 4
        Me.Label15.Text = "Basic Salary"
        '
        'tb_netpaywithtax
        '
        Me.tb_netpaywithtax.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.tb_netpaywithtax.Location = New System.Drawing.Point(142, 345)
        Me.tb_netpaywithtax.Name = "tb_netpaywithtax"
        Me.tb_netpaywithtax.ReadOnly = True
        Me.tb_netpaywithtax.Size = New System.Drawing.Size(121, 20)
        Me.tb_netpaywithtax.TabIndex = 10
        Me.tb_netpaywithtax.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'tb_tax
        '
        Me.tb_tax.Location = New System.Drawing.Point(142, 319)
        Me.tb_tax.Name = "tb_tax"
        Me.tb_tax.ReadOnly = True
        Me.tb_tax.Size = New System.Drawing.Size(121, 20)
        Me.tb_tax.TabIndex = 10
        Me.tb_tax.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'tb_netincome
        '
        Me.tb_netincome.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.tb_netincome.Location = New System.Drawing.Point(142, 371)
        Me.tb_netincome.Name = "tb_netincome"
        Me.tb_netincome.ReadOnly = True
        Me.tb_netincome.Size = New System.Drawing.Size(121, 20)
        Me.tb_netincome.TabIndex = 12
        Me.tb_netincome.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'tb_undertime
        '
        Me.tb_undertime.Location = New System.Drawing.Point(142, 82)
        Me.tb_undertime.Name = "tb_undertime"
        Me.tb_undertime.ReadOnly = True
        Me.tb_undertime.Size = New System.Drawing.Size(121, 20)
        Me.tb_undertime.TabIndex = 3
        Me.tb_undertime.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'tb_late
        '
        Me.tb_late.Location = New System.Drawing.Point(142, 30)
        Me.tb_late.Name = "tb_late"
        Me.tb_late.ReadOnly = True
        Me.tb_late.Size = New System.Drawing.Size(121, 20)
        Me.tb_late.TabIndex = 1
        Me.tb_late.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'tb_absents
        '
        Me.tb_absents.Location = New System.Drawing.Point(142, 56)
        Me.tb_absents.Name = "tb_absents"
        Me.tb_absents.ReadOnly = True
        Me.tb_absents.Size = New System.Drawing.Size(121, 20)
        Me.tb_absents.TabIndex = 1
        Me.tb_absents.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'TabPage3
        '
        Me.TabPage3.Controls.Add(Me.FlowLayoutPanel1)
        Me.TabPage3.Controls.Add(Me.dgv_emptimesheet)
        Me.TabPage3.Location = New System.Drawing.Point(4, 22)
        Me.TabPage3.Name = "TabPage3"
        Me.TabPage3.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage3.Size = New System.Drawing.Size(551, 454)
        Me.TabPage3.TabIndex = 1
        Me.TabPage3.Text = "Absents"
        Me.TabPage3.UseVisualStyleBackColor = True
        '
        'FlowLayoutPanel1
        '
        Me.FlowLayoutPanel1.Controls.Add(Me.dtp_timesheetmonth)
        Me.FlowLayoutPanel1.Controls.Add(Me.Label39)
        Me.FlowLayoutPanel1.Controls.Add(Me.dtp_timesheetmonth2)
        Me.FlowLayoutPanel1.Controls.Add(Me.btn_loadtimesheet)
        Me.FlowLayoutPanel1.Controls.Add(Me.btn_addtimesheet)
        Me.FlowLayoutPanel1.Location = New System.Drawing.Point(3, 3)
        Me.FlowLayoutPanel1.Name = "FlowLayoutPanel1"
        Me.FlowLayoutPanel1.Size = New System.Drawing.Size(545, 29)
        Me.FlowLayoutPanel1.TabIndex = 5
        '
        'dtp_timesheetmonth
        '
        Me.dtp_timesheetmonth.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.dtp_timesheetmonth.Location = New System.Drawing.Point(3, 3)
        Me.dtp_timesheetmonth.Name = "dtp_timesheetmonth"
        Me.dtp_timesheetmonth.Size = New System.Drawing.Size(150, 20)
        Me.dtp_timesheetmonth.TabIndex = 0
        '
        'Label39
        '
        Me.Label39.Location = New System.Drawing.Point(159, 0)
        Me.Label39.Name = "Label39"
        Me.Label39.Size = New System.Drawing.Size(20, 23)
        Me.Label39.TabIndex = 4
        Me.Label39.Text = "To"
        Me.Label39.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'dtp_timesheetmonth2
        '
        Me.dtp_timesheetmonth2.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.dtp_timesheetmonth2.Location = New System.Drawing.Point(185, 3)
        Me.dtp_timesheetmonth2.Name = "dtp_timesheetmonth2"
        Me.dtp_timesheetmonth2.Size = New System.Drawing.Size(150, 20)
        Me.dtp_timesheetmonth2.TabIndex = 0
        '
        'btn_loadtimesheet
        '
        Me.btn_loadtimesheet.Location = New System.Drawing.Point(341, 3)
        Me.btn_loadtimesheet.Name = "btn_loadtimesheet"
        Me.btn_loadtimesheet.Size = New System.Drawing.Size(75, 23)
        Me.btn_loadtimesheet.TabIndex = 1
        Me.btn_loadtimesheet.Text = "Load"
        Me.btn_loadtimesheet.UseVisualStyleBackColor = True
        '
        'btn_addtimesheet
        '
        Me.btn_addtimesheet.Location = New System.Drawing.Point(422, 3)
        Me.btn_addtimesheet.Name = "btn_addtimesheet"
        Me.btn_addtimesheet.Size = New System.Drawing.Size(75, 23)
        Me.btn_addtimesheet.TabIndex = 3
        Me.btn_addtimesheet.Text = "Add New"
        Me.btn_addtimesheet.UseVisualStyleBackColor = True
        '
        'dgv_emptimesheet
        '
        Me.dgv_emptimesheet.AllowUserToAddRows = False
        Me.dgv_emptimesheet.AllowUserToDeleteRows = False
        Me.dgv_emptimesheet.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.dgv_emptimesheet.BackgroundColor = System.Drawing.Color.WhiteSmoke
        Me.dgv_emptimesheet.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing
        Me.dgv_emptimesheet.Location = New System.Drawing.Point(3, 32)
        Me.dgv_emptimesheet.MultiSelect = False
        Me.dgv_emptimesheet.Name = "dgv_emptimesheet"
        Me.dgv_emptimesheet.ReadOnly = True
        Me.dgv_emptimesheet.RowHeadersVisible = False
        Me.dgv_emptimesheet.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing
        Me.dgv_emptimesheet.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_emptimesheet.Size = New System.Drawing.Size(545, 419)
        Me.dgv_emptimesheet.TabIndex = 2
        '
        'TabPage7
        '
        Me.TabPage7.Controls.Add(Me.BindingNavigator1)
        Me.TabPage7.Controls.Add(Me.dgv_emploans)
        Me.TabPage7.Location = New System.Drawing.Point(4, 22)
        Me.TabPage7.Name = "TabPage7"
        Me.TabPage7.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage7.Size = New System.Drawing.Size(551, 454)
        Me.TabPage7.TabIndex = 4
        Me.TabPage7.Text = "Loans"
        Me.TabPage7.UseVisualStyleBackColor = True
        '
        'BindingNavigator1
        '
        Me.BindingNavigator1.AddNewItem = Nothing
        Me.BindingNavigator1.CountItem = Nothing
        Me.BindingNavigator1.DeleteItem = Nothing
        Me.BindingNavigator1.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden
        Me.BindingNavigator1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.tsb_loanadd, Me.tsb_loanedit, Me.tsb_loandelete})
        Me.BindingNavigator1.Location = New System.Drawing.Point(3, 3)
        Me.BindingNavigator1.MoveFirstItem = Nothing
        Me.BindingNavigator1.MoveLastItem = Nothing
        Me.BindingNavigator1.MoveNextItem = Nothing
        Me.BindingNavigator1.MovePreviousItem = Nothing
        Me.BindingNavigator1.Name = "BindingNavigator1"
        Me.BindingNavigator1.PositionItem = Nothing
        Me.BindingNavigator1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.BindingNavigator1.Size = New System.Drawing.Size(545, 25)
        Me.BindingNavigator1.TabIndex = 1
        Me.BindingNavigator1.Text = "BindingNavigator1"
        '
        'tsb_loanadd
        '
        Me.tsb_loanadd.Image = Global.Payroll2.My.Resources.Resources.add_1
        Me.tsb_loanadd.Name = "tsb_loanadd"
        Me.tsb_loanadd.RightToLeftAutoMirrorImage = True
        Me.tsb_loanadd.Size = New System.Drawing.Size(49, 22)
        Me.tsb_loanadd.Text = "Add"
        '
        'tsb_loanedit
        '
        Me.tsb_loanedit.Image = Global.Payroll2.My.Resources.Resources.edit_1
        Me.tsb_loanedit.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tsb_loanedit.Name = "tsb_loanedit"
        Me.tsb_loanedit.Size = New System.Drawing.Size(47, 22)
        Me.tsb_loanedit.Text = "Edit"
        '
        'tsb_loandelete
        '
        Me.tsb_loandelete.Image = Global.Payroll2.My.Resources.Resources.garbage_2
        Me.tsb_loandelete.Name = "tsb_loandelete"
        Me.tsb_loandelete.RightToLeftAutoMirrorImage = True
        Me.tsb_loandelete.Size = New System.Drawing.Size(60, 22)
        Me.tsb_loandelete.Text = "Delete"
        '
        'TabPage5
        '
        Me.TabPage5.Controls.Add(Me.ToolStrip1)
        Me.TabPage5.Controls.Add(Me.dgv_insurance)
        Me.TabPage5.Location = New System.Drawing.Point(4, 22)
        Me.TabPage5.Name = "TabPage5"
        Me.TabPage5.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage5.Size = New System.Drawing.Size(551, 454)
        Me.TabPage5.TabIndex = 8
        Me.TabPage5.Text = "Insurance and Savings"
        Me.TabPage5.UseVisualStyleBackColor = True
        '
        'ToolStrip1
        '
        Me.ToolStrip1.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden
        Me.ToolStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.tsb_addinsureance, Me.tsb_deleteinsurance})
        Me.ToolStrip1.Location = New System.Drawing.Point(3, 3)
        Me.ToolStrip1.Name = "ToolStrip1"
        Me.ToolStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.ToolStrip1.Size = New System.Drawing.Size(545, 25)
        Me.ToolStrip1.TabIndex = 1
        Me.ToolStrip1.Text = "ToolStrip1"
        '
        'tsb_addinsureance
        '
        Me.tsb_addinsureance.Image = Global.Payroll2.My.Resources.Resources.add_1
        Me.tsb_addinsureance.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tsb_addinsureance.Name = "tsb_addinsureance"
        Me.tsb_addinsureance.Size = New System.Drawing.Size(49, 22)
        Me.tsb_addinsureance.Text = "Add"
        '
        'tsb_deleteinsurance
        '
        Me.tsb_deleteinsurance.Image = Global.Payroll2.My.Resources.Resources.garbage_2
        Me.tsb_deleteinsurance.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tsb_deleteinsurance.Name = "tsb_deleteinsurance"
        Me.tsb_deleteinsurance.Size = New System.Drawing.Size(60, 22)
        Me.tsb_deleteinsurance.Text = "Delete"
        '
        'dgv_insurance
        '
        Me.dgv_insurance.AllowUserToAddRows = False
        Me.dgv_insurance.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill
        Me.dgv_insurance.BackgroundColor = System.Drawing.Color.WhiteSmoke
        Me.dgv_insurance.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgv_insurance.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.Column8, Me.Column9, Me.Column6, Me.Column7})
        Me.dgv_insurance.Location = New System.Drawing.Point(3, 31)
        Me.dgv_insurance.MultiSelect = False
        Me.dgv_insurance.Name = "dgv_insurance"
        Me.dgv_insurance.RowHeadersVisible = False
        Me.dgv_insurance.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.AutoSizeToAllHeaders
        Me.dgv_insurance.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_insurance.Size = New System.Drawing.Size(545, 420)
        Me.dgv_insurance.TabIndex = 0
        '
        'Column8
        '
        Me.Column8.HeaderText = "insurance_id"
        Me.Column8.Name = "Column8"
        '
        'Column9
        '
        Me.Column9.HeaderText = "id_employee"
        Me.Column9.Name = "Column9"
        '
        'Column6
        '
        Me.Column6.HeaderText = "Insurance"
        Me.Column6.Name = "Column6"
        '
        'Column7
        '
        Me.Column7.HeaderText = "Amount"
        Me.Column7.Name = "Column7"
        '
        'TabPage8
        '
        Me.TabPage8.Controls.Add(Me.dgv_empleave)
        Me.TabPage8.Location = New System.Drawing.Point(4, 22)
        Me.TabPage8.Name = "TabPage8"
        Me.TabPage8.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage8.Size = New System.Drawing.Size(551, 454)
        Me.TabPage8.TabIndex = 5
        Me.TabPage8.Text = "Leave"
        Me.TabPage8.UseVisualStyleBackColor = True
        '
        'TabPage2
        '
        Me.TabPage2.Controls.Add(Me.dgv_overtime)
        Me.TabPage2.Location = New System.Drawing.Point(4, 22)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(551, 454)
        Me.TabPage2.TabIndex = 6
        Me.TabPage2.Text = "Overtime"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'dgv_overtime
        '
        Me.dgv_overtime.AllowUserToAddRows = False
        Me.dgv_overtime.AllowUserToDeleteRows = False
        Me.dgv_overtime.AllowUserToResizeRows = False
        Me.dgv_overtime.BackgroundColor = System.Drawing.Color.WhiteSmoke
        Me.dgv_overtime.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgv_overtime.Dock = System.Windows.Forms.DockStyle.Fill
        Me.dgv_overtime.Location = New System.Drawing.Point(3, 3)
        Me.dgv_overtime.MultiSelect = False
        Me.dgv_overtime.Name = "dgv_overtime"
        Me.dgv_overtime.ReadOnly = True
        Me.dgv_overtime.RowHeadersVisible = False
        Me.dgv_overtime.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_overtime.Size = New System.Drawing.Size(545, 448)
        Me.dgv_overtime.TabIndex = 0
        '
        'TabPage4
        '
        Me.TabPage4.Controls.Add(Me.dgv_travelorders)
        Me.TabPage4.Location = New System.Drawing.Point(4, 22)
        Me.TabPage4.Name = "TabPage4"
        Me.TabPage4.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage4.Size = New System.Drawing.Size(551, 454)
        Me.TabPage4.TabIndex = 7
        Me.TabPage4.Text = "Travel Orders"
        Me.TabPage4.UseVisualStyleBackColor = True
        '
        'dgv_travelorders
        '
        Me.dgv_travelorders.AllowUserToAddRows = False
        Me.dgv_travelorders.AllowUserToDeleteRows = False
        Me.dgv_travelorders.AllowUserToResizeColumns = False
        Me.dgv_travelorders.AllowUserToResizeRows = False
        Me.dgv_travelorders.BackgroundColor = System.Drawing.Color.WhiteSmoke
        Me.dgv_travelorders.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgv_travelorders.Dock = System.Windows.Forms.DockStyle.Fill
        Me.dgv_travelorders.Location = New System.Drawing.Point(3, 3)
        Me.dgv_travelorders.Name = "dgv_travelorders"
        Me.dgv_travelorders.ReadOnly = True
        Me.dgv_travelorders.RowHeadersVisible = False
        Me.dgv_travelorders.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.AutoSizeToAllHeaders
        Me.dgv_travelorders.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_travelorders.Size = New System.Drawing.Size(545, 448)
        Me.dgv_travelorders.TabIndex = 0
        '
        'tb_middlename
        '
        Me.tb_middlename.Location = New System.Drawing.Point(152, 76)
        Me.tb_middlename.Name = "tb_middlename"
        Me.tb_middlename.ReadOnly = True
        Me.tb_middlename.Size = New System.Drawing.Size(140, 20)
        Me.tb_middlename.TabIndex = 9
        '
        'tb_firstname
        '
        Me.tb_firstname.Location = New System.Drawing.Point(6, 76)
        Me.tb_firstname.Name = "tb_firstname"
        Me.tb_firstname.ReadOnly = True
        Me.tb_firstname.Size = New System.Drawing.Size(140, 20)
        Me.tb_firstname.TabIndex = 7
        '
        'tb_biometricid
        '
        Me.tb_biometricid.Location = New System.Drawing.Point(152, 36)
        Me.tb_biometricid.Name = "tb_biometricid"
        Me.tb_biometricid.ReadOnly = True
        Me.tb_biometricid.Size = New System.Drawing.Size(140, 20)
        Me.tb_biometricid.TabIndex = 3
        '
        'tb_employmentstatus
        '
        Me.tb_employmentstatus.Location = New System.Drawing.Point(152, 115)
        Me.tb_employmentstatus.Name = "tb_employmentstatus"
        Me.tb_employmentstatus.ReadOnly = True
        Me.tb_employmentstatus.Size = New System.Drawing.Size(140, 20)
        Me.tb_employmentstatus.TabIndex = 23
        '
        'tb_hdmfID
        '
        Me.tb_hdmfID.Location = New System.Drawing.Point(6, 270)
        Me.tb_hdmfID.Name = "tb_hdmfID"
        Me.tb_hdmfID.ReadOnly = True
        Me.tb_hdmfID.Size = New System.Drawing.Size(140, 20)
        Me.tb_hdmfID.TabIndex = 23
        '
        'tb_phicID
        '
        Me.tb_phicID.Location = New System.Drawing.Point(152, 232)
        Me.tb_phicID.Name = "tb_phicID"
        Me.tb_phicID.ReadOnly = True
        Me.tb_phicID.Size = New System.Drawing.Size(140, 20)
        Me.tb_phicID.TabIndex = 21
        '
        'tb_position
        '
        Me.tb_position.Location = New System.Drawing.Point(152, 193)
        Me.tb_position.Name = "tb_position"
        Me.tb_position.ReadOnly = True
        Me.tb_position.Size = New System.Drawing.Size(140, 20)
        Me.tb_position.TabIndex = 17
        '
        'tb_branch
        '
        Me.tb_branch.Location = New System.Drawing.Point(6, 193)
        Me.tb_branch.Name = "tb_branch"
        Me.tb_branch.ReadOnly = True
        Me.tb_branch.Size = New System.Drawing.Size(140, 20)
        Me.tb_branch.TabIndex = 15
        '
        'tb_company
        '
        Me.tb_company.Location = New System.Drawing.Point(6, 154)
        Me.tb_company.Name = "tb_company"
        Me.tb_company.ReadOnly = True
        Me.tb_company.Size = New System.Drawing.Size(286, 20)
        Me.tb_company.TabIndex = 13
        '
        'tb_sssID
        '
        Me.tb_sssID.Location = New System.Drawing.Point(6, 232)
        Me.tb_sssID.Name = "tb_sssID"
        Me.tb_sssID.ReadOnly = True
        Me.tb_sssID.Size = New System.Drawing.Size(140, 20)
        Me.tb_sssID.TabIndex = 19
        '
        'tb_empid
        '
        Me.tb_empid.Location = New System.Drawing.Point(6, 37)
        Me.tb_empid.Name = "tb_empid"
        Me.tb_empid.ReadOnly = True
        Me.tb_empid.Size = New System.Drawing.Size(140, 20)
        Me.tb_empid.TabIndex = 1
        '
        'tb_surname
        '
        Me.tb_surname.Location = New System.Drawing.Point(6, 115)
        Me.tb_surname.Name = "tb_surname"
        Me.tb_surname.ReadOnly = True
        Me.tb_surname.Size = New System.Drawing.Size(140, 20)
        Me.tb_surname.TabIndex = 5
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(149, 60)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(80, 13)
        Me.Label4.TabIndex = 8
        Me.Label4.Text = "Middle Name"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(3, 60)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(67, 13)
        Me.Label3.TabIndex = 6
        Me.Label3.Text = "First Name"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label9.Location = New System.Drawing.Point(149, 177)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(52, 13)
        Me.Label9.TabIndex = 16
        Me.Label9.Text = "Position"
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label8.Location = New System.Drawing.Point(3, 177)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(47, 13)
        Me.Label8.TabIndex = 14
        Me.Label8.Text = "Branch"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label7.Location = New System.Drawing.Point(3, 138)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(58, 13)
        Me.Label7.TabIndex = 12
        Me.Label7.Text = "Company"
        '
        'Label35
        '
        Me.Label35.AutoSize = True
        Me.Label35.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label35.Location = New System.Drawing.Point(149, 99)
        Me.Label35.Name = "Label35"
        Me.Label35.Size = New System.Drawing.Size(121, 13)
        Me.Label35.TabIndex = 22
        Me.Label35.Text = "Employement Status"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.Location = New System.Drawing.Point(149, 21)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(42, 13)
        Me.Label6.TabIndex = 2
        Me.Label6.Text = "Bio ID"
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label12.Location = New System.Drawing.Point(3, 255)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(42, 13)
        Me.Label12.TabIndex = 22
        Me.Label12.Text = "HDMF"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label11.Location = New System.Drawing.Point(148, 216)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(53, 13)
        Me.Label11.TabIndex = 20
        Me.Label11.Text = "PHIC ID"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label10.Location = New System.Drawing.Point(3, 216)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(48, 13)
        Me.Label10.TabIndex = 18
        Me.Label10.Text = "SSS ID"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(3, 21)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(78, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Employee ID"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(3, 99)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(56, 13)
        Me.Label2.TabIndex = 4
        Me.Label2.Text = "Surname"
        '
        'GroupBox4
        '
        Me.GroupBox4.Controls.Add(Me.chkbox_excluded)
        Me.GroupBox4.Controls.Add(Me.lbl_shift)
        Me.GroupBox4.Controls.Add(Me.Label37)
        Me.GroupBox4.Controls.Add(Me.dgv_shift)
        Me.GroupBox4.Controls.Add(Me.tb_employmentstatus)
        Me.GroupBox4.Controls.Add(Me.Label1)
        Me.GroupBox4.Controls.Add(Me.Label35)
        Me.GroupBox4.Controls.Add(Me.tb_middlename)
        Me.GroupBox4.Controls.Add(Me.Label2)
        Me.GroupBox4.Controls.Add(Me.tb_firstname)
        Me.GroupBox4.Controls.Add(Me.Label10)
        Me.GroupBox4.Controls.Add(Me.tb_biometricid)
        Me.GroupBox4.Controls.Add(Me.Label11)
        Me.GroupBox4.Controls.Add(Me.Label12)
        Me.GroupBox4.Controls.Add(Me.tb_hdmfID)
        Me.GroupBox4.Controls.Add(Me.Label6)
        Me.GroupBox4.Controls.Add(Me.tb_phicID)
        Me.GroupBox4.Controls.Add(Me.Label7)
        Me.GroupBox4.Controls.Add(Me.tb_position)
        Me.GroupBox4.Controls.Add(Me.Label8)
        Me.GroupBox4.Controls.Add(Me.tb_branch)
        Me.GroupBox4.Controls.Add(Me.Label9)
        Me.GroupBox4.Controls.Add(Me.tb_company)
        Me.GroupBox4.Controls.Add(Me.Label3)
        Me.GroupBox4.Controls.Add(Me.tb_sssID)
        Me.GroupBox4.Controls.Add(Me.Label4)
        Me.GroupBox4.Controls.Add(Me.tb_empid)
        Me.GroupBox4.Controls.Add(Me.tb_surname)
        Me.GroupBox4.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox4.Location = New System.Drawing.Point(2, 2)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(298, 479)
        Me.GroupBox4.TabIndex = 3
        Me.GroupBox4.TabStop = False
        Me.GroupBox4.Text = "Employee Details"
        '
        'chkbox_excluded
        '
        Me.chkbox_excluded.AutoSize = True
        Me.chkbox_excluded.Location = New System.Drawing.Point(167, 272)
        Me.chkbox_excluded.Name = "chkbox_excluded"
        Me.chkbox_excluded.Size = New System.Drawing.Size(127, 17)
        Me.chkbox_excluded.TabIndex = 27
        Me.chkbox_excluded.Text = "Excluded from Payroll"
        Me.chkbox_excluded.UseVisualStyleBackColor = True
        '
        'lbl_shift
        '
        Me.lbl_shift.AutoSize = True
        Me.lbl_shift.Location = New System.Drawing.Point(102, 301)
        Me.lbl_shift.Name = "lbl_shift"
        Me.lbl_shift.Size = New System.Drawing.Size(45, 13)
        Me.lbl_shift.TabIndex = 26
        Me.lbl_shift.Text = "Label38"
        '
        'Label37
        '
        Me.Label37.AutoSize = True
        Me.Label37.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label37.Location = New System.Drawing.Point(3, 301)
        Me.Label37.Name = "Label37"
        Me.Label37.Size = New System.Drawing.Size(90, 13)
        Me.Label37.TabIndex = 25
        Me.Label37.Text = "Shift Schedule"
        '
        'dgv_shift
        '
        Me.dgv_shift.AllowUserToAddRows = False
        Me.dgv_shift.AllowUserToDeleteRows = False
        Me.dgv_shift.AllowUserToResizeColumns = False
        Me.dgv_shift.AllowUserToResizeRows = False
        Me.dgv_shift.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill
        Me.dgv_shift.BackgroundColor = System.Drawing.SystemColors.ControlLightLight
        Me.dgv_shift.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgv_shift.Location = New System.Drawing.Point(6, 317)
        Me.dgv_shift.MultiSelect = False
        Me.dgv_shift.Name = "dgv_shift"
        Me.dgv_shift.RowHeadersVisible = False
        Me.dgv_shift.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.AutoSizeToAllHeaders
        Me.dgv_shift.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_shift.Size = New System.Drawing.Size(286, 155)
        Me.dgv_shift.TabIndex = 24
        '
        'cms_deduct
        '
        Me.cms_deduct.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.AddOtherDeductionToolStripMenuItem, Me.DeleteToolStripMenuItem})
        Me.cms_deduct.Name = "cms_deduct"
        Me.cms_deduct.Size = New System.Drawing.Size(108, 48)
        '
        'AddOtherDeductionToolStripMenuItem
        '
        Me.AddOtherDeductionToolStripMenuItem.Name = "AddOtherDeductionToolStripMenuItem"
        Me.AddOtherDeductionToolStripMenuItem.Size = New System.Drawing.Size(107, 22)
        Me.AddOtherDeductionToolStripMenuItem.Text = "Add"
        '
        'DeleteToolStripMenuItem
        '
        Me.DeleteToolStripMenuItem.Name = "DeleteToolStripMenuItem"
        Me.DeleteToolStripMenuItem.Size = New System.Drawing.Size(107, 22)
        Me.DeleteToolStripMenuItem.Text = "Delete"
        '
        'frmEmpDetails
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(864, 484)
        Me.Controls.Add(Me.GroupBox4)
        Me.Controls.Add(Me.TabControl2)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmEmpDetails"
        Me.ShowIcon = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Details"
        CType(Me.dgv_emploans, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.dgv_empleave, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabControl2.ResumeLayout(False)
        Me.TabPage1.ResumeLayout(False)
        Me.TabPage1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        CType(Me.dgv_incentives, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        CType(Me.dgv_otherdeduct, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.TabPage3.ResumeLayout(False)
        Me.FlowLayoutPanel1.ResumeLayout(False)
        CType(Me.dgv_emptimesheet, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabPage7.ResumeLayout(False)
        Me.TabPage7.PerformLayout()
        CType(Me.BindingNavigator1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.BindingNavigator1.ResumeLayout(False)
        Me.BindingNavigator1.PerformLayout()
        Me.TabPage5.ResumeLayout(False)
        Me.TabPage5.PerformLayout()
        Me.ToolStrip1.ResumeLayout(False)
        Me.ToolStrip1.PerformLayout()
        CType(Me.dgv_insurance, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabPage8.ResumeLayout(False)
        Me.TabPage2.ResumeLayout(False)
        CType(Me.dgv_overtime, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabPage4.ResumeLayout(False)
        CType(Me.dgv_travelorders, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox4.ResumeLayout(False)
        Me.GroupBox4.PerformLayout()
        CType(Me.dgv_shift, System.ComponentModel.ISupportInitialize).EndInit()
        Me.cms_deduct.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents dgv_emploans As System.Windows.Forms.DataGridView
    Friend WithEvents dgv_empleave As System.Windows.Forms.DataGridView
    Friend WithEvents TabControl2 As System.Windows.Forms.TabControl
    Friend WithEvents tb_middlename As System.Windows.Forms.TextBox
    Friend WithEvents tb_firstname As System.Windows.Forms.TextBox
    Friend WithEvents tb_hdmfID As System.Windows.Forms.TextBox
    Friend WithEvents tb_phicID As System.Windows.Forms.TextBox
    Friend WithEvents tb_position As System.Windows.Forms.TextBox
    Friend WithEvents tb_branch As System.Windows.Forms.TextBox
    Friend WithEvents tb_company As System.Windows.Forms.TextBox
    Friend WithEvents tb_sssID As System.Windows.Forms.TextBox
    Friend WithEvents tb_surname As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents Label12 As System.Windows.Forms.Label
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents TabPage3 As System.Windows.Forms.TabPage
    Friend WithEvents dgv_emptimesheet As System.Windows.Forms.DataGridView
    Friend WithEvents tb_empid As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents tb_biometricid As System.Windows.Forms.TextBox
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents dtp_timesheetmonth As System.Windows.Forms.DateTimePicker
    Friend WithEvents btn_loadtimesheet As System.Windows.Forms.Button
    Friend WithEvents TabPage1 As System.Windows.Forms.TabPage
    Friend WithEvents Label30 As System.Windows.Forms.Label
    Friend WithEvents Label28 As System.Windows.Forms.Label
    Friend WithEvents Label27 As System.Windows.Forms.Label
    Friend WithEvents Label26 As System.Windows.Forms.Label
    Friend WithEvents Label25 As System.Windows.Forms.Label
    Friend WithEvents Label24 As System.Windows.Forms.Label
    Friend WithEvents Label23 As System.Windows.Forms.Label
    Friend WithEvents tb_hdmf As System.Windows.Forms.TextBox
    Friend WithEvents tb_phic As System.Windows.Forms.TextBox
    Friend WithEvents tb_sss As System.Windows.Forms.TextBox
    Friend WithEvents tb_tax As System.Windows.Forms.TextBox
    Friend WithEvents tb_undertime As System.Windows.Forms.TextBox
    Friend WithEvents tb_late As System.Windows.Forms.TextBox
    Friend WithEvents Label22 As System.Windows.Forms.Label
    Friend WithEvents tb_taxableincome As System.Windows.Forms.TextBox
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents Label18 As System.Windows.Forms.Label
    Friend WithEvents Label17 As System.Windows.Forms.Label
    Friend WithEvents tb_holidayot As System.Windows.Forms.TextBox
    Friend WithEvents Label16 As System.Windows.Forms.Label
    Friend WithEvents tb_grosspay As System.Windows.Forms.TextBox
    Friend WithEvents tb_regularot As System.Windows.Forms.TextBox
    Friend WithEvents tb_income As System.Windows.Forms.TextBox
    Friend WithEvents Label15 As System.Windows.Forms.Label
    Friend WithEvents tb_netincome As System.Windows.Forms.TextBox
    Friend WithEvents TabPage7 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage8 As System.Windows.Forms.TabPage
    Friend WithEvents Label32 As System.Windows.Forms.Label
    Friend WithEvents lbl_cutoff As System.Windows.Forms.Label
    Friend WithEvents btn_savepayslip As System.Windows.Forms.Button
    Friend WithEvents Label33 As System.Windows.Forms.Label
    Friend WithEvents Label34 As System.Windows.Forms.Label
    Friend WithEvents tb_employmentstatus As System.Windows.Forms.TextBox
    Friend WithEvents Label35 As System.Windows.Forms.Label
    Friend WithEvents Label36 As System.Windows.Forms.Label
    Friend WithEvents tb_netpaywithtax As System.Windows.Forms.TextBox
    Friend WithEvents GroupBox4 As System.Windows.Forms.GroupBox
    Friend WithEvents TabPage2 As System.Windows.Forms.TabPage
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents tb_absents As System.Windows.Forms.TextBox
    Friend WithEvents dgv_overtime As System.Windows.Forms.DataGridView
    Friend WithEvents dgv_shift As System.Windows.Forms.DataGridView
    Friend WithEvents Label37 As System.Windows.Forms.Label
    Friend WithEvents BindingNavigator1 As System.Windows.Forms.BindingNavigator
    Friend WithEvents tsb_loanadd As System.Windows.Forms.ToolStripButton
    Friend WithEvents tsb_loandelete As System.Windows.Forms.ToolStripButton
    Friend WithEvents btn_addtimesheet As System.Windows.Forms.Button
    Friend WithEvents lbl_shift As System.Windows.Forms.Label
    Friend WithEvents TabPage4 As System.Windows.Forms.TabPage
    Friend WithEvents dgv_travelorders As System.Windows.Forms.DataGridView
    Friend WithEvents Label39 As System.Windows.Forms.Label
    Friend WithEvents dtp_timesheetmonth2 As System.Windows.Forms.DateTimePicker
    Friend WithEvents TabPage5 As System.Windows.Forms.TabPage
    Friend WithEvents dgv_insurance As System.Windows.Forms.DataGridView
    Friend WithEvents ToolStrip1 As System.Windows.Forms.ToolStrip
    Friend WithEvents tsb_addinsureance As System.Windows.Forms.ToolStripButton
    Friend WithEvents tsb_deleteinsurance As System.Windows.Forms.ToolStripButton
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents btn_deldeduct As System.Windows.Forms.Button
    Friend WithEvents btn_adddeduct As System.Windows.Forms.Button
    Friend WithEvents Label38 As System.Windows.Forms.Label
    Friend WithEvents dgv_otherdeduct As System.Windows.Forms.DataGridView
    Friend WithEvents Label29 As System.Windows.Forms.Label
    Friend WithEvents Label14 As System.Windows.Forms.Label
    Friend WithEvents Label21 As System.Windows.Forms.Label
    Friend WithEvents tb_totaldeductions As System.Windows.Forms.TextBox
    Friend WithEvents tb_insurance As System.Windows.Forms.TextBox
    Friend WithEvents tb_loans As System.Windows.Forms.TextBox
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents dgv_incentives As System.Windows.Forms.DataGridView
    Friend WithEvents btn_delincentive As System.Windows.Forms.Button
    Friend WithEvents btn_addincentive As System.Windows.Forms.Button
    Friend WithEvents Label31 As System.Windows.Forms.Label
    Friend WithEvents tb_totalbenefits As System.Windows.Forms.TextBox
    Friend WithEvents Label19 As System.Windows.Forms.Label
    Friend WithEvents tb_allowance As System.Windows.Forms.TextBox
    Friend WithEvents FlowLayoutPanel1 As System.Windows.Forms.FlowLayoutPanel
    Friend WithEvents cms_deduct As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents AddOtherDeductionToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents DeleteToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents chkbox_excluded As System.Windows.Forms.CheckBox
    Friend WithEvents Column3 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Column4 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Column5 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn3 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Column1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Column2 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents tsb_loanedit As System.Windows.Forms.ToolStripButton
    Friend WithEvents Column8 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Column9 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Column6 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Column7 As System.Windows.Forms.DataGridViewTextBoxColumn
End Class
