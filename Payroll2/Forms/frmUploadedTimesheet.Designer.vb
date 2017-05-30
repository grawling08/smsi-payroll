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
        Me.TableLayoutPanel1 = New System.Windows.Forms.TableLayoutPanel()
        CType(Me.dgv_temptimesheet, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TableLayoutPanel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'dgv_temptimesheet
        '
        Me.dgv_temptimesheet.AllowUserToAddRows = False
        Me.dgv_temptimesheet.AllowUserToDeleteRows = False
        Me.dgv_temptimesheet.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing
        Me.dgv_temptimesheet.Location = New System.Drawing.Point(3, 3)
        Me.dgv_temptimesheet.MultiSelect = False
        Me.dgv_temptimesheet.Name = "dgv_temptimesheet"
        Me.dgv_temptimesheet.ReadOnly = True
        Me.dgv_temptimesheet.RowHeadersVisible = False
        Me.dgv_temptimesheet.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing
        Me.dgv_temptimesheet.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_temptimesheet.Size = New System.Drawing.Size(785, 528)
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
        Me.btn_canceltimesheet.DialogResult = System.Windows.Forms.DialogResult.Cancel
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
        'TableLayoutPanel1
        '
        Me.TableLayoutPanel1.ColumnCount = 1
        Me.TableLayoutPanel1.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
        Me.TableLayoutPanel1.Controls.Add(Me.dgv_temptimesheet, 0, 0)
        Me.TableLayoutPanel1.Location = New System.Drawing.Point(1, 2)
        Me.TableLayoutPanel1.Name = "TableLayoutPanel1"
        Me.TableLayoutPanel1.RowCount = 1
        Me.TableLayoutPanel1.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
        Me.TableLayoutPanel1.Size = New System.Drawing.Size(791, 534)
        Me.TableLayoutPanel1.TabIndex = 2
        '
        'frmUploadedTimesheet
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.CancelButton = Me.btn_canceltimesheet
        Me.ClientSize = New System.Drawing.Size(794, 571)
        Me.ControlBox = False
        Me.Controls.Add(Me.TableLayoutPanel1)
        Me.Controls.Add(Me.btn_canceltimesheet)
        Me.Controls.Add(Me.btn_loadtemptimesheet)
        Me.Controls.Add(Me.btn_savetimesheet)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "frmUploadedTimesheet"
        Me.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Timesheet"
        CType(Me.dgv_temptimesheet, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TableLayoutPanel1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents dgv_temptimesheet As System.Windows.Forms.DataGridView
    Friend WithEvents btn_savetimesheet As System.Windows.Forms.Button
    Friend WithEvents btn_canceltimesheet As System.Windows.Forms.Button
    Friend WithEvents btn_loadtemptimesheet As System.Windows.Forms.Button
    Friend WithEvents TableLayoutPanel1 As System.Windows.Forms.TableLayoutPanel
End Class
