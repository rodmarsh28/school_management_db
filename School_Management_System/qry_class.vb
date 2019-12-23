Public Class qry_class
    Public Shared Function getStudentList(ByVal searchValue As String)

        Dim db As New bindSourceDBDataContext("Data Source=localhost;Initial Catalog=school_mgm_db;Persist Security Info=True;User ID=sa; password=passwork")
        Return From res In db.GetTable(Of tblStudentInfo)()
               Where res.studentID.Contains(searchValue) Or res.lastname.Contains(searchValue) Or res.firstname.Contains(searchValue)
    End Function
End Class
