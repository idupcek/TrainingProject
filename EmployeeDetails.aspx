<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EmployeeDetails.aspx.vb" Inherits="EmployeeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" DecoratedControls="All" Skin="Bootstrap" />
            <telerik:RadSkinManager ID="RadSkinManager1" Runat="server" Skin="Bootstrap">
            </telerik:RadSkinManager>
            <br />
            <br />
            <telerik:RadButton ID="BackButton" runat="server" Text="Back" Width="80px">
            </telerik:RadButton>
            <br />
            <br />
            <asp:FormView ID="EmployeeDetailsFormView" runat="server" DataKeyNames="Id" DataSourceID="Employee" BackColor="#F7F7F7" BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px">
                <EditItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">First Name:</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name:</td>
                            <td>
                                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Gender:</td>
                            <td class="auto-style2">
                                <telerik:RadComboBox ID="GenderComboBox" Runat="server" SelectedValue='<%# Bind("Gender") %>' ValidationGroup="Update" AutoPostBack="True">
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Selected="True" />
                                        <telerik:RadComboBoxItem runat="server" Text="Male" Value="Male" />
                                        <telerik:RadComboBoxItem runat="server" Text="Female" Value="Female" />
                                    </Items>
                                </telerik:RadComboBox>
                                <asp:RequiredFieldValidator ID="GenderFieldValidator" runat="server" ControlToValidate="GenderComboBox" ErrorMessage="Gender is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Update"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Current Status:</td>
                            <td>
                                <telerik:RadComboBox ID="StatusComboBox" Runat="server" SelectedValue='<%# Bind("CurrentStatus") %>' ValidationGroup="Update" AutoPostBack="True">
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Selected="True" />
                                        <telerik:RadComboBoxItem runat="server" Text="Current" Value="Current" />
                                        <telerik:RadComboBoxItem runat="server" Text="Resigned" Value="Resigned" />
                                    </Items>
                                </telerik:RadComboBox>
                                <asp:RequiredFieldValidator ID="StatusFieldValidator" runat="server" ControlToValidate="StatusComboBox" ErrorMessage="Current status is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Update"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Comment: </td>
                            <td>
                                <asp:TextBox ID="CommentTextBox" runat="server" Rows="4" Text='<%# Bind("Comment") %>' TextMode="MultiLine" />
                            </td>
                        </tr>
                    </table>
&nbsp;<telerik:RadButton ID="SaveRadButton" runat="server" CommandName="Update" Text="Save" Width="80px" ValidationGroup="Update">
                    </telerik:RadButton>
                    <telerik:RadButton ID="RadButton2" runat="server" CommandName="Cancel" Text="Cancel" Width="80px">
                    </telerik:RadButton>
                </EditItemTemplate>
                <InsertItemTemplate>
                    FirstName:
                    <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                    <br />
                    LastName:
                    <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                    <br />
                    Gender:
                    <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />
                    CurrentStatus:
                    <asp:TextBox ID="CurrentStatusTextBox" runat="server" Text='<%# Bind("CurrentStatus") %>' />
                    <br />
                    Comment:
                    <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table class="auto-style1" border="0">
                        <tr>
                            <td class="auto-style2">First Name:</td>
                            <td class="auto-style2">
                                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name:</td>
                            <td>
                                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Gender:</td>
                            <td class="auto-style2">
                                <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Current Status:</td>
                            <td>
                                <asp:Label ID="CurrentStatusLabel" runat="server" Text='<%# Bind("CurrentStatus") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Comment: </td>
                            <td>
                                <asp:Label ID="CommentLabel" runat="server" Text='<%# Bind("Comment") %>' />
                            </td>
                        </tr>
                    </table>
                    <telerik:RadButton ID="EditRadButton" runat="server" CommandName="Edit" Text="Edit" Width="80px">
                    </telerik:RadButton>
                </ItemTemplate>
            </asp:FormView>
        </div>
        <asp:SqlDataSource ID="Employee" runat="server" ConnectionString="<%$ ConnectionStrings:staffConnectionString %>" DeleteCommand="DELETE FROM [Employees] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Employees] ([FirstName], [LastName], [Gender], [CurrentStatus], [Comment]) VALUES (@FirstName, @LastName, @Gender, @CurrentStatus, @Comment)" SelectCommand="SELECT [Id], [FirstName], [LastName], [Gender], [CurrentStatus], [Comment] FROM [Employees]
