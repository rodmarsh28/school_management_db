Public Class frmSection
    Sub insert_update_section()
        Try
            Dim sc As New school_class
            If btnSave.Text = "Save" Then
                sc.command = 0
            ElseIf btnSave.Text = "Update" Then
                sc.command = 1
            End If
            sc.sectionNo = txtNo.Text
            sc.sectionName = txtSecName.Text
            sc.grade = txtGrade.Text
            sc.maxLimit = CInt(txtStudLimit.Text)
            sc.status = ""
            sc.syID = frmMain.lblSy.Text
            sc.insert_update_user()
            MsgBox("Section Saved !", MsgBoxStyle.Information, "System Information")
            get_section_data()
            clear()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Sub get_section_data()
        Try
            Dim sc As New school_class
            sc.command = 0
            sc.searchValue = ""
            sc.get_section_data()
            dgv.Rows.Clear()
            For Each row As DataRow In sc.dtable.Rows
                dgv.Rows.Add(row(0), row(1), row(2), row(3), row(4))
            Next
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            dgv.ClearSelection()
            lblCount.Text = dgv.Rows.Count.ToString("n0")
        End Try
    End Sub
    Sub generate_sectionNo()
        Dim str As String
        Try
            Dim sc As New system_class
            sc.No = "sectionNo"
            sc.dbTable = "tblSection"
            sc.generate_id_no()
            str = "SEC-" & (CInt(Mid(sc.outPutValue, Len(sc.outPutValue) - 4)) + 1).ToString("00000")
        Catch ex As Exception
            str = "SEC-00001"
        End Try
        txtNo.Text = str
    End Sub
    Sub clear()
        txtSecName.Text = ""
        txtGrade.Text = ""
        txtStudLimit.Text = ""
        get_section_data()
        generate_sectionNo()
    End Sub
    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If MsgBox("Are you sure ?", MsgBoxStyle.YesNo, "System Reminder") = MsgBoxResult.Yes Then
            insert_update_section()
            btnSave.Text = "Save"
        End If
    End Sub

    Private Sub frmSection_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        generate_sectionNo()
        get_section_data()
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

    Private Sub ContextMenuStrip1_Closing(ByVal sender As Object, ByVal e As System.Windows.Forms.ToolStripDropDownClosingEventArgs) Handles ContextMenuStrip1.Closing
        dgv.ContextMenuStrip = Nothing
    End Sub

    Private Sub UpdateToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles UpdateToolStripMenuItem.Click
        Dim sc As New school_class
        sc.command = 1
        sc.searchValue = dgv.CurrentRow.Cells(0).Value
        sc.get_section_data()
        For Each row As DataRow In sc.dtable.Rows
            txtNo.Text = row(0)
            txtSecName.Text = row(1)
            txtGrade.Text = row(2)
            txtStudLimit.Text = row(3)
        Next
        btnSave.Text = "Update"
    End Sub
End Class