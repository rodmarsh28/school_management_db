Public Class frmSwitchSY
    Sub get_sy_data()
        Dim sc As New school_class
        sc.command = 0
        sc.searchValue = ""
        sc.get_sy_data()
        For Each row As DataRow In sc.dtable.Rows
            dgv.Rows.Add(row(0), row(1) & " - " & row(2))
        Next
    End Sub
End Class