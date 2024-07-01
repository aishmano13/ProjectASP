<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="AccountDetails.aspx.cs" Inherits="ProjectASP.AccountDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 198px;
        }
        .auto-style2 {
            height: 76px;
        }
        .auto-style3 {
            width: 198px;
            height: 76px;
        }
        .auto-style4 {
            width: 262px;
        }
        .auto-style5 {
            height: 76px;
            width: 262px;
        }
        .auto-style6 {
            height: 32px;
        }
        .auto-style7 {
            width: 198px;
            height: 32px;
        }
        .auto-style8 {
            width: 262px;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#3333FF" Text="Account_Number"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" Height="38px"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#3333FF" Text="Account_Type"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server" Height="32px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#3333FF" Text="Balance_Amount"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox3" runat="server" Height="30px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" OnClick="Button1_Click" Text="Insert" />
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
