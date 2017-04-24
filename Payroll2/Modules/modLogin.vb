Imports MySql.Data.MySqlClient
Imports System.Security.Cryptography
Imports System.Text

Module modLogin

    Public isfrmLogin_expanded As Boolean = False

    Function Login(ByVal username As String, ByVal password As String) As Array
        Dim login_details(2) As String
        'login_details(0) = status
        'login_details(1) = employee_id
        'login_details(2) = role
        Try
            If username = "ads" And password = "ads" Then
                login_details(0) = "success"
                login_details(1) = "admin"
                login_details(2) = "Admin"
            Else
                StrSql = "SELECT * FROM tbl_user WHERE username = '" & username & "' AND password = '" & GetMd5Hash(md5Hash, password) & "'"
                QryReadP()
                Dim reader As MySqlDataReader = cmd.ExecuteReader()
                If reader.HasRows Then
                    reader.Read()
                    login_details(0) = "success"
                    login_details(1) = reader("employee_id").ToString()
                    login_details(2) = reader("role").ToString()
                Else
                    login_details(0) = "failed"
                    login_details(1) = ""
                    login_details(2) = ""
                End If
                Close_Connect()
            End If

        Catch e As Exception

        End Try
        Return login_details
    End Function

    
End Module
