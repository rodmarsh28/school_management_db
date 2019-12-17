Public Class frmSchoolYearList

    Sub generate_SYID()
        Dim str As String
        Try
            Dim sc As New system_class
            sc.No = "syID"
            sc.dbTable = "tblSchoolYear"
            sc.generate_id_no()
            str = "SY-" & (CInt(Mid(sc.outPutValue, Len(sc.outPutValue) - 4)) + 1).ToString("00000")
        Catch ex As Exception
            str = "SY-00001"
        End Try
        txtsyID.Text = str
    End Sub
    Sub get_sy_data()
        Dim sc As New school_class
        sc.command = 0
        sc.searchValue = ""
        sc.get_sy_data()
        dgv.Rows.Clear()
        For Each row As DataRow In sc.dtable.Rows
            dgv.Rows.Add(row(0), row(1) & " - " & row(2), row(3))
        Next

    End Sub
    Sub clear()
        txtFrom.Text = ""
        txtTo.Text = ""
        txtPrincipal.Text = ""
        get_sy_data()
        generate_SYID()
    End Sub
    Sub insert_update_SY()
        Try
            Dim sc As New school_class
            If btnSave.Text = "Save" Then
                sc.command = 0
            ElseIf btnSave.Text = "Update" Then
                sc.command = 1
            End If
            sc.syID = txtsyID.Text
            sc.yFrom = txtFrom.Text
            sc.yTo = txtTo.Text
            sc.principal = txtPrincipal.Text
            sc.status = "Active"
            sc.insert_update_sy()
            MsgBox("School Year Saved !", MsgBoxStyle.Information, "System Information")
            clear()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub frmSchoolYearList_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        generate_SYID()
        get_sy_data()
    End Sub

    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If MsgBox("Are you sure ?", MsgBoxStyle.YesNo, "System Reminder") = MsgBoxResult.Yes Then
            insert_update_SY()
            btnSave.Text = "Save"
        End If
    End Sub
    Private Sub dgv_CellMouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.DataGridViewCellMouseEventArgs) Handles dgv.CellMouseDown
        Try
            If e.Button = MouseButtons.Right Then
                dgv.CurrentCell = dgv(e.ColumnIndex, e.RowIndex)
                dgv.ContextMenuStrip = ContextMenuStrip1
            End If
        Catch ex As Exception

        End Try
    End Sub
    Sub get_sy_data_toUpdate()
        Dim sc As New school_class
        sc.command = 0
        sc.searchValue = ""
        sc.get_sy_data()
        For Each row As DataRow In sc.dtable.Rows
            txtsyID.Text = row(0)
            txtFrom.Text = row(1)
            txtTo.Text = row(2)
            txtPrincipal.Text = row(3)
        Next
        btnSave.Text = "Update"

    End Sub

    Private Sub ContextMenuStrip1_Closing(ByVal sender As Object, ByVal e As System.Windows.Forms.ToolStripDropDownClosingEventArgs) Handles ContextMenuStrip1.Closing
        dgv.ContextMenuStrip = Nothing
    End Sub

    Private Sub UpdateToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles UpdateToolStripMenuItem.Click
        get_sy_data_toUpdate()
    End Sub
End Class