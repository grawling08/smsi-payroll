<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmUploadedTimesheet
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
        Me.dgv_temptimesheet = New System.Windows.Forms.DataGridView()
        Me.btn_savetimesheet = New System.Windows.Forms.Button()
        Me.btn_canceltimesheet = New System.Windows.Forms.Button()
        Me.btn_loadtemptimesheet = New System.Windows.Forms.Button()
        CType(Me.dgv_temptimesheet, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'dgv_temptimesheet
        '
        Me.dgv_temptimesheet.AllowUserToAddRows = False
        Me.dgv_temptimesheet.AllowUserToDeleteRows = False
        Me.dgv_temptimesheet.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.dgv_temptimesheet.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing
        Me.dgv_temptimesheet.Location = New System.Drawing.Point(1, 1)
        Me.dgv_temptimesheet.MultiSelect = False
        Me.dgv_temptimesheet.Name = "dgv_temptimesheet"
        Me.dgv_temptimesheet.ReadOnly = True
        Me.dgv_temptimesheet.RowHeadersVisible = False
        Me.dgv_temptimesheet.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing
        Me.dgv_temptimesheet.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_temptimesheet.Size = New System.Drawing.Size(736, 535)
        Me.dgv_temptimesheet.TabIndex = 0
        '
        'btn_savetimesheet
        '
        Me.btn_savetimesheet.Location = New System.Drawing.Point(82, 542)
        Me.btn_savetimesheet.Name = "btn_savetimesheet"
        Me.btn_savetimesheet.Size = New System.Drawing.Size(75, 23)
        Me.btn_savetimesheet.TabIndex = 1
        Me.btn_savetimesheet.Text = "SAVE"
        Me.btn_savetimesheet.UseVisualStyleBackColor = True
        '
        'btn_canceltimesheet
        '
        Me.btn_canceltimesheet.Location = New System.Drawing.Point(163, 542)
        Me.btn_canceltimesheet.Name = "btn_canceltimesheet"
        Me.btn_canceltimesheet.Size = New System.Drawing.Size(75, 23)
        Me.btn_canceltimesheet.TabIndex = 1
        Me.btn_canceltimesheet.Text = "CLOSE"
        Me.btn_canceltimesheet.UseVisualStyleBackColor = True
        '
        'btn_loadtemptimesheet
        '
        Me.btn_loadtemptimesheet.Location = New System.Drawing.Point(1, 542)
        Me.btn_loadtemptimesheet.Name = "btn_loadtemptimesheet"
        Me.btn_loadtemptimesheet.Size = New System.Drawing.Size(75, 23)
        Me.btn_loadtemptimesheet.TabIndex = 1
        Me.btn_loadtemptimesheet.Text = "LOAD"
        Me.btn_loadtemptimesheet.UseVisualStyleBackColor = True
        '
        'frmUploadedTimesheet
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(738, 571)
        Me.ControlBox = False
        Me.Controls.Add(Me.btn_canceltimesheet)
        Me.Controls.Add(Me.btn_loadtemptimesheet)
        Me.Controls.Add(Me.btn_savetimesheet)
        Me.Controls.Add(Me.dgv_temptimesheet)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "frmUploadedTimesheet"
        Me.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Timesheet"
        CType(Me.dgv_temptimesheet, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents dgv_temptimesheet As System.Windows.Forms.DataGridView
    Friend WithEvents btn_savetimesheet As System.Windows.Forms.Button
    Friend WithEvents btn_canceltimesheet As System.Windows.Forms.Button
    Friend WithEvents btn_loadtemptimesheet As System.Windows.Forms.Button
End Class
