<%@ Page Language="VB" AutoEventWireup="false" CodeFile="StaffRegister.aspx.vb" Inherits="StaffRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" DecoratedControls="All" Skin="Bootstrap" />
            <telerik:RadSkinManager ID="RadSkinManager1" Runat="server" Skin="Bootstrap">
            </telerik:RadSkinManager>
            <telerik:RadGrid ID="EmployeeListRadGrid" runat="server" DataSourceID="EmployeeList">
<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
                <ClientSettings EnablePostBackOnRowClick="True">
                    <Selecting AllowRowSelect="True" />
                </ClientSettings>
                <MasterTableView AllowAutomaticUpdates="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="EmployeeList">
                    <Columns>
                        <telerik:GridBoundColumn DataField="FirstName" FilterControlAltText="Filter FirstName column" HeaderText="FirstName" SortExpression="FirstName" UniqueName="FirstName">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="LastName" FilterControlAltText="Filter LastName column" HeaderText="LastName" SortExpression="LastName" UniqueName="LastName">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Gender" FilterControlAltText="Filter Gender column" HeaderText="Gender" SortExpression="Gender" UniqueName="Gender">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CurrentStatus" FilterControlAltText="Filter CurrentStatus column" HeaderText="CurrentStatus" SortExpression="CurrentStatus" UniqueName="CurrentStatus">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Comment" FilterControlAltText="Filter Comment column" HeaderText="Comment" SortExpression="Comment" UniqueName="Comment">
                        </telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </div>
        <asp:SqlDataSource ID="EmployeeList" runat="server" CancelSelectOnNullParameter="False" ConnectionString="<%$ ConnectionStrings:staffConnectionString %>" DeleteCommand="DELETE FROM [Employees] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Employees] ([FirstName], [LastName], [Gender], [CurrentStatus], [Comment]) VALUES (@FirstName, @LastName, @Gender, @CurrentStatus, @Comment)" SelectCommand="SELECT [Id], [FirstName], [LastName], [Gender], [CurrentStatus], [Comment] FROM [Employees]" UpdateCommand="UPDATE [Employees] SET [FirstName] = @FirstName, [LastName] = @LastName, [Gender] = @Gender, [CurrentStatus] = @CurrentStatus, [Comment] = @Comment WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="CurrentStatus" Type="String" />
                <asp:Parameter Name="Comment" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="CurrentStatus" Type="String" />
                <asp:Parameter Name="Comment" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
