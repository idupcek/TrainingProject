
Imports System.Drawing

Partial Class StaffRegister
    Inherits System.Web.UI.Page

    Protected Sub EmployeeListRadGrid_SelectedIndexChanged(sender As Object, e As EventArgs) Handles EmployeeListRadGrid.SelectedIndexChanged
        'MsgBox(Me.EmployeeListRadGrid.SelectedValue.ToString)
        Session("EmployeeId") = Me.EmployeeListRadGrid.SelectedValue
        Response.Redirect("./EmployeeDetails.aspx")
    End Sub

    Protected Sub EmployeeListRadGrid_ItemDataBound(sender As Object, e As Telerik.Web.UI.GridItemEventArgs) Handles EmployeeListRadGrid.ItemDataBound
        If e.Item.ItemType = Telerik.Web.UI.GridItemType.Item Or e.Item.ItemType = Telerik.Web.UI.GridItemType.AlternatingItem Then
            Dim GenderCell As TableCell = e.Item.Cells(4)

            If GenderCell.Text = "Male" Then
                GenderCell.BackColor = Color.Pink
            ElseIf GenderCell.Text = "Female" Then
                GenderCell.BackColor = Color.Blue
                GenderCell.ForeColor = Color.White
            End If
        End If
    End Sub

    Protected Sub ShowGridRadButton_Click(sender As Object, e As EventArgs) Handles ShowGridRadButton.Click
        Me.Panel1.Visible = True
    End Sub

    Protected Sub HideGridRadButton_Click(sender As Object, e As EventArgs) Handles HideGridRadButton.Click
        Me.Panel1.Visible = False
    End Sub
End Class


