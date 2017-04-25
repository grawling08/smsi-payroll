Public Class frmUser
    Private mode, user_id, employee_id, username, role, status As String
    Public Sub New(ByVal mode As String, Optional ByVal user_id As String = "", Optional ByVal employee_id As String = "", Optional ByVal username As String = "", Optional ByVal role As String = "", Optional ByVal status As String = "")
        MyBase.New()
        Me.mode = mode
        Me.user_id = user_id
        Me.employee_id = employee_id
        Me.username = username
        Me.role = role
        Me.status = status
        InitializeComponent()
    End Sub

    Private Sub frmUser_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        'load employee ids
        If mode = "edit" Then
            'set selected cb to matched values 
            cb_employeeid.Text = employee_id
            tb_username.Text = username
            cb_userrole.Text = role
            cb_userstatus.Text = status
        End If
        getEmpID()
    End Sub

    Private Sub Button1_Click(sender As System.Object, e As System.EventArgs) Handles Button1.Click
        If mode = "add" Then
            If tb_password.Text <> "" Then
                StrSql = "INSERT INTO tbl_user(employee_id,username,password,role,status) " _
                            & "VALUES('" & cb_employeeid.Text & "','" _
                                         & tb_username.Text & "','" _
                                         & GetMd5Hash(md5Hash, tb_password.Text) & "','" _
                                         & cb_userrole.Text & "','" _
                                         & cb_userstatus.Text & "')"
            Else
                MessageBox.Show("Enter a password")
                tb_password.Focus()
                Exit Sub
            End If
        ElseIf mode = "edit" Then
            If tb_password.Text <> "" Then
                StrSql = "UPDATE tbl_user SET " _
                        & "employee_id = '" & CStr(cb_employeeid.Text) & "', " _
                        & "username = '" & tb_username.Text & "', " _
                        & "password = '" & GetMd5Hash(md5Hash, tb_password.Text) & "', " _
                        & "role = '" & cb_userrole.Text & "', " _
                        & "status = '" & cb_userstatus.Text & "' " _
                        & "WHERE user_id = " & user_id
            Else
                MessageBox.Show("Enter a password")
                tb_password.Focus()
                Exit Sub
            End If
        End If
        QryReadP()
        cmd.ExecuteNonQuery()
        MessageBox.Show("Saved!")
        frmSettings.load_users()
        Me.Close()
    End Sub

    Sub getEmpID()
        StrSql = "SELECT emp_id FROM tbl_employee"
        QryReadP()
        dt = New DataTable
        adpt.Fill(dt)
        If dt.Rows.Count > 0 Then
            cb_employeeid.DataSource = dt
            cb_employeeid.DisplayMember = "emp_id"
        End If
        Close_Connect()
    End Sub
End Class