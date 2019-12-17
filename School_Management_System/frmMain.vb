Public Class frmMain
    Public syID As String
    Private Sub DatabaseSettingsToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DatabaseSettingsToolStripMenuItem.Click
        frmDatabaseSettings.ShowDialog()
    End Sub

    Private Sub AddUserToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AddUserToolStripMenuItem.Click
        frmUserlist.ShowDialog()
    End Sub
    Sub get_sy_data()
        Dim sc As New school_class
        sc.command = 0
        sc.searchValue = ""
        sc.get_sy_data()
        For Each row As DataRow In sc.dtable.Rows
            syID = row(0)
            lblSy.Text = row(1) & " - " & row(2)
        Next
    End Sub
    Private Sub frmMain_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.Hide()
        frmLogin.ShowDialog()
        get_sy_data()
    End Sub

    Private Sub ExitToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ExitToolStripMenuItem.Click
        Me.Close()
    End Sub

    Private Sub LogoutToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles LogoutToolStripMenuItem.Click
        If MsgBox("Are you sure ?", MsgBoxStyle.YesNo, "System Reminder") = MsgBoxResult.Yes Then
            Me.Hide()
            frmLogin.ShowDialog()
        End If
    End Sub

    Private Sub SectionListToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SectionListToolStripMenuItem.Click
        frmSection.ShowDialog()
    End Sub

    Private Sub TeacherListToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TeacherListToolStripMenuItem.Click
        frmTeacherList.ShowDialog()
    End Sub

    Private Sub StudentListToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles StudentListToolStripMenuItem.Click
        frmStudentList.ShowDialog()
    End Sub

    Private Sub SchoolYearListToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SchoolYearListToolStripMenuItem.Click
        frmSchoolYearList.ShowDialog()
    End Sub

    Private Sub SwitchSchoolYearToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SwitchSchoolYearToolStripMenuItem.Click
        frmSwitchSY.ShowDialog()
    End Sub
End Class
