<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmSettings
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
        Dim DataGridViewCellStyle19 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle20 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle21 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle22 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle23 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle24 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle25 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle26 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle27 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmSettings))
        Me.TabControl1 = New System.Windows.Forms.TabControl()
        Me.TabPage1 = New System.Windows.Forms.TabPage()
        Me.TabPage2 = New System.Windows.Forms.TabPage()
        Me.TabControl2 = New System.Windows.Forms.TabControl()
        Me.TabPage5 = New System.Windows.Forms.TabPage()
        Me.dgv_tax = New System.Windows.Forms.DataGridView()
        Me.TabPage6 = New System.Windows.Forms.TabPage()
        Me.dgv_sss = New System.Windows.Forms.DataGridView()
        Me.TabPage7 = New System.Windows.Forms.TabPage()
        Me.dgv_philhealth = New System.Windows.Forms.DataGridView()
        Me.TabPage8 = New System.Windows.Forms.TabPage()
        Me.TabPage3 = New System.Windows.Forms.TabPage()
        Me.dgv_holiday = New System.Windows.Forms.DataGridView()
        Me.TabPage4 = New System.Windows.Forms.TabPage()
        Me.group_sync = New System.Windows.Forms.GroupBox()
        Me.btn_syncleaves = New System.Windows.Forms.Button()
        Me.btn_syncovertime = New System.Windows.Forms.Button()
        Me.btn_syncemployees = New System.Windows.Forms.Button()
        Me.btn_syncloans = New System.Windows.Forms.Button()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.group_export = New System.Windows.Forms.GroupBox()
        Me.btn_exportcutoff = New System.Windows.Forms.Button()
        Me.cb_exportpayslipopt = New System.Windows.Forms.ComboBox()
        Me.cb_exportoptions = New System.Windows.Forms.ComboBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.btn_exportpayslip = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.btn_resettimesheet = New System.Windows.Forms.Button()
        Me.btn_exporttimesheet = New System.Windows.Forms.Button()
        Me.TabPage9 = New System.Windows.Forms.TabPage()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.BindingNavigator1 = New System.Windows.Forms.BindingNavigator(Me.components)
        Me.BindingNavigatorAddNewItem = New System.Windows.Forms.ToolStripButton()
        Me.BindingNavigatorDeleteItem = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripButton1 = New System.Windows.Forms.ToolStripButton()
        Me.dgv_users = New System.Windows.Forms.DataGridView()
        Me.TabControl1.SuspendLayout()
        Me.TabPage2.SuspendLayout()
        Me.TabControl2.SuspendLayout()
        Me.TabPage5.SuspendLayout()
        CType(Me.dgv_tax, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabPage6.SuspendLayout()
        CType(Me.dgv_sss, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabPage7.SuspendLayout()
        CType(Me.dgv_philhealth, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabPage3.SuspendLayout()
        CType(Me.dgv_holiday, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabPage4.SuspendLayout()
        Me.group_sync.SuspendLayout()
        Me.group_export.SuspendLayout()
        Me.TabPage9.SuspendLayout()
        Me.Panel1.SuspendLayout()
        CType(Me.BindingNavigator1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.BindingNavigator1.SuspendLayout()
        CType(Me.dgv_users, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'TabControl1
        '
        Me.TabControl1.Alignment = System.Windows.Forms.TabAlignment.Left
        Me.TabControl1.Controls.Add(Me.TabPage1)
        Me.TabControl1.Controls.Add(Me.TabPage2)
        Me.TabControl1.Controls.Add(Me.TabPage3)
        Me.TabControl1.Controls.Add(Me.TabPage4)
        Me.TabControl1.Controls.Add(Me.TabPage9)
        Me.TabControl1.DrawMode = System.Windows.Forms.TabDrawMode.OwnerDrawFixed
        Me.TabControl1.ItemSize = New System.Drawing.Size(30, 120)
        Me.TabControl1.Location = New System.Drawing.Point(2, 2)
        Me.TabControl1.Multiline = True
        Me.TabControl1.Name = "TabControl1"
        Me.TabControl1.SelectedIndex = 0
        Me.TabControl1.Size = New System.Drawing.Size(521, 303)
        Me.TabControl1.SizeMode = System.Windows.Forms.TabSizeMode.Fixed
        Me.TabControl1.TabIndex = 0
        '
        'TabPage1
        '
        Me.TabPage1.Location = New System.Drawing.Point(124, 4)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage1.Size = New System.Drawing.Size(393, 295)
        Me.TabPage1.TabIndex = 0
        Me.TabPage1.Text = "Application"
        Me.TabPage1.UseVisualStyleBackColor = True
        '
        'TabPage2
        '
        Me.TabPage2.Controls.Add(Me.TabControl2)
        Me.TabPage2.Location = New System.Drawing.Point(124, 4)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(393, 295)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "Deductables"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'TabControl2
        '
        Me.TabControl2.Controls.Add(Me.TabPage5)
        Me.TabControl2.Controls.Add(Me.TabPage6)
        Me.TabControl2.Controls.Add(Me.TabPage7)
        Me.TabControl2.Controls.Add(Me.TabPage8)
        Me.TabControl2.Dock = System.Windows.Forms.DockStyle.Fill
        Me.TabControl2.Location = New System.Drawing.Point(3, 3)
        Me.TabControl2.Name = "TabControl2"
        Me.TabControl2.SelectedIndex = 0
        Me.TabControl2.Size = New System.Drawing.Size(387, 289)
        Me.TabControl2.TabIndex = 0
        '
        'TabPage5
        '
        Me.TabPage5.Controls.Add(Me.dgv_tax)
        Me.TabPage5.Location = New System.Drawing.Point(4, 22)
        Me.TabPage5.Name = "TabPage5"
        Me.TabPage5.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage5.Size = New System.Drawing.Size(379, 263)
        Me.TabPage5.TabIndex = 0
        Me.TabPage5.Text = "Tax Range"
        Me.TabPage5.UseVisualStyleBackColor = True
        '
        'dgv_tax
        '
        Me.dgv_tax.AllowUserToResizeColumns = False
        Me.dgv_tax.AllowUserToResizeRows = False
        Me.dgv_tax.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.dgv_tax.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells
        DataGridViewCellStyle19.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle19.BackColor = System.Drawing.SystemColors.Control
        DataGridViewCellStyle19.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle19.ForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle19.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle19.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle19.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgv_tax.ColumnHeadersDefaultCellStyle = DataGridViewCellStyle19
        Me.dgv_tax.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        DataGridViewCellStyle20.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle20.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle20.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle20.ForeColor = System.Drawing.SystemColors.ControlText
        DataGridViewCellStyle20.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle20.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle20.WrapMode = System.Windows.Forms.DataGridViewTriState.[False]
        Me.dgv_tax.DefaultCellStyle = DataGridViewCellStyle20
        Me.dgv_tax.Dock = System.Windows.Forms.DockStyle.Fill
        Me.dgv_tax.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnF2
        Me.dgv_tax.Location = New System.Drawing.Point(3, 3)
        Me.dgv_tax.MultiSelect = False
        Me.dgv_tax.Name = "dgv_tax"
        DataGridViewCellStyle21.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle21.BackColor = System.Drawing.SystemColors.Control
        DataGridViewCellStyle21.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle21.ForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle21.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle21.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle21.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgv_tax.RowHeadersDefaultCellStyle = DataGridViewCellStyle21
        Me.dgv_tax.RowHeadersVisible = False
        Me.dgv_tax.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_tax.Size = New System.Drawing.Size(373, 257)
        Me.dgv_tax.TabIndex = 0
        '
        'TabPage6
        '
        Me.TabPage6.Controls.Add(Me.dgv_sss)
        Me.TabPage6.Location = New System.Drawing.Point(4, 22)
        Me.TabPage6.Name = "TabPage6"
        Me.TabPage6.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage6.Size = New System.Drawing.Size(379, 263)
        Me.TabPage6.TabIndex = 1
        Me.TabPage6.Text = "SSS"
        Me.TabPage6.UseVisualStyleBackColor = True
        '
        'dgv_sss
        '
        Me.dgv_sss.AllowUserToResizeColumns = False
        Me.dgv_sss.AllowUserToResizeRows = False
        Me.dgv_sss.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.dgv_sss.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells
        DataGridViewCellStyle22.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle22.BackColor = System.Drawing.SystemColors.Control
        DataGridViewCellStyle22.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle22.ForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle22.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle22.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle22.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgv_sss.ColumnHeadersDefaultCellStyle = DataGridViewCellStyle22
        Me.dgv_sss.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        DataGridViewCellStyle23.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle23.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle23.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle23.ForeColor = System.Drawing.SystemColors.ControlText
        DataGridViewCellStyle23.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle23.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle23.WrapMode = System.Windows.Forms.DataGridViewTriState.[False]
        Me.dgv_sss.DefaultCellStyle = DataGridViewCellStyle23
        Me.dgv_sss.Dock = System.Windows.Forms.DockStyle.Fill
        Me.dgv_sss.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnF2
        Me.dgv_sss.Location = New System.Drawing.Point(3, 3)
        Me.dgv_sss.MultiSelect = False
        Me.dgv_sss.Name = "dgv_sss"
        DataGridViewCellStyle24.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle24.BackColor = System.Drawing.SystemColors.Control
        DataGridViewCellStyle24.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle24.ForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle24.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle24.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle24.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgv_sss.RowHeadersDefaultCellStyle = DataGridViewCellStyle24
        Me.dgv_sss.RowHeadersVisible = False
        Me.dgv_sss.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_sss.Size = New System.Drawing.Size(373, 257)
        Me.dgv_sss.TabIndex = 0
        '
        'TabPage7
        '
        Me.TabPage7.Controls.Add(Me.dgv_philhealth)
        Me.TabPage7.Location = New System.Drawing.Point(4, 22)
        Me.TabPage7.Name = "TabPage7"
        Me.TabPage7.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage7.Size = New System.Drawing.Size(379, 263)
        Me.TabPage7.TabIndex = 2
        Me.TabPage7.Text = "PhilHealth"
        Me.TabPage7.UseVisualStyleBackColor = True
        '
        'dgv_philhealth
        '
        Me.dgv_philhealth.AllowUserToResizeColumns = False
        Me.dgv_philhealth.AllowUserToResizeRows = False
        Me.dgv_philhealth.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.dgv_philhealth.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells
        DataGridViewCellStyle25.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle25.BackColor = System.Drawing.SystemColors.Control
        DataGridViewCellStyle25.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle25.ForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle25.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle25.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle25.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgv_philhealth.ColumnHeadersDefaultCellStyle = DataGridViewCellStyle25
        Me.dgv_philhealth.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        DataGridViewCellStyle26.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle26.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle26.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle26.ForeColor = System.Drawing.SystemColors.ControlText
        DataGridViewCellStyle26.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle26.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle26.WrapMode = System.Windows.Forms.DataGridViewTriState.[False]
        Me.dgv_philhealth.DefaultCellStyle = DataGridViewCellStyle26
        Me.dgv_philhealth.Dock = System.Windows.Forms.DockStyle.Fill
        Me.dgv_philhealth.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnF2
        Me.dgv_philhealth.Location = New System.Drawing.Point(3, 3)
        Me.dgv_philhealth.MultiSelect = False
        Me.dgv_philhealth.Name = "dgv_philhealth"
        DataGridViewCellStyle27.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle27.BackColor = System.Drawing.SystemColors.Control
        DataGridViewCellStyle27.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle27.ForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle27.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle27.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle27.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgv_philhealth.RowHeadersDefaultCellStyle = DataGridViewCellStyle27
        Me.dgv_philhealth.RowHeadersVisible = False
        Me.dgv_philhealth.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_philhealth.Size = New System.Drawing.Size(373, 257)
        Me.dgv_philhealth.TabIndex = 0
        '
        'TabPage8
        '
        Me.TabPage8.Location = New System.Drawing.Point(4, 22)
        Me.TabPage8.Name = "TabPage8"
        Me.TabPage8.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage8.Size = New System.Drawing.Size(379, 263)
        Me.TabPage8.TabIndex = 3
        Me.TabPage8.Text = "HDMF"
        Me.TabPage8.UseVisualStyleBackColor = True
        '
        'TabPage3
        '
        Me.TabPage3.Controls.Add(Me.dgv_holiday)
        Me.TabPage3.Location = New System.Drawing.Point(124, 4)
        Me.TabPage3.Name = "TabPage3"
        Me.TabPage3.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage3.Size = New System.Drawing.Size(393, 295)
        Me.TabPage3.TabIndex = 2
        Me.TabPage3.Text = "Holidays"
        Me.TabPage3.UseVisualStyleBackColor = True
        '
        'dgv_holiday
        '
        Me.dgv_holiday.AllowUserToResizeColumns = False
        Me.dgv_holiday.AllowUserToResizeRows = False
        Me.dgv_holiday.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill
        Me.dgv_holiday.BackgroundColor = System.Drawing.SystemColors.ControlLightLight
        Me.dgv_holiday.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.dgv_holiday.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgv_holiday.Dock = System.Windows.Forms.DockStyle.Fill
        Me.dgv_holiday.Location = New System.Drawing.Point(3, 3)
        Me.dgv_holiday.Name = "dgv_holiday"
        Me.dgv_holiday.RowHeadersVisible = False
        Me.dgv_holiday.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_holiday.Size = New System.Drawing.Size(387, 289)
        Me.dgv_holiday.TabIndex = 0
        '
        'TabPage4
        '
        Me.TabPage4.Controls.Add(Me.group_sync)
        Me.TabPage4.Controls.Add(Me.group_export)
        Me.TabPage4.Location = New System.Drawing.Point(124, 4)
        Me.TabPage4.Name = "TabPage4"
        Me.TabPage4.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage4.Size = New System.Drawing.Size(393, 295)
        Me.TabPage4.TabIndex = 3
        Me.TabPage4.Text = "Sync & Exports"
        Me.TabPage4.UseVisualStyleBackColor = True
        '
        'group_sync
        '
        Me.group_sync.Controls.Add(Me.btn_syncleaves)
        Me.group_sync.Controls.Add(Me.btn_syncovertime)
        Me.group_sync.Controls.Add(Me.btn_syncemployees)
        Me.group_sync.Controls.Add(Me.btn_syncloans)
        Me.group_sync.Controls.Add(Me.Label8)
        Me.group_sync.Controls.Add(Me.Label6)
        Me.group_sync.Controls.Add(Me.Label7)
        Me.group_sync.Controls.Add(Me.Label4)
        Me.group_sync.Location = New System.Drawing.Point(7, 151)
        Me.group_sync.Name = "group_sync"
        Me.group_sync.Size = New System.Drawing.Size(379, 138)
        Me.group_sync.TabIndex = 4
        Me.group_sync.TabStop = False
        Me.group_sync.Text = "Syncronize"
        '
        'btn_syncleaves
        '
        Me.btn_syncleaves.Location = New System.Drawing.Point(279, 107)
        Me.btn_syncleaves.Name = "btn_syncleaves"
        Me.btn_syncleaves.Size = New System.Drawing.Size(84, 23)
        Me.btn_syncleaves.TabIndex = 1
        Me.btn_syncleaves.Text = "Sync"
        Me.btn_syncleaves.UseVisualStyleBackColor = True
        '
        'btn_syncovertime
        '
        Me.btn_syncovertime.Location = New System.Drawing.Point(279, 78)
        Me.btn_syncovertime.Name = "btn_syncovertime"
        Me.btn_syncovertime.Size = New System.Drawing.Size(84, 23)
        Me.btn_syncovertime.TabIndex = 1
        Me.btn_syncovertime.Text = "Sync"
        Me.btn_syncovertime.UseVisualStyleBackColor = True
        '
        'btn_syncemployees
        '
        Me.btn_syncemployees.Location = New System.Drawing.Point(279, 19)
        Me.btn_syncemployees.Name = "btn_syncemployees"
        Me.btn_syncemployees.Size = New System.Drawing.Size(84, 23)
        Me.btn_syncemployees.TabIndex = 1
        Me.btn_syncemployees.Text = "Sync"
        Me.btn_syncemployees.UseVisualStyleBackColor = True
        '
        'btn_syncloans
        '
        Me.btn_syncloans.Location = New System.Drawing.Point(279, 49)
        Me.btn_syncloans.Name = "btn_syncloans"
        Me.btn_syncloans.Size = New System.Drawing.Size(84, 23)
        Me.btn_syncloans.TabIndex = 1
        Me.btn_syncloans.Text = "Sync"
        Me.btn_syncloans.UseVisualStyleBackColor = True
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(8, 112)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(42, 13)
        Me.Label8.TabIndex = 0
        Me.Label8.Text = "Leaves"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(8, 83)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(49, 13)
        Me.Label6.TabIndex = 0
        Me.Label6.Text = "Overtime"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(8, 24)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(58, 13)
        Me.Label7.TabIndex = 0
        Me.Label7.Text = "Employees"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(8, 54)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(36, 13)
        Me.Label4.TabIndex = 0
        Me.Label4.Text = "Loans"
        '
        'group_export
        '
        Me.group_export.Controls.Add(Me.btn_exportcutoff)
        Me.group_export.Controls.Add(Me.cb_exportpayslipopt)
        Me.group_export.Controls.Add(Me.cb_exportoptions)
        Me.group_export.Controls.Add(Me.Label5)
        Me.group_export.Controls.Add(Me.Label3)
        Me.group_export.Controls.Add(Me.btn_exportpayslip)
        Me.group_export.Controls.Add(Me.Label1)
        Me.group_export.Controls.Add(Me.Label2)
        Me.group_export.Controls.Add(Me.btn_resettimesheet)
        Me.group_export.Controls.Add(Me.btn_exporttimesheet)
        Me.group_export.Location = New System.Drawing.Point(6, 6)
        Me.group_export.Name = "group_export"
        Me.group_export.Size = New System.Drawing.Size(380, 139)
        Me.group_export.TabIndex = 3
        Me.group_export.TabStop = False
        Me.group_export.Text = "Exports"
        '
        'btn_exportcutoff
        '
        Me.btn_exportcutoff.Location = New System.Drawing.Point(289, 104)
        Me.btn_exportcutoff.Name = "btn_exportcutoff"
        Me.btn_exportcutoff.Size = New System.Drawing.Size(75, 23)
        Me.btn_exportcutoff.TabIndex = 1
        Me.btn_exportcutoff.Text = "Export"
        Me.btn_exportcutoff.UseVisualStyleBackColor = True
        '
        'cb_exportpayslipopt
        '
        Me.cb_exportpayslipopt.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cb_exportpayslipopt.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.cb_exportpayslipopt.FormattingEnabled = True
        Me.cb_exportpayslipopt.Items.AddRange(New Object() {"Export to Excel", "Directly Save to HRIS Database"})
        Me.cb_exportpayslipopt.Location = New System.Drawing.Point(117, 77)
        Me.cb_exportpayslipopt.Name = "cb_exportpayslipopt"
        Me.cb_exportpayslipopt.Size = New System.Drawing.Size(166, 21)
        Me.cb_exportpayslipopt.TabIndex = 2
        '
        'cb_exportoptions
        '
        Me.cb_exportoptions.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cb_exportoptions.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.cb_exportoptions.FormattingEnabled = True
        Me.cb_exportoptions.Items.AddRange(New Object() {"Export to Excel", "Directly Save to HRIS Database"})
        Me.cb_exportoptions.Location = New System.Drawing.Point(117, 19)
        Me.cb_exportoptions.Name = "cb_exportoptions"
        Me.cb_exportoptions.Size = New System.Drawing.Size(166, 21)
        Me.cb_exportoptions.TabIndex = 2
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(5, 109)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(35, 13)
        Me.Label5.TabIndex = 0
        Me.Label5.Text = "Cutoff"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(5, 80)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(73, 13)
        Me.Label3.TabIndex = 0
        Me.Label3.Text = "Export Payslip"
        '
        'btn_exportpayslip
        '
        Me.btn_exportpayslip.Location = New System.Drawing.Point(289, 75)
        Me.btn_exportpayslip.Name = "btn_exportpayslip"
        Me.btn_exportpayslip.Size = New System.Drawing.Size(75, 23)
        Me.btn_exportpayslip.TabIndex = 1
        Me.btn_exportpayslip.Text = "Export"
        Me.btn_exportpayslip.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(5, 22)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(85, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Export timesheet"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(5, 51)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(106, 13)
        Me.Label2.TabIndex = 0
        Me.Label2.Text = "Reset temptimesheet"
        '
        'btn_resettimesheet
        '
        Me.btn_resettimesheet.Location = New System.Drawing.Point(289, 46)
        Me.btn_resettimesheet.Name = "btn_resettimesheet"
        Me.btn_resettimesheet.Size = New System.Drawing.Size(75, 23)
        Me.btn_resettimesheet.TabIndex = 1
        Me.btn_resettimesheet.Text = "Reset"
        Me.btn_resettimesheet.UseVisualStyleBackColor = True
        '
        'btn_exporttimesheet
        '
        Me.btn_exporttimesheet.Location = New System.Drawing.Point(289, 17)
        Me.btn_exporttimesheet.Name = "btn_exporttimesheet"
        Me.btn_exporttimesheet.Size = New System.Drawing.Size(75, 23)
        Me.btn_exporttimesheet.TabIndex = 1
        Me.btn_exporttimesheet.Text = "Export"
        Me.btn_exporttimesheet.UseVisualStyleBackColor = True
        '
        'TabPage9
        '
        Me.TabPage9.Controls.Add(Me.Panel1)
        Me.TabPage9.Location = New System.Drawing.Point(124, 4)
        Me.TabPage9.Name = "TabPage9"
        Me.TabPage9.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage9.Size = New System.Drawing.Size(393, 295)
        Me.TabPage9.TabIndex = 4
        Me.TabPage9.Text = "Users"
        Me.TabPage9.UseVisualStyleBackColor = True
        '
        'Panel1
        '
        Me.Panel1.Controls.Add(Me.BindingNavigator1)
        Me.Panel1.Controls.Add(Me.dgv_users)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.Panel1.Location = New System.Drawing.Point(3, 3)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(387, 289)
        Me.Panel1.TabIndex = 1
        '
        'BindingNavigator1
        '
        Me.BindingNavigator1.AddNewItem = Nothing
        Me.BindingNavigator1.CountItem = Nothing
        Me.BindingNavigator1.DeleteItem = Nothing
        Me.BindingNavigator1.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden
        Me.BindingNavigator1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.BindingNavigatorAddNewItem, Me.ToolStripButton1, Me.BindingNavigatorDeleteItem})
        Me.BindingNavigator1.Location = New System.Drawing.Point(0, 0)
        Me.BindingNavigator1.MoveFirstItem = Nothing
        Me.BindingNavigator1.MoveLastItem = Nothing
        Me.BindingNavigator1.MoveNextItem = Nothing
        Me.BindingNavigator1.MovePreviousItem = Nothing
        Me.BindingNavigator1.Name = "BindingNavigator1"
        Me.BindingNavigator1.PositionItem = Nothing
        Me.BindingNavigator1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.BindingNavigator1.Size = New System.Drawing.Size(387, 25)
        Me.BindingNavigator1.TabIndex = 1
        Me.BindingNavigator1.Text = "BindingNavigator1"
        '
        'BindingNavigatorAddNewItem
        '
        Me.BindingNavigatorAddNewItem.Image = CType(resources.GetObject("BindingNavigatorAddNewItem.Image"), System.Drawing.Image)
        Me.BindingNavigatorAddNewItem.Name = "BindingNavigatorAddNewItem"
        Me.BindingNavigatorAddNewItem.RightToLeftAutoMirrorImage = True
        Me.BindingNavigatorAddNewItem.Size = New System.Drawing.Size(49, 22)
        Me.BindingNavigatorAddNewItem.Text = "Add"
        '
        'BindingNavigatorDeleteItem
        '
        Me.BindingNavigatorDeleteItem.Image = CType(resources.GetObject("BindingNavigatorDeleteItem.Image"), System.Drawing.Image)
        Me.BindingNavigatorDeleteItem.Name = "BindingNavigatorDeleteItem"
        Me.BindingNavigatorDeleteItem.RightToLeftAutoMirrorImage = True
        Me.BindingNavigatorDeleteItem.Size = New System.Drawing.Size(60, 22)
        Me.BindingNavigatorDeleteItem.Text = "Delete"
        '
        'ToolStripButton1
        '
        Me.ToolStripButton1.Image = CType(resources.GetObject("ToolStripButton1.Image"), System.Drawing.Image)
        Me.ToolStripButton1.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.ToolStripButton1.Name = "ToolStripButton1"
        Me.ToolStripButton1.Size = New System.Drawing.Size(47, 22)
        Me.ToolStripButton1.Text = "Edit"
        '
        'dgv_users
        '
        Me.dgv_users.AllowUserToAddRows = False
        Me.dgv_users.AllowUserToDeleteRows = False
        Me.dgv_users.AllowUserToResizeColumns = False
        Me.dgv_users.AllowUserToResizeRows = False
        Me.dgv_users.BackgroundColor = System.Drawing.SystemColors.ControlLightLight
        Me.dgv_users.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgv_users.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnF2
        Me.dgv_users.Location = New System.Drawing.Point(0, 28)
        Me.dgv_users.Name = "dgv_users"
        Me.dgv_users.ReadOnly = True
        Me.dgv_users.RowHeadersVisible = False
        Me.dgv_users.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_users.Size = New System.Drawing.Size(387, 261)
        Me.dgv_users.TabIndex = 0
        '
        'frmSettings
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(524, 306)
        Me.Controls.Add(Me.TabControl1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmSettings"
        Me.ShowIcon = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Settings"
        Me.TabControl1.ResumeLayout(False)
        Me.TabPage2.ResumeLayout(False)
        Me.TabControl2.ResumeLayout(False)
        Me.TabPage5.ResumeLayout(False)
        CType(Me.dgv_tax, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabPage6.ResumeLayout(False)
        CType(Me.dgv_sss, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabPage7.ResumeLayout(False)
        CType(Me.dgv_philhealth, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabPage3.ResumeLayout(False)
        CType(Me.dgv_holiday, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabPage4.ResumeLayout(False)
        Me.group_sync.ResumeLayout(False)
        Me.group_sync.PerformLayout()
        Me.group_export.ResumeLayout(False)
        Me.group_export.PerformLayout()
        Me.TabPage9.ResumeLayout(False)
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        CType(Me.BindingNavigator1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.BindingNavigator1.ResumeLayout(False)
        Me.BindingNavigator1.PerformLayout()
        CType(Me.dgv_users, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents TabControl1 As System.Windows.Forms.TabControl
    Friend WithEvents TabPage1 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage2 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage3 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage4 As System.Windows.Forms.TabPage
    Friend WithEvents TabControl2 As System.Windows.Forms.TabControl
    Friend WithEvents TabPage5 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage6 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage7 As System.Windows.Forms.TabPage
    Friend WithEvents dgv_tax As System.Windows.Forms.DataGridView
    Friend WithEvents dgv_sss As System.Windows.Forms.DataGridView
    Friend WithEvents dgv_philhealth As System.Windows.Forms.DataGridView
    Friend WithEvents dgv_holiday As System.Windows.Forms.DataGridView
    Friend WithEvents cb_exportoptions As System.Windows.Forms.ComboBox
    Friend WithEvents btn_resettimesheet As System.Windows.Forms.Button
    Friend WithEvents btn_exporttimesheet As System.Windows.Forms.Button
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents cb_exportpayslipopt As System.Windows.Forms.ComboBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents btn_exportpayslip As System.Windows.Forms.Button
    Friend WithEvents group_export As System.Windows.Forms.GroupBox
    Friend WithEvents TabPage8 As System.Windows.Forms.TabPage
    Friend WithEvents group_sync As System.Windows.Forms.GroupBox
    Friend WithEvents btn_syncloans As System.Windows.Forms.Button
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents btn_exportcutoff As System.Windows.Forms.Button
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents TabPage9 As System.Windows.Forms.TabPage
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents dgv_users As System.Windows.Forms.DataGridView
    Friend WithEvents btn_syncovertime As System.Windows.Forms.Button
    Friend WithEvents btn_syncemployees As System.Windows.Forms.Button
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents btn_syncleaves As System.Windows.Forms.Button
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents BindingNavigator1 As System.Windows.Forms.BindingNavigator
    Friend WithEvents BindingNavigatorAddNewItem As System.Windows.Forms.ToolStripButton
    Friend WithEvents BindingNavigatorDeleteItem As System.Windows.Forms.ToolStripButton
    Friend WithEvents ToolStripButton1 As System.Windows.Forms.ToolStripButton
End Class
