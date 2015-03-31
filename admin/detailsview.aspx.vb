
Partial Class admin_detailsview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim deletedmovie As String = e.Values("Movie_Name").ToString()
        lbl_deleted.Text = deletedmovie & "has been deleted from the database. "
        Response.AddHeader("REFRESH", "3;URL=./ViewAllMovies.aspx")

    End Sub




    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated

        Response.AddHeader("REFRESH", "3;URL=./ViewAllMovies.aspx")

    End Sub




    Protected Sub DetailsView1_PageIndexChanging(sender As Object, e As DetailsViewPageEventArgs) Handles DetailsView1.PageIndexChanging

    End Sub

End Class
