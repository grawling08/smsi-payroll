﻿<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
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
        Me.btn_testconnect = New System.Windows.Forms.Button()
        Me.tb_pwordHR = New System.Windows.Forms.TextBox()
        Me.tb_pwordPay = New System.Windows.Forms.TextBox()
        Me.tb_uidHR = New System.Windows.Forms.TextBox()
        Me.tb_uidPay = New System.Windows.Forms.TextBox()
        Me.tb_serverHR = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.tb_serverPay = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.save_settings = New System.Windows.Forms.Button()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.tb_dbHR = New System.Windows.Forms.TextBox()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.tb_dbPay = New System.Windows.Forms.TextBox()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.rb_mode_integrate = New System.Windows.Forms.RadioButton()
        Me.rb_mode_alone = New System.Windows.Forms.RadioButton()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.btn_testconnect)
        Me.GroupBox1.Controls.Add(Me.tb_pwordHR)
        Me.GroupBox1.Controls.Add(Me.tb_pwordPay)
        Me.GroupBox1.Controls.Add(Me.tb_uidHR)
        Me.GroupBox1.Controls.Add(Me.tb_uidPay)
        Me.GroupBox1.Controls.Add(Me.tb_serverHR)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.tb_serverPay)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.Label10)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.save_settings)
        Me.GroupBox1.Controls.Add(Me.Label9)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.Label6)
        Me.GroupBox1.Controls.Add(Me.Label7)
        Me.GroupBox1.Controls.Add(Me.tb_dbHR)
        Me.GroupBox1.Controls.Add(Me.Label8)
        Me.GroupBox1.Controls.Add(Me.tb_dbPay)
        Me.GroupBox1.Location = New System.Drawing.Point(3, 48)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(394, 169)
        Me.GroupBox1.TabIndex = 1
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Server Settings"
        '
        'btn_testconnect
        '
        Me.btn_testconnect.Location = New System.Drawing.Point(205, 139)
        Me.btn_testconnect.Name = "btn_testconnect"
        Me.btn_testconnect.Size = New System.Drawing.Size(97, 23)
        Me.btn_testconnect.TabIndex = 8
        Me.btn_testconnect.Text = "Test Connection"
        Me.btn_testconnect.UseVisualStyleBackColor = True
        '
        'tb_pwordHR
        '
        Me.tb_pwordHR.Location = New System.Drawing.Point(282, 84)
        Me.tb_pwordHR.Name = "tb_pwordHR"
        Me.tb_pwordHR.Size = New System.Drawing.Size(100, 20)
        Me.tb_pwordHR.TabIndex = 6
        Me.tb_pwordHR.UseSystemPasswordChar = True
        '
        'tb_pwordPay
        '
        Me.tb_pwordPay.Location = New System.Drawing.Point(93, 84)
        Me.tb_pwordPay.Name = "tb_pwordPay"
        Me.tb_pwordPay.Size = New System.Drawing.Size(100, 20)
        Me.tb_pwordPay.TabIndex = 2
        Me.tb_pwordPay.UseSystemPasswordChar = True
        '
        'tb_uidHR
        '
        Me.tb_uidHR.Location = New System.Drawing.Point(282, 58)
        Me.tb_uidHR.Name = "tb_uidHR"
        Me.tb_uidHR.Size = New System.Drawing.Size(101, 20)
        Me.tb_uidHR.TabIndex = 5
        '
        'tb_uidPay
        '
        Me.tb_uidPay.Location = New System.Drawing.Point(93, 58)
        Me.tb_uidPay.Name = "tb_uidPay"
        Me.tb_uidPay.Size = New System.Drawing.Size(101, 20)
        Me.tb_uidPay.TabIndex = 1
        '
        'tb_serverHR
        '
        Me.tb_serverHR.Location = New System.Drawing.Point(282, 32)
        Me.tb_serverHR.Name = "tb_serverHR"
        Me.tb_serverHR.Size = New System.Drawing.Size(100, 20)
        Me.tb_serverHR.TabIndex = 4
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(197, 113)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(53, 13)
        Me.Label4.TabIndex = 16
        Me.Label4.Text = "Database"
        '
        'tb_serverPay
        '
        Me.tb_serverPay.Location = New System.Drawing.Point(93, 32)
        Me.tb_serverPay.Name = "tb_serverPay"
        Me.tb_serverPay.Size = New System.Drawing.Size(100, 20)
        Me.tb_serverPay.TabIndex = 0
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(197, 87)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(53, 13)
        Me.Label3.TabIndex = 14
        Me.Label3.Text = "Password"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(8, 113)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(53, 13)
        Me.Label5.TabIndex = 16
        Me.Label5.Text = "Database"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(8, 87)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(53, 13)
        Me.Label10.TabIndex = 14
        Me.Label10.Text = "Password"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(197, 61)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(55, 13)
        Me.Label2.TabIndex = 12
        Me.Label2.Text = "Username"
        '
        'save_settings
        '
        Me.save_settings.Location = New System.Drawing.Point(308, 139)
        Me.save_settings.Name = "save_settings"
        Me.save_settings.Size = New System.Drawing.Size(74, 23)
        Me.save_settings.TabIndex = 9
        Me.save_settings.Text = "Save"
        Me.save_settings.UseVisualStyleBackColor = True
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(8, 61)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(55, 13)
        Me.Label9.TabIndex = 12
        Me.Label9.Text = "Username"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(197, 35)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(79, 13)
        Me.Label1.TabIndex = 10
        Me.Label1.Text = "Server Address"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(197, 16)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(76, 13)
        Me.Label6.TabIndex = 9
        Me.Label6.Text = "HRIS Connect"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(6, 16)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(81, 13)
        Me.Label7.TabIndex = 9
        Me.Label7.Text = "Payroll Connect"
        '
        'tb_dbHR
        '
        Me.tb_dbHR.Location = New System.Drawing.Point(282, 110)
        Me.tb_dbHR.Name = "tb_dbHR"
        Me.tb_dbHR.Size = New System.Drawing.Size(100, 20)
        Me.tb_dbHR.TabIndex = 7
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(8, 35)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(79, 13)
        Me.Label8.TabIndex = 10
        Me.Label8.Text = "Server Address"
        '
        'tb_dbPay
        '
        Me.tb_dbPay.Location = New System.Drawing.Point(93, 110)
        Me.tb_dbPay.Name = "tb_dbPay"
        Me.tb_dbPay.Size = New System.Drawing.Size(100, 20)
        Me.tb_dbPay.TabIndex = 3
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.rb_mode_integrate)
        Me.GroupBox2.Controls.Add(Me.rb_mode_alone)
        Me.GroupBox2.Location = New System.Drawing.Point(3, 3)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(394, 39)
        Me.GroupBox2.TabIndex = 17
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Application"
        '
        'rb_mode_integrate
        '
        Me.rb_mode_integrate.AutoSize = True
        Me.rb_mode_integrate.Location = New System.Drawing.Point(200, 16)
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
        Me.rb_mode_alone.Location = New System.Drawing.Point(43, 16)
        Me.rb_mode_alone.Name = "rb_mode_alone"
        Me.rb_mode_alone.Size = New System.Drawing.Size(82, 17)
        Me.rb_mode_alone.TabIndex = 0
        Me.rb_mode_alone.TabStop = True
        Me.rb_mode_alone.Text = "Stand-alone"
        Me.rb_mode_alone.UseVisualStyleBackColor = True
        '
        'ctrlServerSettings
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Name = "ctrlServerSettings"
        Me.Size = New System.Drawing.Size(400, 220)
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
    Friend WithEvents tb_pwordHR As System.Windows.Forms.TextBox
    Friend WithEvents tb_uidHR As System.Windows.Forms.TextBox
    Friend WithEvents tb_serverHR As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents tb_dbHR As System.Windows.Forms.TextBox

End Class
