<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmThMonth
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
        Me.dtp_date13 = New System.Windows.Forms.DateTimePicker()
        Me.cmb_company13 = New System.Windows.Forms.ComboBox()
        Me.dgv_thmonth = New System.Windows.Forms.DataGridView()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        CType(Me.dgv_thmonth, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'dtp_date13
        '
        Me.dtp_date13.CustomFormat = "yyyy"
        Me.dtp_date13.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.dtp_date13.Location = New System.Drawing.Point(310, 9)
        Me.dtp_date13.Name = "dtp_date13"
        Me.dtp_date13.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.dtp_date13.ShowUpDown = True
        Me.dtp_date13.Size = New System.Drawing.Size(200, 20)
        Me.dtp_date13.TabIndex = 0
        '
        'cmb_company13
        '
        Me.cmb_company13.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmb_company13.FormattingEnabled = True
        Me.cmb_company13.Location = New System.Drawing.Point(70, 9)
        Me.cmb_company13.Name = "cmb_company13"
        Me.cmb_company13.Size = New System.Drawing.Size(199, 21)
        Me.cmb_company13.TabIndex = 1
        '
        'dgv_thmonth
        '
        Me.dgv_thmonth.AllowUserToAddRows = False
        Me.dgv_thmonth.AllowUserToDeleteRows = False
        Me.dgv_thmonth.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.dgv_thmonth.BackgroundColor = System.Drawing.SystemColors.ControlLightLight
        Me.dgv_thmonth.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgv_thmonth.Location = New System.Drawing.Point(1, 36)
        Me.dgv_thmonth.MultiSelect = False
        Me.dgv_thmonth.Name = "dgv_thmonth"
        Me.dgv_thmonth.ReadOnly = True
        Me.dgv_thmonth.RowHeadersVisible = False
        Me.dgv_thmonth.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_thmonth.Size = New System.Drawing.Size(521, 365)
        Me.dgv_thmonth.TabIndex = 3
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(13, 13)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(51, 13)
        Me.Label1.TabIndex = 4
        Me.Label1.Text = "Company"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(275, 13)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(0, 13)
        Me.Label2.TabIndex = 4
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(275, 13)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(29, 13)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "Year"
        '
        'frmThMonth
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(523, 402)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.dgv_thmonth)
        Me.Controls.Add(Me.cmb_company13)
        Me.Controls.Add(Me.dtp_date13)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "frmThMonth"
        Me.ShowIcon = False
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "13th Month Pay"
        CType(Me.dgv_thmonth, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents dtp_date13 As System.Windows.Forms.DateTimePicker
    Friend WithEvents cmb_company13 As System.Windows.Forms.ComboBox
    Friend WithEvents dgv_thmonth As System.Windows.Forms.DataGridView
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
End Class
