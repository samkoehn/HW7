
Partial Class search
    Inherits System.Web.UI.Page



    Protected Sub tbTool_TextChanged(sender As Object, e As EventArgs) Handles tbTool.TextChanged()

        Dim searchWord As String
        searchWord = "Select * From Tools where (toolName Like '%" + tbTool.Text.ToString() + "%')"
        ToolDataSource.SelectCommand = searchWord



    End Sub


End Class