WHERE Id = @EmployeeId" UpdateCommand="UPDATE [Employees] SET [FirstName] = @FirstName, [LastName] = @LastName, [Gender] = @Gender, [CurrentStatus] = @CurrentStatus, [Comment] = @Comment WHERE [Id] = @Id">
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
            <SelectParameters>
                <asp:SessionParameter Name="EmployeeId" SessionField="EmployeeId" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="CurrentStatus" Type="String" />
                <asp:Parameter Name="Comment" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <p>
        </p>
        <telerik:RadGrid ID="RadGrid1" runat="server" DataSourceID="EmployeeHoursWorked" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True">
<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
            <MasterTableView AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="EmployeeHoursWorked" CommandItemDisplay="Top" NoMasterRecordsText="No hours recorded yet.">
                <CommandItemSettings AddNewRecordText="Add new employee hours worked" ShowRefreshButton="False" />
                <Columns>
                    
                    <telerik:GridTemplateColumn DataField="Task" FilterControlAltText="Filter Task column" HeaderText="Task" SortExpression="Task" UniqueName="Task">
                        <EditItemTemplate>
                            <asp:TextBox ID="TaskTextBox" runat="server" Text='<%# Bind("Task") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TaskTextBox" ErrorMessage="Required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Edit">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="TaskLabel" runat="server" Text='<%# Eval("Task") %>'></asp:Label>
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="Hours" DataType="System.Int32" FilterControlAltText="Filter Hours column" HeaderText="Hours" SortExpression="Hours" UniqueName="Hours">
                        <EditItemTemplate>
                            <telerik:RadComboBox ID="HoursRadComboBox" Runat="server" SelectedValue='<%# Bind("Hours") %>' Width="60px">
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Selected="True" />
                                    <telerik:RadComboBoxItem runat="server" Text="1" Value="1" />
                                    <telerik:RadComboBoxItem runat="server" Text="2" Value="2" />
                                    <telerik:RadComboBoxItem runat="server" Text="3" Value="3" />
                                    <telerik:RadComboBoxItem runat="server" Text="4" Value="4" />
                                    <telerik:RadComboBoxItem runat="server" Text="5" Value="5" />
                                    <telerik:RadComboBoxItem runat="server" Text="6" Value="6" />
                                    <telerik:RadComboBoxItem runat="server" Text="7" Value="7" />
                                    <telerik:RadComboBoxItem runat="server" Text="8" Value="8" />
                                    <telerik:RadComboBoxItem runat="server" Text="9" Value="9" />
                                    <telerik:RadComboBoxItem runat="server" Text="10" Value="10" />
                                    <telerik:RadComboBoxItem runat="server" Text="11" Value="11" />
                                    <telerik:RadComboBoxItem runat="server" Text="12" Value="12" />
                                </Items>
                            </telerik:RadComboBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="HoursLabel" runat="server" Text='<%# Eval("Hours") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Width="200px" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridButtonColumn ButtonType="PushButton" CommandName="Edit" FilterControlAltText="Filter Edit column" Text="Edit" UniqueName="Edit">
                        <HeaderStyle Width="80px" />
                    </telerik:GridButtonColumn>
                    <telerik:GridButtonColumn ButtonType="PushButton" CommandName="Delete" ConfirmText="Are you sure you want to delete this record?" FilterControlAltText="Filter Delete column" Text="Delete" UniqueName="Delete">
                        <HeaderStyle Width="80px" />
                    </telerik:GridButtonColumn>
                </Columns>
            </MasterTableView>
        </telerik:RadGrid>
        <p>
            <asp:SqlDataSource ID="EmployeeHoursWorked" runat="server" ConnectionString="<%$ ConnectionStrings:staffConnectionString %>" DeleteCommand="DELETE FROM [HoursWorked] WHERE [Id] = @Id" InsertCommand="INSERT INTO [HoursWorked] ([Task], [EmployeesId], [Hours]) VALUES (@Task, @EmployeesId, @Hours)" SelectCommand="SELECT Id, Task, EmployeesId, Hours FROM HoursWorked WHERE (EmployeesId = @EmployeesId)" UpdateCommand="UPDATE [HoursWorked] SET [Task] = @Task,  [Hours] = @Hours WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Task" Type="String" />
                    <asp:Parameter Name="EmployeesId" Type="Int32" />
                    <asp:Parameter Name="Hours" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="EmployeesId" SessionField="EmployeeId" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Task" Type="String" />
                    <asp:Parameter Name="Hours" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </form>
    </body>
</html>
