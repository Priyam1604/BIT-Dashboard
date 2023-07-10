<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activation.aspx.cs" Inherits="WebDashboard.Activation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 682px;
        }
        .auto-style2 {
            height: 46px;
        }
        .auto-style3 {
            height: 464px;
        }
        .auto-style4 {
            height: 46px;
            width: 818px;
        }
        .auto-style5 {
            height: 464px;
            width: 818px;
        }
        .auto-style6 {
            width: 818px;
        }
        .auto-style7 {
            height: 460px;
        }
        .auto-style8 {
            width: 106px;
        }
        .auto-style9 {
            width: 104px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="Larger" Text="Update Activation"></asp:Label>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <div class="auto-style7">
                            <table style="width:100%;">
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:Button ID="btnRequestLicense" runat="server" BorderStyle="Solid" Font-Names="Calibri" OnClick="btnRequestLicense_Click" Text="Request License" Width="100px" />
                                    </td>
                                    <td class="auto-style9">
                                        <asp:Button ID="btnApplyLicense" runat="server" BorderStyle="Solid" Font-Names="Calibri" OnClick="btnApplyLicense_Click" Text="Apply License" Width="102px" />
                                    </td>
                                    <td>
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </div>
                    </td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
