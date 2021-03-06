﻿Imports MySql.Data.MySqlClient

Public Class ctrlServerSettings
    Public ReadOnly Property tb_serverHRa As Control
        Get
            Return tb_serverHR
        End Get
    End Property
    Private Sub save_settings_Click(sender As System.Object, e As System.EventArgs) Handles save_settings.Click
        Dim HRStrings() As String = {tb_serverHR.Text, tb_uidHR.Text, tb_pwordHR.Text, tb_dbHR.Text}
        Dim PayrollStrings() As String = {tb_serverPay.Text, tb_uidPay.Text, tb_pwordPay.Text, tb_dbPay.Text}

        If rb_mode_alone.Checked = True Then
            app_mode = "alone"
            SaveSystemSettings(PayrollStrings, HRStrings)
            init_form()
            MessageBox.Show("Settings Saved!")
        ElseIf rb_mode_integrate.Checked = True Then
            app_mode = "integrate"
            If Not String.IsNullOrEmpty(tb_serverHR.Text) And Not String.IsNullOrEmpty(tb_uidHR.Text) And Not String.IsNullOrEmpty(tb_dbHR.Text) Then
                SaveSystemSettings(PayrollStrings, HRStrings)
                init_form()
                MessageBox.Show("Settings Saved!")
            Else
                MessageBox.Show("Fill the necessary Fields for HRIS Connection", "Important Note", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
            End If
        End If

        
    End Sub
    Sub init_form()
        GetSystemSettings()
        'hr(connections)
        tb_serverHR.Text = serverHR
        tb_uidHR.Text = userHR
        tb_pwordHR.Text = passHR
        tb_dbHR.Text = dbnameHR
        'payroll(connections)
        tb_serverPay.Text = serverPay
        tb_uidPay.Text = userPay
        tb_pwordPay.Text = passPay
        tb_dbPay.Text = dbnamePay
        If Not String.IsNullOrEmpty(serverPay) And Not String.IsNullOrEmpty(dbnamePay) Then
            StrSql = "SELECT * FROM tblref_settings WHERE setting_name = 'app_mode'"
            QryReadP()
            Dim dtareader As MySqlDataReader = cmd.ExecuteReader
            If dtareader.HasRows Then
                dtareader.Read()
                app_mode = dtareader("value").ToString
            End If
        End If
        Select Case app_mode
            Case "alone"
                'disableControls()
                rb_mode_alone.Checked = True
            Case "integrate"
                'enableControls()
                rb_mode_integrate.Checked = True
        End Select
    End Sub

    Sub disableControls()
        tb_serverHR.Enabled = False
        tb_uidHR.Enabled = False
        tb_pwordHR.Enabled = False
        tb_dbHR.Enabled = False
    End Sub
    Sub enableControls()
        tb_serverHR.Enabled = True
        tb_uidHR.Enabled = True
        tb_pwordHR.Enabled = True
        tb_dbHR.Enabled = True
    End Sub

    Private Sub rb_mode_alone_CheckedChanged(sender As System.Object, e As System.EventArgs) Handles rb_mode_alone.CheckedChanged
        If rb_mode_alone.Checked Then
            disableControls()
            If conn.State = ConnectionState.Open Then
                StrSql = "SELECT * FROM tblref_settings WHERE setting_name = 'app_mode'"
                QryReadP()
                Dim settingsreader As MySqlDataReader = cmd.ExecuteReader
                If settingsreader.HasRows Then
                    StrSql = "UPDATE tblref_settings SET value = 'alone' WHERE setting_name = 'app_mode'"
                Else
                    StrSql = "INSERT INTO tblref_settings VALUES('app_mode','alone')"
                End If
                QryReadP()
                cmd.ExecuteNonQuery()
            End If
            app_mode = "alone"
        End If
    End Sub

    Private Sub rb_mode_integrate_CheckedChanged(sender As System.Object, e As System.EventArgs) Handles rb_mode_integrate.CheckedChanged
        If rb_mode_integrate.Checked Then
            enableControls()
            If conn.State = ConnectionState.Open Then
                StrSql = "SELECT * FROM tblref_settings WHERE setting_name = 'app_mode'"
                QryReadP()
                Dim settingsreader As MySqlDataReader = cmd.ExecuteReader
                If settingsreader.HasRows Then
                    StrSql = "UPDATE tblref_settings SET value = 'integrate' WHERE setting_name = 'app_mode'"
                Else
                    StrSql = "INSERT INTO tblref_settings VALUES('app_mode','integrate')"
                End If
                QryReadP()
                cmd.ExecuteNonQuery()
            End If
            app_mode = "integrate"
        End If
    End Sub

    Private Sub btn_testconnect_Click(sender As System.Object, e As System.EventArgs) Handles btn_testconnect.Click
        'payroll test
        Try
            If conn.State = ConnectionState.Open Then
                conn.Close()
            End If
            conn.ConnectionString = connectstring_payroll
            conn.Open()
            MessageBox.Show("Payroll Connection Success!")
        Catch ex As MySql.Data.MySqlClient.MySqlException
            MessageBox.Show("Cannot connect to server. Contact administrator")
        End Try
        'hr test
        If rb_mode_integrate.Checked Then
            Try
                If conn2.State = ConnectionState.Open Then
                    conn2.Close()
                End If
                conn2.ConnectionString = connectstring_hris
                conn2.Open()
                MessageBox.Show("HRIS Connection Success!")
            Catch ex As MySql.Data.MySqlClient.MySqlException
                MessageBox.Show("Cannot connect to server. Contact administrator")
            End Try
        End If
    End Sub
End Class
