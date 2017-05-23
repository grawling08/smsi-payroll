Public Class frmShifts

    Private Sub frmShifts_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        dtp_shifttimein.Format = DateTimePickerFormat.Time
        dtp_shifttimein.ShowUpDown = True
        dtp_shifttimeout.Format = DateTimePickerFormat.Time
        dtp_shifttimeout.ShowUpDown = True
    End Sub

    Private Sub btn_saveshift_Click(sender As System.Object, e As System.EventArgs) Handles btn_saveshift.Click
        StrSql = "INSERT INTO tbl_shifts(day,timein,timeout,shiftgroup) " _
                    & "VALUES('" & cb_shiftday.Text & "','" & dtp_shifttimein.Value.ToString("t") & "','" & dtp_shifttimeout.Value.ToString("t") & "','" & cb_shifttype.Text & "')"
        QryReadP()
        cmd.ExecuteNonQuery()
        loadshifts()
        MessageBox.Show("Saved!")
    End Sub

    Private Sub ComboBox1_SelectedValueChanged(sender As System.Object, e As System.EventArgs) Handles cb_shifttype.SelectedValueChanged
        loadshifts()
    End Sub

    Sub loadshifts()
        StrSql = "SELECT * FROM tbl_shifts WHERE shiftgroup = '" & cb_shifttype.Text & "'"
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
        dgv_shifts.Columns(0).Visible = False
    End Sub

    Private Sub dgv_shifts_CellClick(sender As System.Object, e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_shifts.CellClick
        Dim s = dgv_shifts.CurrentRow.Cells(0).Value.ToString
        cb_shiftday.SelectedIndex = cb_shiftday.FindString(dgv_shifts.CurrentRow.Cells(1).Value.ToString)
        dtp_shifttimein.Value = DateTime.Today.ToString("d") & " " & CDate(dgv_shifts.CurrentRow.Cells(2).Value.ToString)
        dtp_shifttimeout.Value = DateTime.Today.ToString("d") & " " & CDate(dgv_shifts.CurrentRow.Cells(3).Value.ToString)
    End Sub
End Class