Imports System.Data.SqlClient
Imports System.IO

Public Class school_class
    Public sectionNo As String
    Public sectionName As String
    Public grade As String
    Public maxLimit As Integer
    Public status As String
    Public searchValue As String
    Public dtable As New DataTable
    Public command As Integer
    Public syID As String
    Public yFrom As String
    Public yTo As String
    Public principal As String
    Public studentID As String
    Public teacherID As String
    Public ln As String
    Public fn As String
    Public mi As String
    Public address As String
    Public gender As String
    Public bd As DateTime
    Public bdPlace As String
    Public CN As String
    Public mName As String
    Public mCN As String
    Public fName As String
    Public fCN As String
    Public eName As String
    Public eCN As String
    Public picture As New MemoryStream


    Public Sub insert_update_student()
        Dim cmd As New SqlCommand("insert_update_student", conn)
        checkConn()
        With cmd
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@command", SqlDbType.Int).Value = command
            .Parameters.AddWithValue("@studentID", SqlDbType.VarChar).Value = studentID
            .Parameters.AddWithValue("@pictureID", SqlDbType.Image).Value = picture.ToArray()
            .Parameters.AddWithValue("@ln", SqlDbType.VarChar).Value = ln
            .Parameters.AddWithValue("@fn", SqlDbType.VarChar).Value = fn
            .Parameters.AddWithValue("@mi", SqlDbType.VarChar).Value = mi
            .Parameters.AddWithValue("@address", SqlDbType.VarChar).Value = address
            .Parameters.AddWithValue("@gender", SqlDbType.VarChar).Value = gender
            .Parameters.AddWithValue("@bd", SqlDbType.VarChar).Value = bd
            .Parameters.AddWithValue("@bdPlace", SqlDbType.VarChar).Value = bdPlace
            .Parameters.AddWithValue("@mName", SqlDbType.VarChar).Value = mName
            .Parameters.AddWithValue("@mCN", SqlDbType.VarChar).Value = mCN
            .Parameters.AddWithValue("@fName", SqlDbType.VarChar).Value = fName
            .Parameters.AddWithValue("@fCN", SqlDbType.VarChar).Value = fCN
            .Parameters.AddWithValue("@eName", SqlDbType.VarChar).Value = eName
            .Parameters.AddWithValue("@eCN", SqlDbType.VarChar).Value = eCN
            .Parameters.AddWithValue("@status", SqlDbType.VarChar).Value = status
        End With
        cmd.ExecuteNonQuery()
    End Sub
    Public Sub insert_update_teacher()
        Dim cmd As New SqlCommand("insert_update_teacher", conn)
        checkConn()
        With cmd
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@command", SqlDbType.Int).Value = command
            .Parameters.AddWithValue("@teacherID", SqlDbType.VarChar).Value = teacherID
            .Parameters.AddWithValue("@pictureID", SqlDbType.VarChar).Value = ""
            .Parameters.AddWithValue("@ln", SqlDbType.VarChar).Value = ln
            .Parameters.AddWithValue("@fn", SqlDbType.VarChar).Value = fn
            .Parameters.AddWithValue("@mi", SqlDbType.VarChar).Value = mi
            .Parameters.AddWithValue("@address", SqlDbType.VarChar).Value = address
            .Parameters.AddWithValue("@gender", SqlDbType.VarChar).Value = gender
            .Parameters.AddWithValue("@bd", SqlDbType.VarChar).Value = bd
            .Parameters.AddWithValue("@bdPlace", SqlDbType.VarChar).Value = bdPlace
            .Parameters.AddWithValue("@CN", SqlDbType.VarChar).Value = CN
            .Parameters.AddWithValue("@mName", SqlDbType.VarChar).Value = mName
            .Parameters.AddWithValue("@fName", SqlDbType.VarChar).Value = fName
            .Parameters.AddWithValue("@eName", SqlDbType.VarChar).Value = eName
            .Parameters.AddWithValue("@eCN", SqlDbType.VarChar).Value = eCN
            .Parameters.AddWithValue("@status", SqlDbType.VarChar).Value = status
        End With
        cmd.ExecuteNonQuery()
    End Sub

    Public Sub insert_update_user()
        Dim cmd As New SqlCommand("insert_update_section", conn)
        checkConn()
        With cmd
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@command", SqlDbType.Int).Value = command
            .Parameters.AddWithValue("@sectionno", SqlDbType.VarChar).Value = sectionNo
            .Parameters.AddWithValue("@name", SqlDbType.VarChar).Value = sectionName
            .Parameters.AddWithValue("@grade", SqlDbType.VarChar).Value = grade
            .Parameters.AddWithValue("@maxlimit", SqlDbType.VarChar).Value = maxLimit
            .Parameters.AddWithValue("@status", SqlDbType.VarChar).Value = status
            .Parameters.AddWithValue("@syID", SqlDbType.VarChar).Value = syID
        End With
        cmd.ExecuteNonQuery()
    End Sub
    Public Sub insert_update_sy()
        Dim cmd As New SqlCommand("insert_update_SY", conn)
        checkConn()
        With cmd
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@command", SqlDbType.Int).Value = command
            .Parameters.AddWithValue("@SYID", SqlDbType.VarChar).Value = syID
            .Parameters.AddWithValue("@yfrom", SqlDbType.VarChar).Value = yFrom
            .Parameters.AddWithValue("@yto", SqlDbType.VarChar).Value = yTo
            .Parameters.AddWithValue("@principal", SqlDbType.VarChar).Value = principal
            .Parameters.AddWithValue("@status", SqlDbType.VarChar).Value = status
        End With
        cmd.ExecuteNonQuery()
    End Sub
    Public Sub get_section_data()
        Dim cmd As New SqlCommand("get_section_data", conn)
        checkConn()
        With cmd
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@command", SqlDbType.Int).Value = command
            .Parameters.AddWithValue("@searchValue", SqlDbType.VarChar).Value = searchValue
        End With
        Dim da As New SqlDataAdapter(cmd)
        da.SelectCommand = cmd
        da.Fill(dtable)
    End Sub
    Public Sub get_sy_data()
        Dim cmd As New SqlCommand("get_sy_data", conn)
        checkConn()
        With cmd
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@command", SqlDbType.Int).Value = command
            .Parameters.AddWithValue("@searchValue", SqlDbType.VarChar).Value = searchValue
        End With
        Dim da As New SqlDataAdapter(cmd)
        da.SelectCommand = cmd
        da.Fill(dtable)
    End Sub
    Public Sub get_student_data(ByVal value As String)
        Dim cmd As New SqlCommand("get_student_data", conn)
        checkConn()
        With cmd
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@command", SqlDbType.Int).Value = command
            .Parameters.AddWithValue("@searchValue", SqlDbType.VarChar).Value = value
        End With
        Dim da As New SqlDataAdapter(cmd)
        da.SelectCommand = cmd
        da.Fill(dtable)
    End Sub
    Public Sub get_teacher_data(ByVal value As String)
        Dim cmd As New SqlCommand("get_teacher_data", conn)
        checkConn()
        With cmd
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@command", SqlDbType.Int).Value = command
            .Parameters.AddWithValue("@searchValue", SqlDbType.VarChar).Value = value
        End With
        Dim da As New SqlDataAdapter(cmd)
        da.SelectCommand = cmd
        da.Fill(dtable)
    End Sub

   

End Class
