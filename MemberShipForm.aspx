<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberShipForm.aspx.cs" Inherits="SportsClubManagement.MemberShipForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="membership-form">
    <h2>Membership Form</h2>

    <table align="center" cellpadding="2" cellspacing="3" class="auto-style1">
        <tr>
            <td class="auto-style11" style="text-align: right">&nbsp;Name &nbsp;&nbsp; :</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtName" runat="server" Width="244px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-align: right">Gender&nbsp;&nbsp;&nbsp; :</td>
            <td style="text-align: left" class="auto-style12">
                <asp:RadioButtonList ID="rblGender" runat="server" CssClass="auto-style3" RepeatDirection="Horizontal" Width="253px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-align: right">Phone&nbsp;&nbsp;&nbsp; :</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtPhone" runat="server" Width="244px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-align: right">Type&nbsp;&nbsp;&nbsp; :</td>
            <td class="auto-style12">
                <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="True" Width="151px">
                    <asp:ListItem>--Select Type--</asp:ListItem>
                    <asp:ListItem>Monthly</asp:ListItem>
                    <asp:ListItem>Yearly</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-align: right">Sport&nbsp;&nbsp; : </td>
            <td class="auto-style12">
                <asp:DropDownList ID="ddlSport" runat="server" AutoPostBack="True" Width="151px">
                    <asp:ListItem>--Select Sport--</asp:ListItem>
                    <asp:ListItem>Cricket</asp:ListItem>
                    <asp:ListItem>Football</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="text-align: center" class="auto-style7" colspan="2">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center" class="auto-style7" colspan="2">
                Already have an account ? <a href="https://localhost:44373/LogInForm.aspx">sign in</a>
            </td>
        </tr>

    </table>

</div>
    </form>
</body>
</html>
