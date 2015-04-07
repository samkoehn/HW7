
Partial Class search
    Inherits System.Web.UI.Page


    Protected Sub tbMovie_TextChanged(sender As Object, e As EventArgs) Handles tbMovie.TextChanged
        Dim searchWord As String
        searchWord = "Select * From Movies where (movieName Like '%" + tbMovie.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub
End Class