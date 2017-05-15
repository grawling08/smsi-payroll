<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmShifts
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
        Me.Label2 = New System.Windows.Forms.Label()
        Me.cb_shifttype = New System.Windows.Forms.ComboBox()
        Me.cb_shiftday = New System.Windows.Forms.ComboBox()
        Me.dtp_shifttimein = New System.Windows.Forms.DateTimePicker()
        Me.dtp_shifttimeout = New System.Windows.Forms.DateTimePicker()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.dgv_shifts = New System.Windows.Forms.DataGridView()
        Me.btn_saveshift = New System.Windows.Forms.Button()
        CType(Me.dgv_shifts, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(12, 15)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(28, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Shift"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(12, 42)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(26, 13)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Day"
        '
        'cb_shifttype
        '
        Me.cb_shifttype.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cb_shifttype.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.cb_shifttype.FormattingEnabled = True
        Me.cb_shifttype.Items.AddRange(New Object() {"Flexible", "Irregular", "Regular"})
        Me.cb_shifttype.Location = New System.Drawing.Point(196, 12)
        Me.cb_shifttype.Name = "cb_shifttype"
        Me.cb_shifttype.Size = New System.Drawing.Size(150, 21)
        Me.cb_shifttype.TabIndex = 1
        '
        'cb_shiftday
        '
        Me.cb_shiftday.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cb_shiftday.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.cb_shiftday.FormattingEnabled = True
        Me.cb_shiftday.Items.AddRange(New Object() {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"})
        Me.cb_shiftday.Location = New System.Drawing.Point(196, 39)
        Me.cb_shiftday.Name = "cb_shiftday"
        Me.cb_shiftday.Size = New System.Drawing.Size(150, 21)
        Me.cb_shiftday.TabIndex = 3
        '
        'dtp_shifttimein
        '
        Me.dtp_shifttimein.Format = System.Windows.Forms.DateTimePickerFormat.Time
        Me.dtp_shifttimein.Location = New System.Drawing.Point(196, 66)
        Me.dtp_shifttimein.Name = "dtp_shifttimein"
        Me.dtp_shifttimein.Size = New System.Drawing.Size(150, 20)
        Me.dtp_shifttimein.TabIndex = 5
        '
        'dtp_shifttimeout
        '
        Me.dtp_shifttimeout.Format = System.Windows.Forms.DateTimePickerFormat.Time
        Me.dtp_shifttimeout.Location = New System.Drawing.Point(196, 92)
        Me.dtp_shifttimeout.Name = "dtp_shifttimeout"
        Me.dtp_shifttimeout.Size = New System.Drawing.Size(150, 20)
        Me.dtp_shifttimeout.TabIndex = 7
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(12, 72)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(42, 13)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "Time In"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(12, 98)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(50, 13)
        Me.Label4.TabIndex = 6
        Me.Label4.Text = "Time Out"
        '
        'dgv_shifts
        '
        Me.dgv_shifts.AllowUserToAddRows = False
        Me.dgv_shifts.AllowUserToDeleteRows = False
        Me.dgv_shifts.AllowUserToResizeColumns = False
        Me.dgv_shifts.AllowUserToResizeRows = False
        Me.dgv_shifts.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgv_shifts.Location = New System.Drawing.Point(12, 147)
        Me.dgv_shifts.Name = "dgv_shifts"
        Me.dgv_shifts.ReadOnly = True
        Me.dgv_shifts.RowHeadersVisible = False
        Me.dgv_shifts.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_shifts.Size = New System.Drawing.Size(334, 184)
        Me.dgv_shifts.TabIndex = 9
        '
        'btn_saveshift
        '
        Me.btn_saveshift.Location = New System.Drawing.Point(271, 118)
        Me.btn_saveshift.Name = "btn_saveshift"
        Me.btn_saveshift.Size = New System.Drawing.Size(75, 23)
        Me.btn_saveshift.TabIndex = 8
        Me.btn_saveshift.Text = "Save"
        Me.btn_saveshift.UseVisualStyleBackColor = True
        '
        'frmShifts
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(358, 343)
        Me.Controls.Add(Me.btn_saveshift)
        Me.Controls.Add(Me.dgv_shifts)
        Me.Controls.Add(Me.dtp_shifttimeout)
        Me.Controls.Add(Me.dtp_shifttimein)
        Me.Controls.Add(Me.cb_shiftday)
        Me.Controls.Add(Me.cb_shifttype)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "frmShifts"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Shifts"
        CType(Me.dgv_shifts, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents cb_shifttype As System.Windows.Forms.ComboBox
    Friend WithEvents cb_shiftday As System.Windows.Forms.ComboBox
    Friend WithEvents dtp_shifttimein As System.Windows.Forms.DateTimePicker
    Friend WithEvents dtp_shifttimeout As System.Windows.Forms.DateTimePicker
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents dgv_shifts As System.Windows.Forms.DataGridView
    Friend WithEvents btn_saveshift As System.Windows.Forms.Button
End Class
