Public Class frmTeacherInformation

    Sub insert_update_section()
        Try
            Dim sc As New school_class
            If btnSave.Text = "Save" Then
                sc.command = 0
            ElseIf btnSave.Text = "Update" Then
                sc.command = 1
            End If
            sc.teacherID = txtID.Text
            sc.ln = ln.Text
            sc.fn = fn.Text
            sc.mi = mi.Text
            sc.address = addr.Text
            sc.gender = cmbGen.Text
            sc.bd = dtpBD.Value.ToString("yyyy/MM/dd")
            sc.bdPlace = bp.Text
            sc.CN = cn.Text
            sc.mName = mName.Text
            sc.fName = fName.Text
            sc.eName = cPersonName.Text
            sc.eCN = cPersonCN.Text
            sc.status = "Active"
            sc.insert_update_teacher()
            MsgBox("Teacher Information Saved !", MsgBoxStyle.Information, "System Information")
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Sub generate_No()
        Dim str As String
        Try
            Dim sc As New system_class
            sc.No = "teacherID"
            sc.dbTable = "tblTeacherInfo"
            sc.generate_id_no()
            str = "TID-" & (CInt(Mid(sc.outPutValue, Len(sc.outPutValue) - 4)) + 1).ToString("00000")
        Catch ex As Exception
            str = "TID-00001"
        End Try
        txtID.Text = str
    End Sub
    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If MsgBox("Are you sure ?", MsgBoxStyle.YesNo, "System Reminder") = MsgBoxResult.Yes Then
            insert_update_section()
            btnSave.Text = "Save"
        End If
    End Sub

    Private Sub frmTeacherInformation_FormClosed(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        Me.Dispose()
    End Sub

    Private Sub frmTeacherInformation_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        generate_No()
    End Sub

    Private Sub btnCancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        Me.Close()
    End Sub
End Class