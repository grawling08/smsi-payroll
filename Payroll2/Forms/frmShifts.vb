Public Class frmShifts

    Private Sub frmShifts_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        DateTimePicker1.Format = DateTimePickerFormat.Time
        DateTimePicker1.ShowUpDown = True
        DateTimePicker2.Format = DateTimePickerFormat.Time
        DateTimePicker2.ShowUpDown = True
    End Sub

    Private Sub btn_saveshift_Click(sender As System.Object, e As System.EventArgs) Handles btn_saveshift.Click

    End Sub
End Class