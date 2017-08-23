Imports System.ComponentModel
Imports MySql.Data.MySqlClient

Public Class frmLogin
    Private Sub OK_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OK.Click
        Dim result = Login(tb_username.Text, tb_password.Text)
        If result(0) = "success" Then
            'MessageBox.Show(result(2))
            logged_user = result(2)
            logged_id = result(1)
            'MessageBox.Show(logged_user)
            If result(2).ToString = "Payroll Officer" Or result(2).ToString = "Admin" Then
                'check for current cutoff and company from tblref_settings
                'If app_mode = "integrate" Then
                '    frmCheckAll.ShowDialog()
                'End If
                'If checkCurrents() = False Then
                '    frm1.ShowDialog()
                'End If
                checkCurrents()
                frmMain.Show()
            Else
                MessageBox.Show("You don't have the necessary credentials to access this program.")
            End If
            Me.Close()
        Else
            MessageBox.Show("Login Failed. Please check your username/password and try again.")
        End If
    End Sub

    Private Sub Cancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Cancel.Click
        Me.Close()
    End Sub

    Private Sub frmLogin_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim dynamicControl As New ctrlServerSettings
        With dynamicControl
            .Name = "serverSettings"
            .Location = New Point(0, 195)
        End With
        Me.Controls.Add(dynamicControl)

        dynamicControl.init_form()
    End Sub

    Private Sub LinkLabel1_LinkClicked(sender As System.Object, e As System.Windows.Forms.LinkLabelLinkClickedEventArgs) Handles login_settings.LinkClicked
        If isfrmLogin_expanded = False Then
            Me.Height = 440
            isfrmLogin_expanded = True
        Else
            Me.Height = 220
            isfrmLogin_expanded = False
        End If
    End Sub

    Private Sub checkCurrents()
        StrSql = "SELECT * FROM tblref_settings"
        QryReadP()
        Dim dtaread As MySqlDataReader = cmd.ExecuteReader
        Dim count As Integer = 0
        If dtaread.HasRows Then
            While dtaread.Read()
                Select Case dtaread("setting_name").ToString
                    Case "app_mode"
                        app_mode = dtaread("value").ToString
                    Case "current_cutoff"
                        current_cutoff = dtaread("value").ToString
                    Case "current_company"
                        current_company = dtaread("value").ToString
                End Select
            End While
        End If
        Close_Connect()
    End Sub

End Class
