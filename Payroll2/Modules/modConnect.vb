Imports MySql.Data.MySqlClient
Imports System.Configuration
Imports System.Collections.Specialized
Imports System.Security.Cryptography
Imports System.Text

Module modConnect
    Public conn, conn2 As New MySqlConnection
    Public cmd, cmd2 As New MySqlCommand
    Public adpt, adpt2 As New MySqlDataAdapter
    Public WithEvents bsData As New BindingSource
    Public ds As New DataSet
    Public dt As New DataTable
    Public StrSql, StrSql2 As String
    Public serverHR, serverPay, userHR, userPay, passHR, passPay, dbnameHR, dbnamePay, connectstring_hris, connectstring_payroll As String 'connection variables
    Public app_mode, current_cutoff, current_company As String
    Public frmdate_cutoff, todate_cutoff As Date
    Public cutoff_id As Integer
    Public numMatched, numNotMatched As Integer
    Public occurence As String
    Public num_occurence, payslip_id As Integer
    Public md5Hash As MD5 = MD5.Create()
    Public isfrmLogin_expanded As Boolean
    Public logged_user, logged_id As String
    Public prevcutoff_fromdate, prevcutoff_todate As DateTime
    Public prevcutoff_company As String
    Sub SaveSystemSettings(ByVal Payroll_Connect() As String, ByVal HR_Connect() As String)
        'hris connection setting
        SaveSetting("Payroll System", "Startup", "serverHR", HR_Connect(0))
        SaveSetting("Payroll System", "Startup", "usernameHR", HR_Connect(1))
        SaveSetting("Payroll System", "Startup", "passwordHR", HR_Connect(2))
        SaveSetting("Payroll System", "Startup", "dbnameHR", HR_Connect(3))
        'payroll connection settings
        SaveSetting("Payroll System", "Startup", "serverPay", Payroll_Connect(0))
        SaveSetting("Payroll System", "Startup", "usernamePay", Payroll_Connect(1))
        SaveSetting("Payroll System", "Startup", "passwordPay", Payroll_Connect(2))
        SaveSetting("Payroll System", "Startup", "dbnamePay", Payroll_Connect(3))
    End Sub

    Sub GetSystemSettings()
        'get HR connection settings
        serverHR = GetSetting("Payroll System", "Startup", "serverHR", "")
        userHR = GetSetting("Payroll System", "Startup", "usernameHR", "")
        passHR = GetSetting("Payroll System", "Startup", "passwordHR", "")
        dbnameHR = GetSetting("Payroll System", "Startup", "dbnameHR", "")
        connectstring_hris = "server=" + serverHR + ";uid=" + userHR + ";password=" + passHR + ";database=" + dbnameHR + ";"
        'get payroll connection settings
        serverPay = GetSetting("Payroll System", "Startup", "serverPay", "")
        userPay = GetSetting("Payroll System", "Startup", "usernamePay", "")
        passPay = GetSetting("Payroll System", "Startup", "passwordPay", "")
        dbnamePay = GetSetting("Payroll System", "Startup", "dbnamePay", "")
        connectstring_payroll = "server=" + serverPay + ";uid=" + userPay + ";password=" + passPay + ";database=" + dbnamePay + ";"
    End Sub

    Sub Connect_HRIS()
        Try
            If conn.State = ConnectionState.Open Then
                conn.Close()
            End If
            conn.ConnectionString = connectstring_hris
            conn.Open()
        Catch ex As MySql.Data.MySqlClient.MySqlException
            MessageBox.Show("Cannot connect to server. Contact administrator")
        End Try
    End Sub

    Sub Connect_Payroll()
        Try
            If conn.State = ConnectionState.Open Then
                conn.Close()
            End If
            conn.ConnectionString = connectstring_payroll
            conn.Open()
        Catch ex As MySql.Data.MySqlClient.MySqlException
            MessageBox.Show("Cannot connect to server. Contact administrator")
        End Try
    End Sub

    Sub Connect_Sub(ByVal db As String)
        Try
            If conn2.State = ConnectionState.Open Then
                conn2.Close()
            End If
            If db = "hris" Then
                conn2.ConnectionString = connectstring_hris
            ElseIf db = "payroll" Then
                conn2.ConnectionString = connectstring_payroll
            End If
            conn2.Open()
        Catch ex As MySql.Data.MySqlClient.MySqlException
            MessageBox.Show("Cannot connect to server. Contact administrator")
        End Try
    End Sub

    Sub Close_Connect()
        If conn.State = ConnectionState.Open Then
            conn.Close()
        End If
        If conn2.State = ConnectionState.Open Then
            conn2.Close()
        End If
    End Sub

    'sample 1 global query
    Sub QryReadP()
        Connect_Payroll()
        adpt = New MySqlDataAdapter(StrSql, conn)
        cmd = New MySqlCommand(StrSql, conn)
    End Sub

    'sample 2 global query
    Sub QryReadH()
        Connect_HRIS()
        adpt = New MySqlDataAdapter(StrSql, conn)
        cmd = New MySqlCommand(StrSql, conn)
    End Sub

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

