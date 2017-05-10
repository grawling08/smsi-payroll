<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frm1
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
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.btn_savesettings = New System.Windows.Forms.Button()
        Me.lbl_newcutoff = New System.Windows.Forms.LinkLabel()
        Me.lb_company = New System.Windows.Forms.ListBox()
        Me.lb_cutoff = New System.Windows.Forms.ListBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Panel1
        '
        Me.Panel1.Controls.Add(Me.btn_savesettings)
        Me.Panel1.Controls.Add(Me.lbl_newcutoff)
        Me.Panel1.Controls.Add(Me.lb_company)
        Me.Panel1.Controls.Add(Me.lb_cutoff)
        Me.Panel1.Controls.Add(Me.Label2)
        Me.Panel1.Controls.Add(Me.Label1)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.Panel1.Location = New System.Drawing.Point(0, 0)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(412, 210)
        Me.Panel1.TabIndex = 0
        '
        'btn_savesettings
        '
        Me.btn_savesettings.Location = New System.Drawing.Point(334, 183)
        Me.btn_savesettings.Name = "btn_savesettings"
        Me.btn_savesettings.Size = New System.Drawing.Size(75, 23)
        Me.btn_savesettings.TabIndex = 5
        Me.btn_savesettings.Text = "Save"
        Me.btn_savesettings.UseVisualStyleBackColor = True
        '
        'lbl_newcutoff
        '
        Me.lbl_newcutoff.AutoSize = True
        Me.lbl_newcutoff.Location = New System.Drawing.Point(3, 183)
        Me.lbl_newcutoff.Name = "lbl_newcutoff"
        Me.lbl_newcutoff.Size = New System.Drawing.Size(82, 13)
        Me.lbl_newcutoff.TabIndex = 4
        Me.lbl_newcutoff.TabStop = True
        Me.lbl_newcutoff.Text = "Add New Cutoff"
        '
        'lb_company
        '
        Me.lb_company.FormattingEnabled = True
        Me.lb_company.Location = New System.Drawing.Point(209, 20)
        Me.lb_company.Name = "lb_company"
        Me.lb_company.Size = New System.Drawing.Size(200, 160)
        Me.lb_company.TabIndex = 3
        '
        'lb_cutoff
        '
        Me.lb_cutoff.FormattingEnabled = True
        Me.lb_cutoff.Location = New System.Drawing.Point(6, 20)
        Me.lb_cutoff.Name = "lb_cutoff"
        Me.lb_cutoff.Size = New System.Drawing.Size(200, 160)
        Me.lb_cutoff.TabIndex = 2
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(206, 4)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(51, 13)
        Me.Label2.TabIndex = 1
        Me.Label2.Text = "Company"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(3, 4)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(35, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Cutoff"
        '
        'frm1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(412, 210)
        Me.ControlBox = False
        Me.Controls.Add(Me.Panel1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frm1"
        Me.ShowIcon = False
        Me.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Set Current Cutoff and Company"
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents lb_cutoff As System.Windows.Forms.ListBox
    Friend WithEvents lb_company As System.Windows.Forms.ListBox
    Friend WithEvents lbl_newcutoff As System.Windows.Forms.LinkLabel
    Friend WithEvents btn_savesettings As System.Windows.Forms.Button
End Class
