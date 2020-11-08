Imports Telerik.Web.UI

Partial Class _Default
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub RadButton1_Click(sender As Object, e As EventArgs) Handles RadButton1.Click
        Me.RadTextBox1.Text = "Hello"
    End Sub



    Protected Sub Staff_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles Staff.Selecting

    End Sub
End Class
