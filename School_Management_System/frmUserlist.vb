Public Class frmUserlist
    Dim password As String
    Private Sub frmUserlist_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        get_user_list()
        generate_userID()
    End Sub
    Sub clear()
        txtUser.Text = ""
        txtPass.Text = ""
        txtRepass.Text = ""
        cmbRole.SelectedIndex = 0
        cmbStatus.SelectedIndex = 0
        get_user_list()
        generate_userID()
    End Sub
    Sub generate_userID()
        Dim str As String
        Try
            Dim sc As New system_class
            sc.No = "userID"
            sc.dbTable = "tblUser"
            sc.generate_id_no()
            str = "USR-" & (CInt(Mid(sc.outPutValue, Len(sc.outPutValue) - 4)) + 1).ToString("00000")
        Catch ex As Exception
            Str = "USR-00001"
        End Try
        txtUserID.Text = str
    End Sub
    Sub get_user_list()
        Try
            Dim uc As New user_class
            uc.command = 0
            uc.searchValue = ""
            uc.get_user_data()
            dgv.Rows.Clear()
            For Each row As DataRow In uc.dtable.Rows
                dgv.Rows.Add(row(0), row(1), row(3), row(4))
            Next
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            dgv.ClearSelection()
            lblCount.Text = dgv.Rows.Count.ToString("n0")
        End Try
    End Sub
    Sub insert_update_user()
        Try
            Dim uc As New user_class
            If btnSave.Text = "Save" Then
                uc.command = 0
            ElseIf btnSave.Text = "Update" Then
                uc.command = 1
            End If
            uc.userid = txtUserID.Text
            uc.username = txtUser.Text
            uc.password = password
            uc.role = cmbRole.Text
            uc.status = cmbStatus.Text
            uc.insert_update_user()
            MsgBox("User registration successfully", MsgBoxStyle.Information, "System Information")
            clear()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Private Sub TextBox1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtUser.TextChanged

    End Sub

    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If MsgBox("Are you sure ?", MsgBoxStyle.YesNo, "System Reminder") = MsgBoxResult.Yes Then
            If txtPass.Text <> txtRepass.Text Then
                MsgBox("the password you entered is not matched !", MsgBoxStyle.Critical, "system information")
                Exit Sub
            End If
            password = txtPass.Text
            insert_update_user()
            btnSave.Text = "Save"
        End If
    End Sub

    Private Sub UpdateToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles UpdateToolStripMenuItem.Click
        btnSave.Text = "Update"
        txtUserID.Text = dgv.CurrentRow.Cells(0).Value
        txtUser.Text = dgv.CurrentRow.Cells(1).Value
        If dgv.CurrentRow.Cells(2).Value = "Admin" Then
            cmbRole.SelectedIndex = 0
        ElseIf dgv.CurrentRow.Cells(2).Value = "Registrar" Then
            cmbRole.SelectedIndex = 1
        ElseIf dgv.CurrentRow.Cells(2).Value = "Cashier" Then
            cmbRole.SelectedIndex = 2
        End If
        If dgv.CurrentRow.Cells(3).Value = "Active" Then
            cmbStatus.SelectedIndex = 0
        ElseIf dgv.CurrentRow.Cells(3).Value = "Inactive" Then
            cmbStatus.SelectedIndex = 1
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

    Private Sub ContextMenuStrip1_Closing(ByVal sender As Object, ByVal e As System.Windows.Forms.ToolStripDropDownClosingEventArgs) Handles ContextMenuStrip1.Closing
        dgv.ContextMenuStrip = Nothing
    End Sub

End Class