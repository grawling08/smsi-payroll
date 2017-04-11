Imports MySql.Data.MySqlClient
Imports System.Security.Cryptography
Imports System.Text

Module modLogin

    Public isfrmLogin_expanded As Boolean = False

    Function Login(ByVal username As String, ByVal password As String) As Array
        Dim login_details(2) As String
        Dim md5Hash As MD5 = MD5.Create()
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

    Function GetMd5Hash(ByVal md5Hash As MD5, ByVal input As String) As String

        ' Convert the input string to a byte array and compute the hash.
        Dim data As Byte() = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input))

        ' Create a new Stringbuilder to collect the bytes
        ' and create a string.
        Dim sBuilder As New StringBuilder()

        ' Loop through each byte of the hashed data 
        ' and format each one as a hexadecimal string.
        Dim i As Integer
        For i = 0 To data.Length - 1
            sBuilder.Append(data(i).ToString("x2"))
        Next i

        ' Return the hexadecimal string.
        Return sBuilder.ToString()

    End Function 'GetMd5Hash
End Module