#Region "cutoff"
    Sub GetCutoffOccurences()
        StrSql = "SELECT tblref_occurences.name FROM tblref_occurences LEFT JOIN tbl_cutoff ON tbl_cutoff.occurence_id = tblref_occurences.occurence_id " _
                    & "WHERE tbl_cutoff.cutoff_range = '" & current_cutoff & "'"
        QryReadP()
        Dim occreader As MySqlDataReader = cmd.ExecuteReader
        If occreader.HasRows Then
            occreader.Read()
            Select Case occreader("name").ToString
                Case "Monthly"
                    occurence = "Monthly"
                    num_occurence = 1
                Case "Semi-Monthly"
                    occurence = "Semi-Monthly"
                    num_occurence = 2
                Case "Weekly"
                    occurence = "Weekly"
                    num_occurence = 4
            End Select
        End If
        Close_Connect()
    End Sub

    Sub GetOccurences()
        StrSql = "SELECT * FROM tblref_occurences"
        QryReadP()
        dt = New DataTable
        adpt.Fill(dt)
        Close_Connect()
    End Sub

    'load cutoff
    Sub GetCutoff()
        StrSql = "SELECT * FROM tbl_cutoff LEFT JOIN tblref_occurences ON tbl_cutoff.occurence_id = tblref_occurences.occurence_id"
        QryReadP()
        dt = New DataTable
        ds = New DataSet
        adpt.Fill(dt)
        Close_Connect()
    End Sub

    'check if cutoff is 'finished'
    Function isCutoffFinished(ByVal cutoff As String) As Boolean
        Dim ifFinished As Boolean
        StrSql = "SELECT * FROM tbl_cutoff WHERE cutoff_range = '" & cutoff & "' AND status = 'Done'"
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        If dtareader.HasRows Then
            ifFinished = True
        End If
        Return ifFinished
    End Function

    'get cutoff range
    Sub getCutoffRange()
        StrSql = "SELECT * FROM tbl_cutoff WHERE cutoff_range = '" & current_cutoff & "' AND company_id = '" & current_company & "'"
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        If dtareader.HasRows Then
            While dtareader.Read()
                frmdate_cutoff = dtareader("from_date")
                todate_cutoff = dtareader("to_date")
                cutoff_id = dtareader("cutoff_id")
            End While
        End If
        Close_Connect()
    End Sub

    'set to active cutoff
    'Sub SetActiveCutoff(ByVal range As String)
    '    'clear
    '    StrSql = "UPDATE tbl_cutoff SET status = 'N' WHERE cutoff_range != '" & range & "'"
    '    QryReadP()
    '    cmd.ExecuteNonQuery()
    '    Close_Connect()

    '    'set
    '    StrSql = "UPDATE tbl_cutoff SET ifActive = 'Y' WHERE cutoff_range = '" & range & "'"
    '    QryReadP()
    '    cmd.ExecuteNonQuery()
    '    current_cutoff = range
    '    Close_Connect()
    'End Sub

    'add new cutoff

    Sub AddNewCutoff(ByVal fromDate As String, ByVal toDate As String, ByVal occurence As String)
        If CheckCutoff(fromDate, toDate, occurence) = False Then
            StrSql = "INSERT INTO tbl_cutoff(cutoff_range,company_id,occurence_id,from_date,to_date,status) VALUES('" & DateTime.Parse(fromDate).ToString("d MMM yyyy") & " to " & DateTime.Parse(toDate).ToString("d MMM yyyy") & "',@current_company,(SELECT occurence_id from tblref_occurences where name=@occurence), @from, @to, 'Processing')"
            QryReadP()
            Try
                With cmd
                    .Parameters.AddWithValue("@current_company", current_company)
                    .Parameters.AddWithValue("@from", fromDate)
                    .Parameters.AddWithValue("@to", toDate)
                    .Parameters.AddWithValue("@occurence", occurence)
                End With
                cmd.ExecuteNonQuery()
                MessageBox.Show("New Cutoff added!")
            Catch e As DataException
                MessageBox.Show(e.ToString)
            End Try
            Close_Connect()
            frmAddCutoff.Close()
        Else
            MessageBox.Show("WARNING: DUPLICATE ENTRY FROM THE DATABASE!")
        End If

    End Sub

    Function CheckCutoff(ByVal fromDate As String, ByVal toDate As String, ByVal occurence As String) As Boolean
        StrSql = "SELECT * FROM tbl_cutoff WHERE occurence_id = (SELECT occurence_id FROM tblref_occurences WHERE name='" & occurence & "') AND company_id = '" & current_company & "' AND from_date = '" & fromDate & "' AND to_date ='" & toDate & "'"
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        If dtareader.HasRows Then
            Return True
        End If
        Return False
    End Function

    Sub GetPrevCutoff()
        StrSql = "SELECT * from tbl_cutoff WHERE to_date = DATE_SUB('" & frmdate_cutoff.ToString("yyyy-MM-dd") & "', INTERVAL 1 DAY ) AND occurence_id = (SELECT occurence_id FROM tblref_occurences WHERE name='" & occurence & "') AND company_id = 'Solutions Management Systems Inc.'"
        QryReadP()
        Dim prevcutoffreader As MySqlDataReader = cmd.ExecuteReader
        If prevcutoffreader.HasRows Then
            prevcutoffreader.Read()
            prevcutoff_fromdate = prevcutoffreader("from_date").ToString
            prevcutoff_todate = prevcutoffreader("to_date").ToString
            prevcutoff_company = prevcutoffreader("company_id").ToString
        End If
    End Sub
