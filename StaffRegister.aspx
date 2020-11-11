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
        </div>
        <asp:SqlDataSource ID="EmployeeList" runat="server" CancelSelectOnNullParameter="False" ConnectionString="<%$ ConnectionStrings:staffConnectionString %>" DeleteCommand="DELETE FROM [Employees] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Employees] ([FirstName], [LastName], [Gender], [CurrentStatus], [Comment], [DateStarted]) VALUES (@FirstName, @LastName, @Gender, @CurrentStatus, @Comment, @DateStarted)" SelectCommand="SELECT [Id], [FirstName], [LastName], [Gender], [CurrentStatus], [Comment], [DateStarted] FROM [Employees]" UpdateCommand="UPDATE [Employees] SET [FirstName] = @FirstName, [LastName] = @LastName, [Gender] = @Gender, [CurrentStatus] = @CurrentStatus, [Comment] = @Comment, [DateStarted] = @DateStarted WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="CurrentStatus" Type="String" />
                <asp:Parameter Name="Comment" Type="String" />
                <asp:Parameter Name="DateStarted" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="CurrentStatus" Type="String" />
                <asp:Parameter Name="Comment" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <telerik:RadButton ID="ShowGridRadButton" runat="server" Text="Show Grid">
        </telerik:RadButton>
        <telerik:RadButton ID="HideGridRadButton" runat="server" Text="Hide Grid">
        </telerik:RadButton>
        <asp:Panel ID="Panel1" runat="server">
            <telerik:RadGrid ID="EmployeeListRadGrid" runat="server" DataSourceID="EmployeeList" AllowPaging="True" AllowSorting="True" AutoGenerateEditColumn="True">
                <GroupingSettings CollapseAllTooltip="Collapse all groups">
                </GroupingSettings>
                <ClientSettings EnablePostBackOnRowClick="True">
                    <Selecting AllowRowSelect="True" />
                </ClientSettings>
                <MasterTableView AllowAutomaticUpdates="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="EmployeeList">
                    <Columns>
                        <telerik:GridBoundColumn DataField="FirstName" FilterControlAltText="Filter FirstName column" HeaderText="First Name" SortExpression="FirstName" UniqueName="FirstName" HeaderStyle-Width="200">
                            <HeaderStyle Width="200px"></HeaderStyle>
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="LastName" FilterControlAltText="Filter LastName column" HeaderText="Last Name" SortExpression="LastName" UniqueName="LastName" HeaderStyle-Width="200">
                            <HeaderStyle Width="200px"></HeaderStyle>
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Gender" FilterControlAltText="Filter Gender column" HeaderText="Gender" SortExpression="Gender" UniqueName="Gender" HeaderStyle-Width="120" ItemStyle-HorizontalAlign="Center">
                            <HeaderStyle Width="120px"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CurrentStatus" FilterControlAltText="Filter CurrentStatus column" HeaderText="Status" SortExpression="CurrentStatus" UniqueName="CurrentStatus" HeaderStyle-Width="120" ItemStyle-HorizontalAlign="Center">
                            <HeaderStyle Width="120px"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn FilterControlAltText="Filter DateStarted column" HeaderText="Date Started" UniqueName="DateStarted">
                            <EditItemTemplate>
                                <telerik:RadDatePicker ID="RadDatePicker1" Runat="server" Culture="en-US" DbSelectedDate='<%# Bind("DateStarted") %>' Width="140px">
                                </telerik:RadDatePicker>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("DateStarted", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="140px" />
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="Comment" FilterControlAltText="Filter Comment column" HeaderText="Comment" SortExpression="Comment" UniqueName="Comment">
                        </telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" />
            </telerik:RadGrid>
        </asp:Panel>
    </form>
</body>
</html>
