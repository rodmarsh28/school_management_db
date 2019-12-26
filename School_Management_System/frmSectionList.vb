
Public Class frmSectionList
    Sub get_section_list()
        'Dim sc As New school_class
        'sc.command = 0
        'sc.searchValue = txtSearch.Text
        'sc.get_section_data()
        'dgv.Rows.Clear()
        'For Each row As DataRow In sc.dtable.Rows
        '    dgv.Rows.Add(row("sectionNo"), row("sectionName"), row("sectionGrade"), row("maxStudCount"), row("Student_Count"))
        'Next
        dgv.Rows.Clear()
        For Each lst In qry_class.getSectionList(txtSearch.Text)
            With lst
                dgv.Rows.Add(.sectionNo, .sectionName, .sectionGrade, .maxStudCount, .Student_Count)
            End With
        Next
    End Sub

    Private Sub frmSectionList_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    End Sub

    Private Sub dgv_CellMouseDoubleClick(ByVal sender As Object, ByVal e As System.Windows.Forms.DataGridViewCellMouseEventArgs) Handles dgv.CellMouseDoubleClick
        If dgv.SelectedRows.Count > 0 Then
            successClicked = True
            Me.Close()
        End If
    End Sub
End Class