#End Region

    Sub GetCompanyCutoff(ByVal company As String)
        StrSql = "SELECT tbl_cutoff.* FROM tbl_company JOIN tbl_cutoff ON tbl_company.name = tbl_cutoff.company_id WHERE tbl_cutoff.company_id = '" & company & "'"
        QryReadP()
        dt = New DataTable
        ds = New DataSet
        adpt.Fill(dt)
        Close_Connect()
    End Sub

    Sub getCompanyList()
        StrSql = "SELECT * FROM tbl_company"
        QryReadP()
        dt = New DataTable
        ds = New DataSet
        adpt.Fill(dt)
        Close_Connect()
    End Sub

    Sub getEmpIDList(Optional ByVal company As String = "")
        If company = "" Then
            StrSql = "SELECT id AS ID, CONCAT_WS(' ', lName, fName, mName) AS Employee FROM tbl_employee "
        Else
            StrSql = "SELECT tbl_employee.id AS ID, CONCAT_WS(' ', lName, fName, mName) AS Employee FROM tbl_employee " _
                        & "WHERE tbl_employee.company = '" & company & "' ORDER BY tbl_employee.ID ASC"
        End If
        QryReadP()
        dt = New DataTable
        ds = New DataSet()
        adpt.Fill(dt)
        Close_Connect()
    End Sub

