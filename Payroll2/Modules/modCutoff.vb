Imports MySql.Data.MySqlClient

Module modCutoff

    'set to active cutoff
    Sub SetActiveCutoff(ByVal range As String)
        'clear
        StrSql = "UPDATE tbl_cutoff SET ifActive = 'N' WHERE cutoff_range != '" & range & "'"
        QryReadP()
        cmd.ExecuteNonQuery()
        Close_Connect()

        'set
        StrSql = "UPDATE tbl_cutoff SET ifActive = 'Y' WHERE cutoff_range = '" & range & "'"
        QryReadP()
        cmd.ExecuteNonQuery()
        current_cutoff = range
        Close_Connect()
    End Sub

    'add new cutoff
    Sub AddNewCutoff(ByVal fromDate As String, ByVal toDate As String, ByVal occurence As String)
        If CheckCutoff(fromDate, toDate, occurence) = False Then
            StrSql = "INSERT INTO tbl_cutoff(cutoff_range,occurence_id,from_date,to_date,ifActive,ifFinished) VALUES('" & fromDate & " to " & toDate & "',(SELECT occurence_id from tblref_occurences where name=@occurence), @from, @to, 'N', 'N')"
            QryReadP()
            Try
                With cmd
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
        StrSql = "SELECT * FROM tbl_cutoff WHERE occurence_id = (SELECT occurence_id FROM tblref_occurences WHERE name='" & occurence & "') AND from_date = '" & fromDate & "' AND to_date ='" & toDate & "'"
        QryReadP()
        Dim dtareader As MySqlDataReader = cmd.ExecuteReader
        If dtareader.HasRows Then
            Return True
        End If
        Return False
    End Function
End Module
