Imports System.Data.SqlClient

Public Class user_class
    Public userid As String
    Public username As String
    Public password As String
    Public role As String
    Public status As String
    Public command As String
    Public searchValue As String
    Public dtable As New DataTable

    'function for insert and update user
    Public Sub insert_update_user()
            Dim cmd As New SqlCommand("insert_update_user", conn)
            checkConn()
            With cmd
                .CommandType = CommandType.StoredProcedure
                .Parameters.AddWithValue("@command", SqlDbType.Int).Value = command
                .Parameters.AddWithValue("@userID", SqlDbType.VarChar).Value = userid
                .Parameters.AddWithValue("@username", SqlDbType.VarChar).Value = username
                .Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = password
                .Parameters.AddWithValue("@role", SqlDbType.VarChar).Value = role
                .Parameters.AddWithValue("@status", SqlDbType.VarChar).Value = status
            End With
            cmd.ExecuteNonQuery()
    End Sub
    Public Sub get_user_data()
        Dim cmd As New SqlCommand("get_user_data", conn)
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
End Class
