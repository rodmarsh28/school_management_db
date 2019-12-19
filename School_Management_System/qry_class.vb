Public Class qry_class
    Dim db As bindSourceDBDataContext = New bindSourceDBDataContext
    Public Shared Function getStudentList(ByVal searchValue As String) As tblStudentInfo
        Dim db As New bindSourceDBDataContext
        Dim studlist = (From a In db.GetTable(Of tblStudentInfo)()
        Where (a.studentID.Contains(searchValue))
               Select a).FirstOrDefault

        Return studlist
    End Function
End Class
