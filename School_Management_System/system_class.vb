Imports System.Data.SqlClient

Public Class system_class
    Public dbTable As String
    Public No As String
    Public outPutValue As String


    Public Sub generate_id_no()
        Dim cmd As New SqlCommand("select max(" & No & ") from " & dbTable, conn)
        checkConn()
        Dim dr As SqlDataReader = cmd.ExecuteReader
        If dr.Read Then
            outPutValue = dr.Item(0)
        End If
    End Sub
End Class
