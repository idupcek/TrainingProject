
Partial Class EmployeeDetails
    Inherits System.Web.UI.Page
    Protected Sub EmployeeHoursWorked_Inserting(sender As Object, e As SqlDataSourceCommandEventArgs) Handles EmployeeHoursWorked.Inserting
        e.Command.Parameters("@EmployeesId").Value = Session("EmployeeId")
    End Sub

    Protected Sub BackButton_Click(sender As Object, e As EventArgs) Handles BackButton.Click
        Response.Redirect("./StaffRegister.aspx")
    End Sub
End Class
