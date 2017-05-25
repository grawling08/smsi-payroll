<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmEditTimesheet
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
        Me.tb_no = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.btn_save = New System.Windows.Forms.Button()
        Me.btn_cancel = New System.Windows.Forms.Button()
        Me.dtp_timein = New System.Windows.Forms.DateTimePicker()
        Me.dtp_timeout = New System.Windows.Forms.DateTimePicker()
        Me.dtp_logdate = New System.Windows.Forms.DateTimePicker()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(12, 9)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(21, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "No"
        '
        'tb_no
        '
        Me.tb_no.Location = New System.Drawing.Point(85, 6)
        Me.tb_no.Name = "tb_no"
        Me.tb_no.Size = New System.Drawing.Size(130, 20)
        Me.tb_no.TabIndex = 1
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(12, 35)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(42, 13)
        Me.Label2.TabIndex = 0
        Me.Label2.Text = "Time In"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(12, 61)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(50, 13)
        Me.Label3.TabIndex = 0
        Me.Label3.Text = "Time Out"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(12, 87)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(51, 13)
        Me.Label4.TabIndex = 0
        Me.Label4.Text = "Log Date"
        '
        'btn_save
        '
        Me.btn_save.Location = New System.Drawing.Point(59, 118)
        Me.btn_save.Name = "btn_save"
        Me.btn_save.Size = New System.Drawing.Size(75, 23)
        Me.btn_save.TabIndex = 2
        Me.btn_save.Text = "Save"
        Me.btn_save.UseVisualStyleBackColor = True
        '
        'btn_cancel
        '
        Me.btn_cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel
        Me.btn_cancel.Location = New System.Drawing.Point(140, 118)
        Me.btn_cancel.Name = "btn_cancel"
        Me.btn_cancel.Size = New System.Drawing.Size(75, 23)
        Me.btn_cancel.TabIndex = 2
        Me.btn_cancel.Text = "Cancel"
        Me.btn_cancel.UseVisualStyleBackColor = True
        '
        'dtp_timein
        '
        Me.dtp_timein.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.dtp_timein.Location = New System.Drawing.Point(85, 32)
        Me.dtp_timein.Name = "dtp_timein"
        Me.dtp_timein.Size = New System.Drawing.Size(130, 20)
        Me.dtp_timein.TabIndex = 3
        '
        'dtp_timeout
        '
        Me.dtp_timeout.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.dtp_timeout.Location = New System.Drawing.Point(85, 58)
        Me.dtp_timeout.Name = "dtp_timeout"
        Me.dtp_timeout.Size = New System.Drawing.Size(130, 20)
        Me.dtp_timeout.TabIndex = 3
        '
        'dtp_logdate
        '
        Me.dtp_logdate.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.dtp_logdate.Location = New System.Drawing.Point(85, 84)
        Me.dtp_logdate.Name = "dtp_logdate"
        Me.dtp_logdate.Size = New System.Drawing.Size(130, 20)
        Me.dtp_logdate.TabIndex = 3
        '
        'frmEditTimesheet
        '
        Me.AcceptButton = Me.btn_save
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.CancelButton = Me.btn_cancel
        Me.ClientSize = New System.Drawing.Size(228, 154)
        Me.Controls.Add(Me.dtp_logdate)
        Me.Controls.Add(Me.dtp_timeout)
        Me.Controls.Add(Me.dtp_timein)
        Me.Controls.Add(Me.btn_cancel)
        Me.Controls.Add(Me.btn_save)
        Me.Controls.Add(Me.tb_no)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmEditTimesheet"
        Me.ShowIcon = False
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents tb_no As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents btn_save As System.Windows.Forms.Button
    Friend WithEvents btn_cancel As System.Windows.Forms.Button
    Friend WithEvents dtp_timein As System.Windows.Forms.DateTimePicker
    Friend WithEvents dtp_timeout As System.Windows.Forms.DateTimePicker
    Friend WithEvents dtp_logdate As System.Windows.Forms.DateTimePicker
End Class
