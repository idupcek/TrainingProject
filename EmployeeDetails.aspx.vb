
Imports System.Drawing

Partial Class EmployeeDetails
    Inherits System.Web.UI.Page
    Protected Sub EmployeeHoursWorked_Inserting(sender As Object, e As SqlDataSourceCommandEventArgs) Handles EmployeeHoursWorked.Inserting
        e.Command.Parameters("@EmployeesId").Value = Session("EmployeeId")
    End Sub

    Protected Sub BackButton_Click(sender As Object, e As EventArgs) Handles BackButton.Click
        Response.Redirect("./StaffRegister.aspx")
    End Sub

    Protected Sub RadGrid1_ItemDataBound(sender As Object, e As Telerik.Web.UI.GridItemEventArgs) Handles RadGrid1.ItemDataBound
        If e.Item.ItemType = Telerik.Web.UI.GridItemType.Item Or e.Item.ItemType = Telerik.Web.UI.GridItemType.AlternatingItem Then
            Dim HoursLabel As Label = e.Item.FindControl("HoursLabel")
            Dim HoursCell As TableCell = e.Item.Cells(3)

            If Convert.ToInt32(HoursLabel.Text) < 2 Then
                HoursLabel.ForeColor = Color.Red
                HoursCell.BackColor = Color.Black

            ElseIf Convert.ToInt32(HoursLabel.Text) > 2 Then
                HoursLabel.ForeColor = Color.Green
                HoursCell.BackColor = Color.Yellow
            End If

        End If
    End Sub
End Class
