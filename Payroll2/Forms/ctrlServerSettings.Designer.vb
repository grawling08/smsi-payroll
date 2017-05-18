<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class ctrlServerSettings
    Inherits System.Windows.Forms.UserControl

    'UserControl overrides dispose to clean up the component list.
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
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.rb_mode_integrate = New System.Windows.Forms.RadioButton()
        Me.rb_mode_alone = New System.Windows.Forms.RadioButton()
        Me.btn_testconnect = New System.Windows.Forms.Button()
        Me.tb_pwordPay = New System.Windows.Forms.TextBox()
        Me.tb_uidPay = New System.Windows.Forms.TextBox()
        Me.tb_serverPay = New System.Windows.Forms.TextBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.save_settings = New System.Windows.Forms.Button()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.tb_dbPay = New System.Windows.Forms.TextBox()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.GroupBox2)
        Me.GroupBox1.Controls.Add(Me.btn_testconnect)
        Me.GroupBox1.Controls.Add(Me.tb_pwordPay)
        Me.GroupBox1.Controls.Add(Me.tb_uidPay)
        Me.GroupBox1.Controls.Add(Me.tb_serverPay)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.Label10)
        Me.GroupBox1.Controls.Add(Me.save_settings)
        Me.GroupBox1.Controls.Add(Me.Label9)
        Me.GroupBox1.Controls.Add(Me.Label7)
        Me.GroupBox1.Controls.Add(Me.Label8)
        Me.GroupBox1.Controls.Add(Me.tb_dbPay)
        Me.GroupBox1.Location = New System.Drawing.Point(3, 3)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(394, 169)
        Me.GroupBox1.TabIndex = 1
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Server Settings"
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.rb_mode_integrate)
        Me.GroupBox2.Controls.Add(Me.rb_mode_alone)
        Me.GroupBox2.Location = New System.Drawing.Point(6, 19)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(163, 143)
        Me.GroupBox2.TabIndex = 17
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Application"
        '
        'rb_mode_integrate
        '
        Me.rb_mode_integrate.AutoSize = True
        Me.rb_mode_integrate.Location = New System.Drawing.Point(6, 52)
        Me.rb_mode_integrate.Name = "rb_mode_integrate"
        Me.rb_mode_integrate.Size = New System.Drawing.Size(129, 17)
        Me.rb_mode_integrate.TabIndex = 1
        Me.rb_mode_integrate.TabStop = True
        Me.rb_mode_integrate.Text = "With HRIS Integration"
        Me.rb_mode_integrate.UseVisualStyleBackColor = True
        '
        'rb_mode_alone
        '
        Me.rb_mode_alone.AutoSize = True
        Me.rb_mode_alone.Location = New System.Drawing.Point(6, 22)
        Me.rb_mode_alone.Name = "rb_mode_alone"
        Me.rb_mode_alone.Size = New System.Drawing.Size(82, 17)
        Me.rb_mode_alone.TabIndex = 0
        Me.rb_mode_alone.TabStop = True
        Me.rb_mode_alone.Text = "Stand-alone"
        Me.rb_mode_alone.UseVisualStyleBackColor = True
        '
        'btn_testconnect
        '
        Me.btn_testconnect.Location = New System.Drawing.Point(205, 139)
        Me.btn_testconnect.Name = "btn_testconnect"
        Me.btn_testconnect.Size = New System.Drawing.Size(97, 23)
        Me.btn_testconnect.TabIndex = 5
        Me.btn_testconnect.Text = "Test Connection"
        Me.btn_testconnect.UseVisualStyleBackColor = True
        '
        'tb_pwordPay
        '
        Me.tb_pwordPay.Location = New System.Drawing.Point(282, 87)
        Me.tb_pwordPay.Name = "tb_pwordPay"
        Me.tb_pwordPay.Size = New System.Drawing.Size(100, 20)
        Me.tb_pwordPay.TabIndex = 2
        Me.tb_pwordPay.UseSystemPasswordChar = True
        '
        'tb_uidPay
        '
        Me.tb_uidPay.Location = New System.Drawing.Point(282, 61)
        Me.tb_uidPay.Name = "tb_uidPay"
        Me.tb_uidPay.Size = New System.Drawing.Size(101, 20)
        Me.tb_uidPay.TabIndex = 1
        '
        'tb_serverPay
        '
        Me.tb_serverPay.Location = New System.Drawing.Point(282, 35)
        Me.tb_serverPay.Name = "tb_serverPay"
        Me.tb_serverPay.Size = New System.Drawing.Size(100, 20)
        Me.tb_serverPay.TabIndex = 0
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(197, 116)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(62, 13)
        Me.Label5.TabIndex = 16
        Me.Label5.Text = "Database 2"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(197, 90)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(53, 13)
        Me.Label10.TabIndex = 14
        Me.Label10.Text = "Password"
        '
        'save_settings
        '
        Me.save_settings.Location = New System.Drawing.Point(308, 139)
        Me.save_settings.Name = "save_settings"
        Me.save_settings.Size = New System.Drawing.Size(74, 23)
        Me.save_settings.TabIndex = 4
        Me.save_settings.Text = "Save"
        Me.save_settings.UseVisualStyleBackColor = True
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(197, 64)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(55, 13)
        Me.Label9.TabIndex = 12
        Me.Label9.Text = "Username"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(210, 16)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(81, 13)
        Me.Label7.TabIndex = 9
        Me.Label7.Text = "Payroll Connect"
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(197, 38)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(79, 13)
        Me.Label8.TabIndex = 10
        Me.Label8.Text = "Server Address"
        '
        'tb_dbPay
        '
        Me.tb_dbPay.Location = New System.Drawing.Point(282, 113)
        Me.tb_dbPay.Name = "tb_dbPay"
        Me.tb_dbPay.Size = New System.Drawing.Size(100, 20)
        Me.tb_dbPay.TabIndex = 3
        '
        'ctrlServerSettings
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.Controls.Add(Me.GroupBox1)
        Me.Name = "ctrlServerSettings"
        Me.Size = New System.Drawing.Size(400, 175)
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents tb_pwordPay As System.Windows.Forms.TextBox
    Friend WithEvents tb_uidPay As System.Windows.Forms.TextBox
    Friend WithEvents tb_serverPay As System.Windows.Forms.TextBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents save_settings As System.Windows.Forms.Button
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents tb_dbPay As System.Windows.Forms.TextBox
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents rb_mode_integrate As System.Windows.Forms.RadioButton
    Friend WithEvents rb_mode_alone As System.Windows.Forms.RadioButton
    Friend WithEvents btn_testconnect As System.Windows.Forms.Button

End Class
