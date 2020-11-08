
Partial Class StaffRegister
    Inherits System.Web.UI.Page

    Protected Sub EmployeeListRadGrid_SelectedIndexChanged(sender As Object, e As EventArgs) Handles EmployeeListRadGrid.SelectedIndexChanged
        'MsgBox(Me.EmployeeListRadGrid.SelectedValue.ToString)
        Session("EmployeeId") = Me.EmployeeListRadGrid.SelectedValue
        Response.Redirect("./EmployeeDetails.aspx")
    End Sub
End Class


