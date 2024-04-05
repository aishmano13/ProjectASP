<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="ProjectASP.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 32px;
    }
    .auto-style2 {
        height: 32px;
        width: 27px;
    }
    .auto-style3 {
            width: 27px;
        }
    .auto-style4 {
        height: 32px;
        width: 178px;
    }
    .auto-style5 {
            width: 178px;
        }
        .auto-style6 {
            height: 32px;
            width: 281px;
        }
        .auto-style7 {
            width: 281px;
        }
        .auto-style8 {
            height: 32px;
            width: 110px;
        }
        .auto-style9 {
            width: 110px;
        }
        .auto-style10 {
            width: 27px;
            height: 39px;
        }
        .auto-style11 {
            width: 178px;
            height: 39px;
        }
        .auto-style12 {
            width: 281px;
            height: 39px;
        }
        .auto-style13 {
            width: 110px;
            height: 39px;
        }
        .auto-style14 {
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style4"></td>
        <td class="auto-style6"></td>
        <td class="auto-style8"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style4">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#003366" Text="Category_Name"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style8"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#003366" Text="Category_Image"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="278px" />
        </td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#003366" Text="Description"></asp:Label>
        </td>
        <td class="auto-style12">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="31px"></asp:TextBox>
        </td>
        <td class="auto-style13"></td>
        <td class="auto-style14"></td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style4">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#003366" Text="Status"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Available</asp:ListItem>
                <asp:ListItem>currently unavailable</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style8"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style7">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#003366" Text="INSERT" OnClick="Button1_Click" Width="127px" />
        </td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style7">
            <asp:Label ID="Label5" runat="server"></asp:Label>
        </td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
