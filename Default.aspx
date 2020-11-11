<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <telerik:RadStyleSheetManager id="RadStyleSheetManager1" runat="server" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 88px;
        }
        .auto-style4 {
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
        </Scripts>
    </telerik:RadScriptManager>
    <script type="text/javascript">
        //Put your JavaScript code here.
    </script>
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
    </telerik:RadAjaxManager>
    <div>

        <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" DecoratedControls="All" Skin="Bootstrap" />
        <telerik:RadSkinManager ID="RadSkinManager1" Runat="server" Skin="Bootstrap">
        </telerik:RadSkinManager>

    </div>
        <telerik:RadButton ID="RadButton1" runat="server" Text="Submit" style="top: -2px; left: 2px">
        </telerik:RadButton>
        <telerik:RadTextBox ID="RadTextBox1" Runat="server">
        </telerik:RadTextBox>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" DataKeyNames="Id" DataSourceID="Staff" Width="600px" BackColor="#F7F7F7">
            <EditItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td width="120">First Name:</td>
                        <td>
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
                        <td>Gender:</td>
                        <td>
                            <telerik:RadComboBox ID="DefaultGenderRadComboBox" Runat="server" SelectedValue='<%# Bind("Gender") %>' AutoPostBack="True">
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Selected="True" />
                                    <telerik:RadComboBoxItem runat="server" Text="Male" Value="Male" />
                                    <telerik:RadComboBoxItem runat="server" Text="Female" Value="Female" />
                                </Items>
                            </telerik:RadComboBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DefaultGenderRadComboBox" ErrorMessage="Gender is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Update"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Current Status:</td>
                        <td>
                            <telerik:RadComboBox ID="DefaultStatusComboBox" Runat="server" SelectedValue='<%# Bind("CurrentStatus") %>' AutoPostBack="True">
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Selected="True" />
                                    <telerik:RadComboBoxItem runat="server" Text="Current" Value="Current" />
                                    <telerik:RadComboBoxItem runat="server" Text="Resigned" Value="Resigned" />
                                </Items>
                            </telerik:RadComboBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DefaultStatusComboBox" ErrorMessage="Status is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Update"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Comment:</td>
                        <td>
                            <asp:TextBox ID="CommentTextBox" runat="server" Rows="4" Text='<%# Bind("Comment") %>' TextMode="MultiLine" Width="400px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <telerik:RadButton ID="RadButton2" runat="server" CommandName="Update" Text="Save" Width="70px" ValidationGroup="Update">
                            </telerik:RadButton>
                            <telerik:RadButton ID="RadButton3" runat="server" CommandName="Cancel" Text="Cancel" Width="70px">
                            </telerik:RadButton>
                            <br />
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td width="120">First Name:</td>
                        <td>
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
                        <td class="auto-style4">Gender:</td>
                        <td class="auto-style4">
                            <telerik:RadComboBox ID="GenderRadComboBox" Runat="server" SelectedValue='<%# Bind("Gender") %>'>
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Selected="True" />
                                    <telerik:RadComboBoxItem runat="server" Text="Male" Value="Male" />
                                    <telerik:RadComboBoxItem runat="server" Text="Female" Value="Female" />
                                </Items>
                            </telerik:RadComboBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="GenderRadComboBox" ErrorMessage="Gender is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Update"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Current Status:</td>
                        <td>
                            <telerik:RadComboBox ID="StatusComboBox" Runat="server" SelectedValue='<%# Bind("CurrentStatus") %>'>
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Selected="True" />
                                    <telerik:RadComboBoxItem runat="server" Text="Current" Value="Current" />
                                    <telerik:RadComboBoxItem runat="server" Text="Resigned" Value="Resigned" />
                                </Items>
                            </telerik:RadComboBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="StatusComboBox" ErrorMessage="Status is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Update"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Comment:</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="CommentTextBox" runat="server" Rows="4" Text='<%# Bind("Comment") %>' TextMode="MultiLine" Width="400px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <telerik:RadButton ID="RadButton2" runat="server" CommandName="Insert" Text="Save" ValidationGroup="Update" Width="60px">
                            </telerik:RadButton>
                            <telerik:RadButton ID="RadButton3" runat="server" CommandName="Cancel" Text="Cancel" Width="60px">
                            </telerik:RadButton>
                        </td>
                    </tr>
                </table>
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td width="120" class="auto-style2">First Name:</td>
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
                        <td>Gender:</td>
                        <td>
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
                        <td>Comment:</td>
                        <td>
                            <asp:Label ID="CommentLabel" runat="server" Text='<%# Bind("Comment") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <telerik:RadButton ID="RadButton2" runat="server" CommandName="Edit" Text="Edit" Width="80px">
                            </telerik:RadButton>
                            <telerik:RadButton ID="RadButton3" runat="server" CommandName="Delete" Text="Delete" Width="80px">
                            </telerik:RadButton>
                            <telerik:RadButton ID="RadButton4" runat="server" CommandName="New" Text="Add" Width="80px">
                            </telerik:RadButton>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
        <br />
        <asp:SqlDataSource ID="Staff" runat="server" ConnectionString="<%$ ConnectionStrings:staffConnectionString %>" DeleteCommand="DELETE FROM [Employees] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Employees] ([FirstName], [LastName], [Gender], [CurrentStatus], [Comment]) VALUES (@FirstName, @LastName, @Gender, @CurrentStatus, @Comment)" SelectCommand="SELECT [Id], [FirstName], [LastName], [Gender], [CurrentStatus], [Comment] FROM [Employees]" UpdateCommand="UPDATE [Employees] SET [FirstName] = @FirstName, [LastName] = @LastName, [Gender] = @Gender, [CurrentStatus] = @CurrentStatus, [Comment] = @Comment WHERE [Id] = @Id">
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
        <telerik:RadDatePicker ID="RadDatePicker1" Runat="server">
        </telerik:RadDatePicker>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <br />
        <asp:FormView ID="FormView2" runat="server" DataKeyNames="Id" DataSourceID="Beers" AllowPaging="True" BackColor="#F7F7F7" BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" Width="598px" EmptyDataText="Add New Record">
            <EditItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" width="120">Brand:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="BrandTextBox" runat="server" Text='<%# Bind("Brand") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Manufacturer:</td>
                        <td>
                            <asp:TextBox ID="ManufacturerTextBox" runat="server" Text='<%# Bind("Manufacturer") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Style:</td>
                        <td>
                            <telerik:RadComboBox ID="StyleComboBox" Runat="server" SelectedValue='<%# Bind("Style") %>'>
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Selected="True" />
                                    <telerik:RadComboBoxItem runat="server" Text="Lager" Value="Lager" />
                                    <telerik:RadComboBoxItem runat="server" Text="APA" Value="APA" />
                                </Items>
                            </telerik:RadComboBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="StyleComboBox" ErrorMessage="Style is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Update"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Year:</td>
                        <td>
                            <telerik:RadMonthYearPicker ID="RadMonthYearPicker1" Runat="server" Culture="en-US" DbSelectedDate='<%# Bind("Year") %>' HiddenInputTitleAttibute="Visually hidden input created for functionality purposes.">
                            </telerik:RadMonthYearPicker>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Price:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Date Started:</td>
                        <td class="auto-style2">
                            <telerik:RadDatePicker ID="RadDatePicker3" Runat="server" Culture="en-US" DbSelectedDate='<%# Bind("DateStarted") %>'>
                            </telerik:RadDatePicker>
                        </td>
                    </tr>
                    <tr>
                        <td>Comments:</td>
                        <td>
                            <asp:TextBox ID="CommentsTextBox" runat="server" Rows="4" Text='<%# Bind("Comments") %>' TextMode="MultiLine" Width="400px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                </table>
                <telerik:RadButton ID="RadButton2" runat="server" CommandName="Update" Text="Save" ValidationGroup="Update" Width="70px">
                </telerik:RadButton>
                <telerik:RadButton ID="RadButton3" runat="server" CommandName="Cancel" Text="Cancel" Width="70px">
                </telerik:RadButton>
                <br />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" width="120">Brand:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="BrandTextBox" runat="server" Text='<%# Bind("Brand") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Manufacturer:</td>
                        <td>
                            <asp:TextBox ID="ManufacturerTextBox" runat="server" Text='<%# Bind("Manufacturer") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Style:</td>
                        <td>
                            <telerik:RadComboBox ID="StyleComboBox" Runat="server">
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Selected="True" />
                                    <telerik:RadComboBoxItem runat="server" Text="Lager" Value="Lager" />
                                    <telerik:RadComboBoxItem runat="server" Text="APA" Value="APA" />
                                </Items>
                            </telerik:RadComboBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="StyleComboBox" ErrorMessage="Style is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Year:</td>
                        <td>
                            <asp:TextBox ID="YearTextBox" runat="server" Text='<%# Bind("Year") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Price:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Date Started:</td>
                        <td class="auto-style2">
                            <telerik:RadDatePicker ID="RadDatePicker2" Runat="server" Culture="en-US" DbSelectedDate='<%# Bind("DateStarted") %>' SelectedDate="2018-01-01">
                                <Calendar EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
                                </Calendar>
                                <DateInput DateFormat="d/MM/yyyy" DisplayDateFormat="d/MM/yyyy" DisplayText="1/01/2018" LabelWidth="40%" SelectedDate="2018-01-01" value="1/01/2018">
                                    <EmptyMessageStyle Resize="None" />
                                    <ReadOnlyStyle Resize="None" />
                                    <FocusedStyle Resize="None" />
                                    <DisabledStyle Resize="None" />
                                    <InvalidStyle Resize="None" />
                                    <HoveredStyle Resize="None" />
                                    <EnabledStyle Resize="None" />
                                </DateInput>
                                <DatePopupButton HoverImageUrl="" ImageUrl="" />
                            </telerik:RadDatePicker>
                        </td>
                    </tr>
                    <tr>
                        <td>Comments:</td>
                        <td>
                            <asp:TextBox ID="CommentsTextBox" runat="server" Rows="4" Text='<%# Bind("Comments") %>' TextMode="MultiLine" Width="400px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                </table>
                <telerik:RadButton ID="RadButton2" runat="server" CommandName="Insert" Text="Save" Width="60px" ValidationGroup="Insert">
                </telerik:RadButton>
                <telerik:RadButton ID="RadButton3" runat="server" CommandName="Cancel" Text="Cancel" Width="60px">
                </telerik:RadButton>
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" width="120">Brand:</td>
                        <td class="auto-style2">
                            <asp:Label ID="BrandLabel" runat="server" Text='<%# Bind("Brand") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Manufacturer:</td>
                        <td>
                            <asp:Label ID="ManufacturerLabel" runat="server" Text='<%# Bind("Manufacturer") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Style:</td>
                        <td>
                            <asp:Label ID="StyleLabel" runat="server" Text='<%# Bind("Style") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Year:</td>
                        <td>
                            <asp:Label ID="YearLabel" runat="server" Text='<%# Bind("Year", "{0:yyyy}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Comments:</td>
                        <td>
                            <asp:Label ID="CommentsLabel" runat="server" Text='<%# Bind("Comments") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Price:</td>
                        <td>
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>DateStarted:</td>
                        <td>
                            <asp:Label ID="DateStartedLabel" runat="server" Text='<%# Bind("DateStarted", "{0:d}") %>' />
                        </td>
                    </tr>
                </table>
                <telerik:RadButton ID="RadButton5" runat="server" CommandName="Edit" Text="Edit" Width="80px">
                </telerik:RadButton>
                <telerik:RadButton ID="RadButton6" runat="server" CommandName="Delete" Text="Delete" Width="80px">
                </telerik:RadButton>
                <telerik:RadButton ID="RadButton7" runat="server" CommandName="New" Text="Add" Width="80px">
                </telerik:RadButton>
                <br />
                &nbsp;<br />

            </ItemTemplate>
        </asp:FormView>
        <br />
        <asp:SqlDataSource ID="Beers" runat="server" ConnectionString="<%$ ConnectionStrings:staffConnectionString %>" SelectCommand="SELECT [Id], [Brand], [Manufacturer], [Style], [Year], [Comments], [Price], [DateStarted] FROM [Beers]" DeleteCommand="DELETE FROM [Beers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Beers] ([Brand], [Manufacturer], [Style], [Year], [Comments], [Price], [DateStarted]) VALUES (@Brand, @Manufacturer, @Style, @Year, @Comments, @Price, @DateStarted)" UpdateCommand="UPDATE [Beers] SET [Brand] = @Brand, [Manufacturer] = @Manufacturer, [Style] = @Style, [Year] = @Year, [Comments] = @Comments, [Price] = @Price, [DateStarted] = @DateStarted WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Brand" Type="String" />
                <asp:Parameter Name="Manufacturer" Type="String" />
                <asp:Parameter Name="Style" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="Comments" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="DateStarted" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Brand" Type="String" />
                <asp:Parameter Name="Manufacturer" Type="String" />
                <asp:Parameter Name="Style" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="Comments" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="DateStarted" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <telerik:RadGrid ID="RadGrid1" runat="server" DataSourceID="Staff" AllowSorting="True" AutoGenerateDeleteColumn="True" AutoGenerateEditColumn="True">
<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
            <MasterTableView AutoGenerateColumns="False" DataSourceID="Staff">
                <RowIndicatorColumn Visible="False">
                    <HeaderStyle Width="41px" />
                </RowIndicatorColumn>
                <ExpandCollapseColumn Created="True">
                    <HeaderStyle Width="41px" />
                </ExpandCollapseColumn>
                <Columns>
                    <telerik:GridBoundColumn DataField="Id" DataType="System.Int32" FilterControlAltText="Filter Id column" HeaderText="Id" ReadOnly="True" SortExpression="Id" UniqueName="Id">
                    </telerik:GridBoundColumn>
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
        <br />

        <asp:SqlDataSource ID="WorkHours" runat="server" ConnectionString="<%$ ConnectionStrings:staffConnectionString %>" SelectCommand="SELECT FROM HoursWorked">
            
<%--            <SelectParameters>
                <asp:ControlParameter ControlID="RadGrid1" Name="HoursWorkedId" DefaultValue="10643" PropertyName="SelectedValues['HoursWorkedId']"
                  Type="Int32" />
             </SelectParameters>--%>

        </asp:SqlDataSource>
    </form>
</body>
</html>
