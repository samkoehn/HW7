
Partial Class admin_newMovies
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        DetailsView1.Focus()
    End Sub



    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("./ViewAllMovies.aspx")
    End Sub
End Class
