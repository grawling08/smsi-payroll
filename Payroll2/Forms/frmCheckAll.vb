Public Class frmCheckAll

    Private Sub Button1_Click(sender As System.Object, e As System.EventArgs) Handles Button1.Click
        If SyncCompany() = True Then
            Label10.Text = "Done!"
        Else
            Label10.Text = "Failed!"
        End If
        If SyncEmployee() = True Then
            Label11.Text = "Done!"
        Else
            Label11.Text = "Failed!"
        End If
        If SyncCutoff() = True Then
            Label12.Text = "Done!"
        Else
            Label12.Text = "Failed!"
        End If
        If SyncShifts() = True Then
            Label13.Text = "Done!"
        Else
            Label13.Text = "Failed!"
        End If
        If SyncLoans() = True Then
            Label14.Text = "Done!"
        Else
            Label14.Text = "Failed!"
        End If
        If SyncOvertime() = True Then
            Label15.Text = "Done!"
        Else
            Label15.Text = "Failed!"
        End If
        If SyncLeaves() = True Then
            Label16.Text = "Done!"
        Else
            Label16.Text = "Failed!"
        End If
        If SyncAllowances() = True Then
            Label17.Text = "Done!"
        Else
            Label17.Text = "Failed!"
        End If
    End Sub
End Class