<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="ViewSingleProduct.aspx.cs" Inherits="ProjectASP.ViewSingleProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 327px;
        }
        .auto-style7 {
            width: 327px;
            height: 59px;
        }
        .auto-style8 {
            height: 59px;
        }
        .auto-style9 {
            width: 377px;
        }
        .auto-style10 {
            height: 59px;
            width: 377px;
        }
        .auto-style11 {
            width: 187px;
        }
        .auto-style12 {
            height: 59px;
            width: 187px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9">
                <asp:Image ID="Image1" runat="server" Height="365px" Width="292px" />
            </td>
            <td class="auto-style11">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#CC6699"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" ForeColor="Blue"></asp:Label>
                <br />
                <br />
                <span class="nav-label">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                </span>
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#CC6699"></asp:Label>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style10"></td>
            <td class="auto-style12">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#3333CC" OnClick="Button1_Click" Text="Add to Cart" />
            </td>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style9"></td>
            <td class="auto-style11"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11"> <span class="nav-label">
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#3333CC" OnClick="Button2_Click" Text="Continue" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
