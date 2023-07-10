<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MonthlyBudget.aspx.cs" Inherits="WebDashboard.MonthlyBudget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 668px;
        }
        .auto-style8 {
            width: 190px;
            height: 11px;
        }
        .auto-style9 {
            height: 59px;
            width: 95px;
        }
        .auto-style11 {
            height: 11px;
        }
        .auto-style14 {
            height: 11px;
            width: 95px;
        }
        .auto-style15 {
            height: 59px;
            }
        .auto-style16 {
            height: 11px;
            width: 140px;
        }
        .auto-style17 {
            width: 100%;
            height: 154px;
        }
        .auto-style18 {
            width: 164px;
        }
        .auto-style19 {
            width: 164px;
            height: 11px;
        }
        .auto-style20 {
            height: 133px;
        }
        .auto-style21 {
            width: 95px;
        }
        .auto-style22 {
            width: 190px;
        }
        .auto-style25 {
            height: 133px;
            width: 528px;
        }
        .auto-style26 {
            width: 528px;
        }
        .auto-style27 {
            height: 133px;
            width: 3px;
        }
        .auto-style28 {
            width: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style17">
        <div class="auto-style1">
            <table class="auto-style17">
                <tr>
                    <td class="auto-style15" colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="25px" Text="Monthly Budget"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style22">
                        <asp:Button ID="btnHome" runat="server" Font-Names="Calibri" OnClick="btnHome_Click" Text="Home" Width="190px" Height="31px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Label ID="Label2" runat="server" Font-Names="calibri" Font-Size="Small" Text="Month"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:DropDownList ID="dpYearPicker" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Year" DataValueField="Year" Font-Names="calibri" Font-Size="Small" Height="25px" Width="187px" OnSelectedIndexChanged="dpYearPicker_SelectedIndexChanged">
                            <asp:ListItem Selected="True">ID</asp:ListItem>
                            <asp:ListItem>CatName</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BITDashboardConnectionString %>" SelectCommand="SELECT [Year] FROM [YearPicker]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label3" runat="server" Font-Names="calibri" Font-Size="Small" Text="Budget Category"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="dpBudCategory" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CatName" DataValueField="ID" Font-Names="calibri" Font-Size="Small" Height="25px" Width="187px" OnSelectedIndexChanged="dpBudCategory_SelectedIndexChanged">
                            <asp:ListItem Selected="True">ID</asp:ListItem>
                            <asp:ListItem>CatName</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BITDashboardConnectionString %>" SelectCommand="SELECT [CatName], [ID] FROM [BudgedCategory]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Label ID="Label4" runat="server" Font-Names="calibri" Font-Size="Small" Text="Budget Value"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtBudVal" runat="server" Font-Names="calibri" Width="176px" BorderStyle="Solid" Height="21px"></asp:TextBox>
                    </td>
                    <td class="auto-style21">
                        &nbsp;</td>
                    <td class="auto-style22">
                        <asp:Button ID="btnUpdate" runat="server" Font-Names="calibri" OnClick="btnUpdate_Click" Text="Update" Width="187px" Height="30px"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                    <td class="auto-style21">
                        &nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style27">
                        &nbsp;</td>
                    <td class="auto-style25">
                        <asp:GridView ID="gridBudget" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Names="Calibri" Font-Size="Small" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="gridBudget_SelectedIndexChanged" Width="613px">
                            <Columns>
                                <asp:BoundField DataField="bMonth" HeaderText="bMonth" Visible="False" />
                                <asp:BoundField DataField="bMonthName" HeaderText="Month Name" >
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="bValue" HeaderText="Budget" >
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                    </td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style28">
                        &nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <p style="font-family:Calibri; font-size: small;">© BridgedIT</p>
            </div>
        </div>
    </form>
</body>
</html>
