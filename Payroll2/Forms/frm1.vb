Imports MySql.Data.MySqlClient

Public Class frm1

    Private Sub frm1_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        getCompanyList()
        If dt.Rows.Count > 0 Then
            lb_company.DataSource = dt
            lb_company.DisplayMember = "name"
        End If
        loadCutoff()
        If app_mode = "integrate" Then
            lbl_newcutoff.Visible = False
        End If
    End Sub

    Public Sub loadCutoff()
        GetCutoff()
        If dt.Rows.Count > 0 Then
            lb_cutoff.DataSource = dt
            lb_cutoff.DisplayMember = "cutoff_range"
        End If
    End Sub

    Private Sub btn_savesettings_Click(sender As System.Object, e As System.EventArgs) Handles btn_savesettings.Click
        'save cutoff
        'SetActiveCutoff(lb_cutoff.Text)
        StrSql = "SELECT * FROM tblref_settings WHERE setting_name = 'current_cutoff'"
        QryReadP()
        Dim cutoffreader As MySqlDataReader = cmd.ExecuteReader
        If cutoffreader.HasRows Then
            StrSql = "UPDATE tblref_settings SET value = '" & lb_cutoff.Text & "' WHERE setting_name = 'current_cutoff'"
        Else
            StrSql = "INSERT INTO tblref_settings VALUES ('current_cutoff','" & lb_cutoff.Text & "')"
        End If
        QryReadP()
        cmd.ExecuteNonQuery()
        current_cutoff = lb_cutoff.Text
        'save company
        'StrSql = "SELECT * FROM companies WHERE name = '" & lb_company.Text & "'"
        StrSql = "SELECT * FROM tblref_settings WHERE setting_name = 'current_company'"
        QryReadP()
        Dim compreader As MySqlDataReader = cmd.ExecuteReader
        If compreader.HasRows Then
            StrSql = "UPDATE tblref_settings SET value = '" & lb_company.Text & "' WHERE setting_name = 'current_company'"
        Else
            StrSql = "INSERT INTO tblref_settings VALUES ('current_company','" & lb_company.Text & "')"
        End If
        QryReadP()
        cmd.ExecuteNonQuery()
        current_company = lb_company.Text
        frmMain.Show()
        Me.Close()
    End Sub

    Private Sub lbl_newcutoff_LinkClicked(sender As System.Object, e As System.Windows.Forms.LinkLabelLinkClickedEventArgs) Handles lbl_newcutoff.LinkClicked
        frmAddCutoff.ShowDialog()
    End Sub

    Private Sub lb_cutoff_SelectedValueChanged(sender As System.Object, e As System.EventArgs) Handles lb_cutoff.SelectedValueChanged
        'MessageBox.Show(lb_cutoff.Text.ToString)

    End Sub
End Class