<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="ProjectASP.LoginForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 58px;
    }
    .auto-style2 {
            width: 130px;
        }
        .auto-style3 {
            width: 198px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table class="w-100">
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Mandatory Field"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" ForeColor="#993333" Text="Username"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="174px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Mandatory Field"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#993333" Text="Password"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="TextBox2" runat="server" Width="172px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#993333" OnClick="Button1_Click" Text="Login" Height="57px" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
