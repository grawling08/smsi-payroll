<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmAddCutoff
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
        Me.btn_closecutoff = New System.Windows.Forms.Button()
        Me.btn_addcutoff = New System.Windows.Forms.Button()
        Me.dtp_fromcutoff = New System.Windows.Forms.DateTimePicker()
        Me.dtp_tocutoff = New System.Windows.Forms.DateTimePicker()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.cb_occurence = New System.Windows.Forms.ComboBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.lbl_company = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'btn_closecutoff
        '
        Me.btn_closecutoff.Location = New System.Drawing.Point(159, 156)
        Me.btn_closecutoff.Name = "btn_closecutoff"
        Me.btn_closecutoff.Size = New System.Drawing.Size(75, 36)
        Me.btn_closecutoff.TabIndex = 0
        Me.btn_closecutoff.Text = "Cancel"
        Me.btn_closecutoff.UseVisualStyleBackColor = True
        '
        'btn_addcutoff
        '
        Me.btn_addcutoff.Location = New System.Drawing.Point(78, 156)
        Me.btn_addcutoff.Name = "btn_addcutoff"
        Me.btn_addcutoff.Size = New System.Drawing.Size(75, 36)
        Me.btn_addcutoff.TabIndex = 0
        Me.btn_addcutoff.Text = "Add"
        Me.btn_addcutoff.UseVisualStyleBackColor = True
        '
        'dtp_fromcutoff
        '
        Me.dtp_fromcutoff.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.dtp_fromcutoff.Location = New System.Drawing.Point(12, 51)
        Me.dtp_fromcutoff.Name = "dtp_fromcutoff"
        Me.dtp_fromcutoff.Size = New System.Drawing.Size(222, 20)
        Me.dtp_fromcutoff.TabIndex = 1
        '
        'dtp_tocutoff
        '
        Me.dtp_tocutoff.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.dtp_tocutoff.Location = New System.Drawing.Point(12, 90)
        Me.dtp_tocutoff.Name = "dtp_tocutoff"
        Me.dtp_tocutoff.Size = New System.Drawing.Size(222, 20)
        Me.dtp_tocutoff.TabIndex = 1
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(9, 35)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(34, 13)
        Me.Label1.TabIndex = 2
        Me.Label1.Text = "From"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(9, 74)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(22, 13)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "To"
        '
        'cb_occurence
        '
        Me.cb_occurence.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cb_occurence.FormattingEnabled = True
        Me.cb_occurence.Location = New System.Drawing.Point(12, 129)
        Me.cb_occurence.Name = "cb_occurence"
        Me.cb_occurence.Size = New System.Drawing.Size(222, 21)
        Me.cb_occurence.TabIndex = 3
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(9, 113)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(69, 13)
        Me.Label3.TabIndex = 2
        Me.Label3.Text = "Occurence"
        '
        'lbl_company
        '
        Me.lbl_company.AutoSize = True
        Me.lbl_company.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbl_company.Location = New System.Drawing.Point(9, 9)
        Me.lbl_company.Name = "lbl_company"
        Me.lbl_company.Size = New System.Drawing.Size(45, 13)
        Me.lbl_company.TabIndex = 4
        Me.lbl_company.Text = "Label4"
        '
        'frmAddCutoff
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(246, 204)
        Me.Controls.Add(Me.lbl_company)
        Me.Controls.Add(Me.cb_occurence)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.dtp_tocutoff)
        Me.Controls.Add(Me.dtp_fromcutoff)
        Me.Controls.Add(Me.btn_addcutoff)
        Me.Controls.Add(Me.btn_closecutoff)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmAddCutoff"
        Me.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Add Cutoff"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents btn_closecutoff As System.Windows.Forms.Button
    Friend WithEvents btn_addcutoff As System.Windows.Forms.Button
    Friend WithEvents dtp_fromcutoff As System.Windows.Forms.DateTimePicker
    Friend WithEvents dtp_tocutoff As System.Windows.Forms.DateTimePicker
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents cb_occurence As System.Windows.Forms.ComboBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents lbl_company As System.Windows.Forms.Label
End Class
