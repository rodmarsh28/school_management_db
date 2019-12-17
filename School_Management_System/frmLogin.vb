Public Class frmLogin
    Dim userID As String
    Dim username As String


    Private Sub OK_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OK.Click
        check_login()
    End Sub
    Sub check_login()
        Try
            Dim uc As New user_class
            uc.command = 1
            uc.searchValue = UsernameTextBox.Text
            uc.get_user_data()
            If PasswordTextBox.Text = uc.dtable.Rows(0).Item(2).ToString Then
                frmMain.lblUSERID.Text = uc.dtable.Rows(0).Item(0).ToString
                frmMain.lblUsername.Text = uc.dtable.Rows(0).Item(1).ToString
                MsgBox("Welcome " & uc.dtable.Rows(0).Item(1).ToString & "!")
                Me.Close()
                PasswordTextBox.Text = ""
                frmMain.Show()
            Else
                MsgBox("Incorrect Username / Password", MsgBoxStyle.Critical, "System Information")
                PasswordTextBox.Text = ""
                Exit Sub
            End If

        Catch ex As Exception

        End Try
    End Sub
    Private Sub Cancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Cancel.Click
        Me.Close()
        frmMain.Close()
    End Sub

    Private Sub frmLogin_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles Me.KeyDown
        If e.KeyCode = Keys.F12 Then
            frmDatabaseSettings.ShowDialog()
        End If
    End Sub

    Private Sub frmLogin_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub
End Class
