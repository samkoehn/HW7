
Partial Class movies
    Inherits System.Web.UI.MasterPage


    Protected Sub lbl_date_Load(sender As Object, e As EventArgs) Handles lbl_date.Load
        lbl_date.Text = DateTime.Now.ToString("MM-dd-yyyy h:mmtt")
    End Sub
End Class
