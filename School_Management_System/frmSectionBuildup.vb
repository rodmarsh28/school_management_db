Public Class frmSectionBuildup

    Private Sub ToolStripStatusLabel8_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripStatusLabel8.Click
        Dim frm As New frmSectionList
        frm.ShowDialog()
        If successClicked = True Then
            successClicked = False
        End If
    End Sub
    Sub get_student_list()
        Dim frm As New frmStudentList
        Dim sc As New school_class
        dgv.Rows.Clear()
        If frm.successClicked = True Then
            sc.command = 1
            sc.get_student_data(dgv.CurrentRow.Cells(0).Value)
            dgv.Rows.Add(sc.dtable("studentID"), sc.dtable("lastname"), sc.dtable("firstname"), sc.dtable("MI"), sc.dtable("gender"), sc.dtable("address"))
        End If
    End Sub
    'Sub get_section_list()
    '    Dim sc As New school_class
    '    sc.command = 0
    '    sc.searchValue = ""
    '    sc.get_section_data()
    '    dgvSec.Rows.Clear()
    '    For Each row As DataRow In sc.dtable.Rows
    '        dgvSec.Rows.Add(row(0), row(1), row(2), row(3), row(4))
    '    Next
    '    dgvSec.ClearSelection()
    'End Sub
    Sub get_section_enrolled()
        dgvSec.Rows.Clear()
        For Each lst In qry_class.getEnrolledData("Section", frmMain.lblSy.Text, "")
            With lst
                dgvSec.Rows.Add(.sectionNo, .sectionName, .sectionGraDE, .maxStudCount, .Student_Count)
            End With
        Next
    End Sub
    Private Sub frmSectionBuildup_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    End Sub
    Private Sub dgvSec_CellMouseClick(ByVal sender As Object, ByVal e As System.Windows.Forms.DataGridViewCellMouseEventArgs) Handles dgvSec.CellMouseClick
        If dgv.SelectedRows.Count > 0 Then
            get_student_list()
        End If
    End Sub
    Private Sub ToolStripStatusLabel2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripStatusLabel2.Click
        Dim frm As New frmSectionList
        frm.get_section_list()
        removeExistingData(Me.dgvSec, frm.dgv, 0, 0)
        frm.ShowDialog()
        If successClicked = True Then
            dgv.Rows.Clear()
            With frm.dgv.CurrentRow
                dgvSec.Rows.Add(.Cells(0).Value, .Cells(1).Value, .Cells(2).Value, .Cells(3).Value, .Cells(4).Value)
            End With
            successClicked = False
        End If
    End Sub

    Private Sub ToolStripStatusLabel3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripStatusLabel3.Click
        For Each row As DataGridViewRow In dgvSec.SelectedRows
            dgvSec.Rows.Remove(row)
        Next
    End Sub

    Private Sub ToolStripStatusLabel9_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripStatusLabel9.Click
        For Each row As DataGridViewRow In dgv.SelectedRows
            dgv.Rows.Remove(row)
        Next
    End Sub

    Private Sub dgvSec_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dgvSec.SelectionChanged
        If dgv.SelectedRows.Count > 0 Then
            If dgv.SelectedRows.Count > 0 Then
                get_student_list()
            End If
        End If
    End Sub
End Class