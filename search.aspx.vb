
Partial Class search
    Inherits System.Web.UI.Page



    Protected Sub tb_searchResults_TextChanged(sender As Object, e As EventArgs) Handles tb_searchResults.TextChanged

        Dim searchWord As String
        searchWord = "Select * From Tools where (toolName Like '%" + tb_searchResults.Text.ToString() + "%')"
        ToolDataSource.SelectCommand = searchWord



    End Sub
End Class