#Region "Payroll Process"
    'upload raw attendance sheet
    Sub SaveRawAttendance(ByVal dtable As DataTable)
        Dim dt As DataTable = dtable
        Dim buff0 As String
        Dim buff1 As String
        Dim buff2 As String
        Dim buff3 As String
        Dim buff4 As String
        Dim buff5 As String
        Dim buff6 As String
        Dim rows As Integer = dt.Rows.Count
        Dim counter As Integer = 0
        For i = 0 To dt.Rows.Count - 1
            buff0 = dt.Rows(i)(0).ToString
            buff1 = dt.Rows(i)(1).ToString
            buff2 = dt.Rows(i)(2).ToString
            buff3 = dt.Rows(i)(3).ToString
            buff4 = dt.Rows(i)(4).ToString
            buff5 = dt.Rows(i)(5).ToString
            buff6 = dt.Rows(i)(6).ToString
            'check if timesheet is for the current company
            StrSql = "SELECT * FROM tbl_company WHERE code ='" & current_company & "' OR name = '" & current_company & "'"
            QryReadP()
            Dim compreader As MySqlDataReader = cmd.ExecuteReader()
            If compreader.HasRows Then
                compreader.Read()
                If compreader("code") = buff0 Then
                    'don't insert timesheet if not within the cutoff
                    StrSql = "SELECT * FROM tbl_cutoff WHERE DATE('" & DateTime.Parse(buff6) & "') BETWEEN from_date AND to_date"
                    QryReadP()
                    Dim ctreader As MySqlDataReader = cmd.ExecuteReader()
                    If Not ctreader.HasRows Then
                        'check every line if it has already been added in the table
                        StrSql = "SELECT * FROM tbl_attendanceraw WHERE " _
                                    & "Department = '" & buff0 & "' AND " _
                                    & "Name = '" & buff1 & "' AND " _
                                    & "No = '" & buff2 & "' AND " _
                                    & "Date_Time = '" & buff3 & "' AND " _
                                    & "Status = '" & buff4 & "' AND " _
                                    & "LogTime = '" & buff5 & "' AND " _
                                    & "LogDate = '" & buff6 & "' "
                        '& "LogTime = '" & DateTime.Parse(buff3).ToString("t") & "' AND " _
                        '& "LogDate = '" & DateTime.Parse(buff3).ToString("d") & "' "
                        QryReadP()
                        Dim dtareader As MySqlDataReader = cmd.ExecuteReader()
                        If Not dtareader.HasRows Then
                            'don't insert attendance where 'No.' has not match in employees
                            StrSql = "SELECT * FROM tbl_employee WHERE emp_bio_id = '" & buff2 & "'"
                            QryReadP()
                            Dim empbioreader As MySqlDataReader = cmd.ExecuteReader()
                            If empbioreader.HasRows Then
                                StrSql = "INSERT INTO tbl_attendanceraw(Department, Name, No, Date_Time, Status, LogTime, LogDate, ifMapped) " _
                                                                    & "VALUES('" & buff0 & "','" & buff1 & "','" & buff2 & "','" & buff3 & "','" & buff4 & "','" & buff5 & "','" & buff6 & "',0)"
                                QryReadP()
                                cmd.ExecuteNonQuery()
                                numNotMatched += 1
                            End If
                        Else
                            numMatched += 1
                        End If
                        counter += 1
                    End If
                End If
            End If
        Next
        If counter = rows Then
            MessageBox.Show("Timesheet Saved! " & numNotMatched & " Rows Saved and " & numMatched & " Duplicate Rows")
        Else
            MessageBox.Show("Please check your timesheet file for " & current_company & ".")
        End If
        Close_Connect()
    End Sub

    'get payslip
    Sub getPayslip(ByVal current_cutoff As String)
        adpt.Dispose()
        'use this query string if app is integrated with HRIS
        StrSql = "SELECT tbl_cutoff.cutoff_range as 'Cutoff', code as 'Company', CONCAT(lName, ', ', fName, ' ', LEFT(mName, 1), '.') as Employee, " _
                    & "tbl_payslip.totalWorkHours as 'Total Work Hours', tbl_payslip.income as 'Basic Pay',  " _
                    & "tbl_payslip.regot_pay as 'Regular OT', tbl_payslip.holot_pay as 'Holiday OT',  tbl_payslip.ot_pay as 'Total OT',  " _
                    & "tbl_payslip.allowances as 'Additionals', tbl_payslip.incentives as 'Incentives',  " _
                    & "tbl_payslip.lateabsent_deduct as 'Late/Absent', tbl_payslip.undertime_deduct as 'Undertime',  " _
                    & "tbl_payslip.sss as 'SSS', tbl_payslip.phic as 'PHIC', tbl_payslip.hdmf as 'HDMF',  " _
                    & "tbl_payslip.gross_income as 'Gross Pay', tbl_payslip.tax as 'Tax', tbl_payslip.net_income as 'Net Pay'" _
                    & "FROM tbl_employee " _
                    & "LEFT JOIN tbl_payslip LEFT JOIN tbl_cutoff ON tbl_payslip.cutoff_id = tbl_cutoff.cutoff_id " _
                    & "ON tbl_employee.id_employee = tbl_payslip.employee_id AND tbl_cutoff.cutoff_range = '" & current_cutoff & "' " _
                    & "LEft JOIN tbl_company ON tbl_employee.company = tbl_company.name  " _
                    & "WHERE tbl_company.name = '" & current_company & "' AND employment_status NOT IN(' ','Resigned') ORDER BY Employee"
        QryReadP()
        ds = New DataSet()
        adpt.Fill(ds, "Payroll")
        frmMain.dgv_payroll.DataSource = ds.Tables(0)
        Dim col = frmMain.dgv_payroll.Columns.Count
        Dim i = 0
        While i <= col - 1
            frmMain.dgv_payroll.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
            frmMain.dgv_payroll.Columns(i).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
            frmMain.dgv_payroll.Columns(i).DefaultCellStyle.Format = "N2"
            If i > 2 Then
                frmMain.dgv_payroll.Columns(i).DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight
            End If
            i = i + 1
        End While
        frmMain.dgv_payroll.Columns(0).Visible = False
        frmMain.dgv_payroll.Columns(1).Visible = False
        Close_Connect()
    End Sub

    Function computeSSS(ByVal basic_pay As Double) As String()
        Dim sssContrib(4) As String
        StrSql = "SELECT MAX(salary) AS salary, MAX(employer) AS employer, MAX(employee) AS employee, MAX(total) AS total FROM tblref_sss WHERE salary <= " & (basic_pay / num_occurence)
        QryReadP()
        Dim sssreader As MySqlDataReader = cmd.ExecuteReader
        If sssreader.HasRows Then
            sssreader.Read()
            sssContrib(0) = If(String.IsNullOrEmpty(sssreader("salary").ToString), 0, sssreader("salary").ToString)
            sssContrib(1) = If(String.IsNullOrEmpty(sssreader("employer").ToString), 0, sssreader("employer").ToString)
            sssContrib(2) = If(String.IsNullOrEmpty(sssreader("employee").ToString), 0, sssreader("employee").ToString)
            sssContrib(3) = If(String.IsNullOrEmpty(sssreader("total").ToString), 0, sssreader("total").ToString)
        End If
        Return sssContrib
    End Function

    Function computePhilhealth(ByVal basic_pay As Double) As String()
        Dim phicContrib(4) As String
        StrSql = "SELECT MAX(salary) AS salary, MAX(employer) AS employer, MAX(employee) AS employee, MAX(total) AS total FROM tblref_philhealth WHERE salary <= " & basic_pay
        QryReadP()
        Dim phicreader As MySqlDataReader = cmd.ExecuteReader
        If phicreader.HasRows Then
            phicreader.Read()
            phicContrib(0) = If(String.IsNullOrEmpty(phicreader("salary").ToString), 0, phicreader("salary").ToString)
            phicContrib(1) = If(String.IsNullOrEmpty(phicreader("employer").ToString), 0, phicreader("employer").ToString) / num_occurence
            phicContrib(2) = If(String.IsNullOrEmpty(phicreader("employee").ToString), 0, phicreader("employee").ToString) / num_occurence
            phicContrib(3) = If(String.IsNullOrEmpty(phicreader("total").ToString), 0, phicreader("total").ToString)
        Else
            phicContrib(0) = 0
            phicContrib(1) = 0
            phicContrib(2) = 0
            phicContrib(3) = 0
        End If
        Return phicContrib
    End Function

    Function computeHDMF(ByVal basic_pay As Double) As Double
        Dim hdmfContrib As Double
        If (basic_pay / num_occurence) > 1500 Then
            hdmfContrib = 5000 * 0.01
        Else
            hdmfContrib = 5000 * 0.02
        End If
        Return hdmfContrib
    End Function

    Function computeTax(ByVal gross_income As Double, ByVal code As String) As Double
        Dim tax As Double
        Dim status As String = ""
        If code.Equals("S") Or code.Equals("M") Then
            status = "S/ME"
        ElseIf code.Equals("S1") Or code.Equals("M1") Then
            status = "ME1/S1"
        ElseIf code.Equals("S2") Or code.Equals("M2") Then
            status = "ME2/S2"
        ElseIf code.Equals("S3") Or code.Equals("M3") Then
            status = "ME3/S3"
        ElseIf code.Equals("S4") Or code.Equals("M4") Then
            status = "ME4/S4"
        Else
            status = "Z"
        End If
        StrSql = "SELECT MAX(salary) as salary, MAX(percentage) as percentage, MAX(excemption) as excempt FROM tblref_tax " _
                    & "WHERE status = '" & status & "' And salary <= " & gross_income & " AND occurence = '" & occurence & "'"
        QryReadP()
        Dim taxReader As MySqlDataReader = cmd.ExecuteReader
        If taxReader.HasRows Then
            taxReader.Read()
            tax = taxReader("excempt") + ((gross_income - taxReader("salary")) * taxReader("percentage"))
        Else
            tax = 0
        End If
        Return tax
    End Function

    Function generatePayBatchNumber(ByVal cut_off As String, ByVal payslip_id As String) As String
        Dim batch_number As String = ""
        Return batch_number
    End Function
#End Region



End Module
