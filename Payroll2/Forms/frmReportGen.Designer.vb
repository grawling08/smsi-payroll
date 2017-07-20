<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmReportGen
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
        Dim FlowLayoutPanel1 As System.Windows.Forms.FlowLayoutPanel
        Me.Label4 = New System.Windows.Forms.Label()
        Me.cb_selcutoff = New System.Windows.Forms.ComboBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.cb_selcompany = New System.Windows.Forms.ComboBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.cb_selemployee = New System.Windows.Forms.ComboBox()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.ReportViewer1 = New Microsoft.Reporting.WinForms.ReportViewer()
        Me.Label1 = New System.Windows.Forms.Label()
        FlowLayoutPanel1 = New System.Windows.Forms.FlowLayoutPanel()
        FlowLayoutPanel1.SuspendLayout()
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'FlowLayoutPanel1
        '
        FlowLayoutPanel1.Controls.Add(Me.Label4)
        FlowLayoutPanel1.Controls.Add(Me.cb_selcutoff)
        FlowLayoutPanel1.Controls.Add(Me.Label3)
        FlowLayoutPanel1.Controls.Add(Me.cb_selcompany)
        FlowLayoutPanel1.Controls.Add(Me.Label2)
        FlowLayoutPanel1.Controls.Add(Me.cb_selemployee)
        FlowLayoutPanel1.Controls.Add(Me.Button1)
        FlowLayoutPanel1.Location = New System.Drawing.Point(3, 20)
        FlowLayoutPanel1.Name = "FlowLayoutPanel1"
        FlowLayoutPanel1.Size = New System.Drawing.Size(1052, 30)
        FlowLayoutPanel1.TabIndex = 12
        '
        'Label4
        '
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(3, 0)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(35, 26)
        Me.Label4.TabIndex = 10
        Me.Label4.Text = "Cutoff"
        Me.Label4.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        '
        'cb_selcutoff
        '
        Me.cb_selcutoff.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cb_selcutoff.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.cb_selcutoff.FormattingEnabled = True
        Me.cb_selcutoff.Location = New System.Drawing.Point(44, 3)
        Me.cb_selcutoff.Name = "cb_selcutoff"
        Me.cb_selcutoff.Size = New System.Drawing.Size(200, 21)
        Me.cb_selcutoff.TabIndex = 9
        '
        'Label3
        '
        Me.Label3.Location = New System.Drawing.Point(250, 0)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(51, 26)
        Me.Label3.TabIndex = 10
        Me.Label3.Text = "Company"
        Me.Label3.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        '
        'cb_selcompany
        '
        Me.cb_selcompany.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cb_selcompany.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.cb_selcompany.FormattingEnabled = True
        Me.cb_selcompany.Location = New System.Drawing.Point(307, 3)
        Me.cb_selcompany.Name = "cb_selcompany"
        Me.cb_selcompany.Size = New System.Drawing.Size(200, 21)
        Me.cb_selcompany.TabIndex = 9
        '
        'Label2
        '
        Me.Label2.Location = New System.Drawing.Point(513, 0)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(53, 26)
        Me.Label2.TabIndex = 10
        Me.Label2.Text = "Employee"
        Me.Label2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        '
        'cb_selemployee
        '
        Me.cb_selemployee.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cb_selemployee.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.cb_selemployee.FormattingEnabled = True
        Me.cb_selemployee.Location = New System.Drawing.Point(572, 3)
        Me.cb_selemployee.Name = "cb_selemployee"
        Me.cb_selemployee.Size = New System.Drawing.Size(200, 21)
        Me.cb_selemployee.TabIndex = 9
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(778, 3)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 23)
        Me.Button1.TabIndex = 11
        Me.Button1.Text = "Load"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Panel1
        '
        Me.Panel1.Controls.Add(Me.ReportViewer1)
        Me.Panel1.Location = New System.Drawing.Point(-1, 56)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(1056, 520)
        Me.Panel1.TabIndex = 0
        '
        'ReportViewer1
        '
        Me.ReportViewer1.Location = New System.Drawing.Point(0, 0)
        Me.ReportViewer1.Name = "ReportViewer1"
        Me.ReportViewer1.ProcessingMode = Microsoft.Reporting.WinForms.ProcessingMode.Remote
        Me.ReportViewer1.Size = New System.Drawing.Size(1056, 520)
        Me.ReportViewer1.TabIndex = 3
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(0, 0)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(56, 17)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "LABEL"
        '
        'frmReportGen
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1054, 576)
        Me.Controls.Add(FlowLayoutPanel1)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.Panel1)
        Me.MinimizeBox = False
        Me.MinimumSize = New System.Drawing.Size(1070, 614)
        Me.Name = "frmReportGen"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Generate Reports"
        FlowLayoutPanel1.ResumeLayout(False)
        Me.Panel1.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents ReportViewer1 As Microsoft.Reporting.WinForms.ReportViewer
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents cb_selcompany As System.Windows.Forms.ComboBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents cb_selemployee As System.Windows.Forms.ComboBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents cb_selcutoff As System.Windows.Forms.ComboBox
End Class
