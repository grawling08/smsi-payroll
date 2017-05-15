﻿Public Class frmAddCutoff

    Private Sub frmAddCutoff_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        dtp_fromcutoff.Format = DateTimePickerFormat.Custom
        dtp_fromcutoff.CustomFormat = "yyyy-MM-dd"

        dtp_tocutoff.Format = DateTimePickerFormat.Custom
        dtp_tocutoff.CustomFormat = "yyyy-MM-dd"

        GetOccurences()
        If dt.Rows.Count > 0 Then
            cb_occurence.DataSource = dt
            cb_occurence.DisplayMember = "name"
        End If

    End Sub

    Private Sub btn_closecutoff_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_closecutoff.Click
        Me.Close()
    End Sub

    Private Sub btn_addcutoff_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_addcutoff.Click
        Dim fromDate = dtp_fromcutoff.Text
        Dim toDate = dtp_tocutoff.Text
        If CDate(fromDate) > CDate(toDate) Or CDate(fromDate) = CDate(toDate) Then
            MessageBox.Show("From date should not be greater than or equal to To Date")
        Else
            Dim date_diff = DateDiff(DateInterval.Day, CDate(fromDate).AddDays(-1), CDate(toDate))
            'MessageBox.Show(date_diff)
            If cb_occurence.Text = "Monthly" And (date_diff >= 28 And date_diff <= 31) Then
                AddNewCutoff(fromDate, toDate, cb_occurence.Text)
            ElseIf cb_occurence.Text = "Semi-Monthly" And (date_diff >= 12 And date_diff <= 15) Then
                AddNewCutoff(fromDate, toDate, cb_occurence.Text)
            ElseIf cb_occurence.Text = "Weekly" And date_diff = 7 Then
                AddNewCutoff(fromDate, toDate, cb_occurence.Text)
            Else
                MessageBox.Show("Date range must be - Monthly: 28-31 days, Semi-Monthly: 12-15 days and Weekly: 7 days")
            End If
        End If

        If Application.OpenForms().OfType(Of frm1).Any Then
            frm1.loadCutoff()
        ElseIf Application.OpenForms().OfType(Of frmMain).Any Then
            frmMain.ReloadCutoff()
        End If
    End Sub

End Class