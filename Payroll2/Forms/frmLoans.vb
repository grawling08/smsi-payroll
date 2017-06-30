Imports MySql.Data.MySqlClient

Public Class frmLoans
    Dim employee_id, loan_id As String
    Public Sub New(Optional ByVal emp_id As String = "", Optional ByVal loan_id As String = "")
        MyBase.New()
        employee_id = loan_id
        Me.loan_id = loan_id
        InitializeComponent()
    End Sub

    Private Sub frmLoans_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        StrSql = "SELECT * FROM tbl_loans WHERE employee_id ='" & employee_id & "' AND loan_id ='" & loan_id & "'"
        QryReadP()
        Dim loanreader As MySqlDataReader = cmd.ExecuteReader
        If loanreader.HasRows Then
            loanreader.Read()
            tb_loanname.Text = loanreader("loan_type").ToString
            tb_loancomp.Text = loanreader("lendingCompany").ToString
            tb_loanamount.Text = loanreader("amount").ToString
            tb_loanterm.Text = loanreader("term").ToString
            tb_loanamort.Text = loanreader("monthlyAmortization").ToString
            dtp_loanstart.Text = loanreader("startDate").ToString
            dtp_loanend.Text = loanreader("endDate").ToString
            tb_loanremark.Text = loanreader("remarks").ToString
        End If
    End Sub

    Private Sub Button1_Click(sender As System.Object, e As System.EventArgs) Handles Button1.Click
        If loan_id = "" Then
            StrSql = "INSERT INTO tbl_loans(employee_id,loantype,lendingCompany,amount,term,monthlyAmortization,startDate,endDate,remarks) " _
                        & "VALUES('" & employee_id & "','" & tb_loanname.Text & "','" & tb_loancomp.Text & "','" & tb_loanamount.Text & "','" _
                        & "','" & tb_loanterm.Text & "','" & tb_loanamort.Text & "','" _
                        & DateTime.Parse(dtp_loanstart.Text).ToString("yyyy-MM-dd") & "','" & DateTime.Parse(dtp_loanstart.Text).ToString("yyyy-MM-dd") & "','" & tb_loanremark.Text & "')"
        Else
            StrSql = "UPDATE tbl_loans SET loantype = '" & tb_loanname.Text & "', lendingCompany = '" & tb_loancomp.Text & "', " _
                        & " amount = '" & tb_loanamount.Text & "', term = '" & tb_loanterm.Text & "', monthlyAmortization = '" & tb_loanamort.Text & "' " _
                        & " startDate = '" & DateTime.Parse(dtp_loanstart.Text).ToString("yyyy-MM-dd") & "', " _
                        & " endDate = '" & DateTime.Parse(dtp_loanstart.Text).ToString("yyyy-MM-dd") & "', remarks = '" & tb_loanremark.Text & "' WHERE loan_id =" & loan_id
        End If
        Console.Write(StrSql)
        QryReadP()
        Try
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            Console.Write(ex.ToString)
        End Try
        MessageBox.Show("Saved!")
    End Sub
End Class