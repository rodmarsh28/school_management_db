Imports System.IO

Public Class frmStudentList

    Sub get_student_list()
        Try
            Dim sc As New school_class
            sc.command = 0
            sc.searchValue = txtSearch.Text
            sc.get_student_data()
            dgv.Rows.Clear()
            For Each row As DataRow In sc.dtable.Rows
                dgv.Rows.Add(row(0), row(2), row(3), row(4), row(5), row(6), row(7))
            Next
            lblCount.Text = dgv.Rows.Count.ToString("n0")
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        frmStudentInformation.ShowDialog()
    End Sub

    Private Sub txtSearch_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtSearch.TextChanged
        get_student_list()
    End Sub

    Private Sub frmStudentList_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        get_student_list()
    End Sub
    Sub get_student_data_toUpdate()
        Try
            Dim sc As New school_class
            sc.command = 0
            sc.searchValue = dgv.CurrentRow.Cells(0).Value
            sc.get_student_data()
            For Each row As DataRow In sc.dtable.Rows
                Dim imageData As Byte() = DirectCast(row(1), Byte())
                frmStudentInformation.txtID.Text = row(0)
                Using picture As New MemoryStream(imageData, 0, imageData.Length)
                    picture.Write(imageData, 0, imageData.Length)
                    frmStudentInformation.PictureBox1.BackgroundImage = Image.FromStream(picture, True)
                End Using
                frmStudentInformation.ln.Text = row(2)
                frmStudentInformation.fn.Text = row(3)
                frmStudentInformation.mi.Text = row(4)
                frmStudentInformation.addr.Text = row(5)
                If row(6) = "Male" Then
                    frmStudentInformation.cmbGen.SelectedIndex = 0
                Else
                    frmStudentInformation.cmbGen.SelectedIndex = 1
                End If
                frmStudentInformation.mName.Text = row(7)
                frmStudentInformation.mCN.Text = row(8)
                frmStudentInformation.fName.Text = row(9)
                frmStudentInformation.fCN.Text = row(10)
                frmStudentInformation.cPersonName.Text = row(11)
                frmStudentInformation.cPersonCN.Text = row(12)
                If row(0) = "Inactive" Then
                    frmStudentInformation.chkInactive.Checked = True
                Else
                    frmStudentInformation.chkInactive.Checked = False
                End If
            Next
            frmStudentInformation.ShowDialog()
            frmStudentInformation.btnSave.Text = "Update"
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Private Sub btnEdit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnEdit.Click
        get_student_data_toUpdate()
    End Sub
End Class