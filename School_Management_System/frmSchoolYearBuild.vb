Public Class frmSchoolYearBuild
  

    Private Sub ToolStripStatusLabel6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripStatusLabel6.Click
        Dim frm As New frmSection
        frm.ShowDialog()
        If successClicked = True Then
            With frm.dgv.CurrentRow
                dgvSec.Rows.Add(.Cells(0).Value, .Cells(1).Value, .Cells(2).Value, .Cells(3).Value)
            End With
            successClicked = False
        End If
    End Sub

    Private Sub frmSchoolYearBuild_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub
End Class