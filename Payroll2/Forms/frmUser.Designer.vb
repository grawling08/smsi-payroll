<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmUser
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
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.tb_username = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.tb_password = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.cb_userrole = New System.Windows.Forms.ComboBox()
        Me.cb_employeeid = New System.Windows.Forms.ComboBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.cb_userstatus = New System.Windows.Forms.ComboBox()
        Me.SuspendLayout()
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(140, 145)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 23)
        Me.Button1.TabIndex = 10
        Me.Button1.Text = "Save"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(15, 42)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(55, 13)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Username"
        '
        'tb_username
        '
        Me.tb_username.Location = New System.Drawing.Point(94, 39)
        Me.tb_username.Name = "tb_username"
        Me.tb_username.Size = New System.Drawing.Size(121, 20)
        Me.tb_username.TabIndex = 3
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(15, 68)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(53, 13)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "Password"
        '
        'tb_password
        '
        Me.tb_password.Location = New System.Drawing.Point(94, 65)
        Me.tb_password.Name = "tb_password"
        Me.tb_password.Size = New System.Drawing.Size(121, 20)
        Me.tb_password.TabIndex = 5
        Me.tb_password.UseSystemPasswordChar = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(15, 94)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(29, 13)
        Me.Label1.TabIndex = 6
        Me.Label1.Text = "Role"
        '
        'cb_userrole
        '
        Me.cb_userrole.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cb_userrole.FormattingEnabled = True
        Me.cb_userrole.Items.AddRange(New Object() {"Admin", "Payroll Master", "User"})
        Me.cb_userrole.Location = New System.Drawing.Point(94, 91)
        Me.cb_userrole.Name = "cb_userrole"
        Me.cb_userrole.Size = New System.Drawing.Size(121, 21)
        Me.cb_userrole.TabIndex = 7
        '
        'cb_employeeid
        '
        Me.cb_employeeid.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cb_employeeid.FormattingEnabled = True
        Me.cb_employeeid.Location = New System.Drawing.Point(94, 12)
        Me.cb_employeeid.Name = "cb_employeeid"
        Me.cb_employeeid.Size = New System.Drawing.Size(121, 21)
        Me.cb_employeeid.TabIndex = 1
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(15, 15)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(67, 13)
        Me.Label4.TabIndex = 0
        Me.Label4.Text = "Employee ID"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(15, 121)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(37, 13)
        Me.Label5.TabIndex = 8
        Me.Label5.Text = "Status"
        '
        'cb_userstatus
        '
        Me.cb_userstatus.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cb_userstatus.FormattingEnabled = True
        Me.cb_userstatus.Items.AddRange(New Object() {"Active", "Inactive"})
        Me.cb_userstatus.Location = New System.Drawing.Point(94, 118)
        Me.cb_userstatus.Name = "cb_userstatus"
        Me.cb_userstatus.Size = New System.Drawing.Size(121, 21)
        Me.cb_userstatus.TabIndex = 9
        '
        'frmUser
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(227, 180)
        Me.Controls.Add(Me.cb_employeeid)
        Me.Controls.Add(Me.cb_userstatus)
        Me.Controls.Add(Me.cb_userrole)
        Me.Controls.Add(Me.tb_password)
        Me.Controls.Add(Me.tb_username)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Button1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmUser"
        Me.ShowInTaskbar = False
        Me.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "User"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents tb_username As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents tb_password As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents cb_userrole As System.Windows.Forms.ComboBox
    Friend WithEvents cb_employeeid As System.Windows.Forms.ComboBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents cb_userstatus As System.Windows.Forms.ComboBox
End Class
