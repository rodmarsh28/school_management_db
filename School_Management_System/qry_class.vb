Public Class qry_class
    Public Shared Function getStudentList(ByVal searchValue As String)
        Dim db As New bindSourceDBDataContext(dcString)
        Return From res In db.GetTable(Of tblStudentInfo)()
               Where res.studentID.Contains(searchValue) Or res.lastname.Contains(searchValue) Or res.firstname.Contains(searchValue)
    End Function
    Public Shared Function getSectionList(ByVal searchValue As String)
        Dim db As New bindSourceDBDataContext(dcString)
        Return db.get_section_data(0, searchValue)
    End Function
    Public Shared Function getEnrolledData(ByVal command As String, ByVal syID As String, ByVal sectionNo As String)
        Dim db As New bindSourceDBDataContext(dcString)
        Return db.get_enrolled_data(command, syID, sectionNo)
    End Function
End Class
