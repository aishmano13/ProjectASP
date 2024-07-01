<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="UserHOME.aspx.cs" Inherits="ProjectASP.UserHOME" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 214px;
        }
        .auto-style4 {
            width: 1151px;
        }
        .auto-style5 {
            width: 263px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <span class="nav-label">
                                <td class="auto-style5">&nbsp;</td>
                                <td>&nbsp;</td>
                                </span>
                            </tr>
                            <tr>
                                <span class="nav-label">
                                <td class="auto-style5">
                                    <asp:Label ID="Label4" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True" ForeColor="#336699" Text='<%# Eval("Category_Name") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                </span>
                            </tr>
                            <tr>
                                <span class="nav-label">
                                <td class="auto-style5">&nbsp;</td>
                                <td>&nbsp;</td>
                                </span>
                            </tr>
                            <tr>
                                <span class="nav-label">
                                <td class="auto-style5">
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Category_ID") %>' Height="310px" ImageUrl='<%# Eval("Category_Image") %>' Width="325px" OnCommand="ImageButton1_Command" />
                                </td>
                                <td>&nbsp;</td>
                                </span>
                            </tr>
                            <tr>
                                <span class="nav-label">
                                <td class="auto-style5">&nbsp;</td>
                                <td>&nbsp;</td>
                                </span>
                            </tr>
                            <tr>
                                <span class="nav-label">
                                <td class="auto-style5">
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#336699" Text='<%# Eval("Category_Description") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                </span>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
