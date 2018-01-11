<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmLoans
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
        Me.Label1 = New System.Windows.Forms.Label()
        Me.tb_loanname = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.tb_loancomp = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.tb_loanamount = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.tb_loanterm = New System.Windows.Forms.TextBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.tb_loanamort = New System.Windows.Forms.TextBox()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.dtp_loanstart = New System.Windows.Forms.DateTimePicker()
        Me.dtp_loanend = New System.Windows.Forms.DateTimePicker()
        Me.tb_loanremark = New System.Windows.Forms.TextBox()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.cmb_loanstatus = New System.Windows.Forms.ComboBox()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(3, 9)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(62, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Loan Name"
        '
        'tb_loanname
        '
        Me.tb_loanname.Location = New System.Drawing.Point(125, 6)
        Me.tb_loanname.Name = "tb_loanname"
        Me.tb_loanname.Size = New System.Drawing.Size(150, 20)
        Me.tb_loanname.TabIndex = 1
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(3, 35)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(92, 13)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Lending Company"
        '
        'tb_loancomp
        '
        Me.tb_loancomp.Location = New System.Drawing.Point(125, 32)
        Me.tb_loancomp.Name = "tb_loancomp"
        Me.tb_loancomp.Size = New System.Drawing.Size(150, 20)
        Me.tb_loancomp.TabIndex = 3
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(3, 61)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(43, 13)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "Amount"
        '
        'tb_loanamount
        '
        Me.tb_loanamount.Location = New System.Drawing.Point(125, 58)
        Me.tb_loanamount.Name = "tb_loanamount"
        Me.tb_loanamount.Size = New System.Drawing.Size(150, 20)
        Me.tb_loanamount.TabIndex = 5
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(3, 87)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(31, 13)
        Me.Label4.TabIndex = 6
        Me.Label4.Text = "Term"
        '
        'tb_loanterm
        '
        Me.tb_loanterm.Location = New System.Drawing.Point(125, 84)
        Me.tb_loanterm.Name = "tb_loanterm"
        Me.tb_loanterm.Size = New System.Drawing.Size(150, 20)
        Me.tb_loanterm.TabIndex = 7
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(3, 113)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(104, 13)
        Me.Label5.TabIndex = 8
        Me.Label5.Text = "Monthly Amortization"
        '
        'tb_loanamort
        '
        Me.tb_loanamort.Location = New System.Drawing.Point(125, 110)
        Me.tb_loanamort.Name = "tb_loanamort"
        Me.tb_loanamort.Size = New System.Drawing.Size(150, 20)
        Me.tb_loanamort.TabIndex = 9
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(3, 142)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(55, 13)
        Me.Label6.TabIndex = 10
        Me.Label6.Text = "Start Date"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(3, 168)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(52, 13)
        Me.Label7.TabIndex = 12
        Me.Label7.Text = "End Date"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(3, 217)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(49, 13)
        Me.Label9.TabIndex = 16
        Me.Label9.Text = "Remarks"
        '
        'dtp_loanstart
        '
        Me.dtp_loanstart.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.dtp_loanstart.Location = New System.Drawing.Point(125, 136)
        Me.dtp_loanstart.Name = "dtp_loanstart"
        Me.dtp_loanstart.Size = New System.Drawing.Size(150, 20)
        Me.dtp_loanstart.TabIndex = 11
        '
        'dtp_loanend
        '
        Me.dtp_loanend.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.dtp_loanend.Location = New System.Drawing.Point(125, 162)
        Me.dtp_loanend.Name = "dtp_loanend"
        Me.dtp_loanend.Size = New System.Drawing.Size(150, 20)
        Me.dtp_loanend.TabIndex = 13
        '
        'tb_loanremark
        '
        Me.tb_loanremark.Location = New System.Drawing.Point(125, 214)
        Me.tb_loanremark.Multiline = True
        Me.tb_loanremark.Name = "tb_loanremark"
        Me.tb_loanremark.Size = New System.Drawing.Size(150, 68)
        Me.tb_loanremark.TabIndex = 17
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(200, 288)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 23)
        Me.Button1.TabIndex = 18
        Me.Button1.Text = "Save"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(3, 191)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(37, 13)
        Me.Label8.TabIndex = 14
        Me.Label8.Text = "Status"
        '
        'cmb_loanstatus
        '
        Me.cmb_loanstatus.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmb_loanstatus.FormattingEnabled = True
        Me.cmb_loanstatus.Items.AddRange(New Object() {"Paid", "Unpaid"})
        Me.cmb_loanstatus.Location = New System.Drawing.Point(125, 188)
        Me.cmb_loanstatus.Name = "cmb_loanstatus"
        Me.cmb_loanstatus.Size = New System.Drawing.Size(150, 21)
        Me.cmb_loanstatus.TabIndex = 15
        '
        'frmLoans
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(281, 317)
        Me.Controls.Add(Me.cmb_loanstatus)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.dtp_loanend)
        Me.Controls.Add(Me.dtp_loanstart)
        Me.Controls.Add(Me.tb_loanremark)
        Me.Controls.Add(Me.Label9)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.tb_loanamort)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.tb_loanterm)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.tb_loanamount)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.tb_loancomp)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.tb_loanname)
        Me.Controls.Add(Me.Label1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "frmLoans"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Loans"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents tb_loanname As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents tb_loancomp As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents tb_loanamount As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents tb_loanterm As System.Windows.Forms.TextBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents tb_loanamort As System.Windows.Forms.TextBox
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents dtp_loanstart As System.Windows.Forms.DateTimePicker
    Friend WithEvents dtp_loanend As System.Windows.Forms.DateTimePicker
    Friend WithEvents tb_loanremark As System.Windows.Forms.TextBox
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents cmb_loanstatus As System.Windows.Forms.ComboBox
End Class
