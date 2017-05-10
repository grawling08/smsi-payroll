Public Class frmShifts

    Private Sub frmShifts_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        DateTimePicker1.Format = DateTimePickerFormat.Time
        DateTimePicker1.ShowUpDown = True
        DateTimePicker2.Format = DateTimePickerFormat.Time
        DateTimePicker2.ShowUpDown = True
    End Sub

    Private Sub btn_saveshift_Click(sender As System.Object, e As System.EventArgs) Handles btn_saveshift.Click

    End Sub

    Private Sub ComboBox1_SelectedValueChanged(sender As System.Object, e As System.EventArgs) Handles ComboBox1.SelectedValueChanged
        StrSql = "SELECT * FROM tbl_shifts WHERE shiftgroup = '" & ComboBox1.Text & "'"
        QryReadP()
        ds = New DataSet()
        adpt.Fill(ds, "shifts")
        dgv_shifts.DataSource = ds.Tables(0)
        Dim col = dgv_shifts.Columns.Count
        For i As Integer = 0 To col
            dgv_shifts.Columns(i).SortMode = DataGridViewColumnSortMode.NotSortable
            dgv_shifts.Columns(i).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
            i = i + i
        Next
        dgv_shifts.Columns(1).Visible = False
    End Sub
End Class