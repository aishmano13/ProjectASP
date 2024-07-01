<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="ProjectASP.ViewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 368px;
        }
        .auto-style5 {
            width: 50px;
        }
        .auto-style6 {
            width: 87px;
        }
        .auto-style8 {
            width: 87px;
            height: 200px;
        }
        .auto-style9 {
            width: 368px;
            height: 200px;
        }
        .auto-style10 {
            width: 50px;
            height: 200px;
        }
        .auto-style11 {
            height: 200px;
        }
        .auto-style12 {
            width: 76px;
        }
        .auto-style13 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CssClass="auto-style13">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style12">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_Name") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style12">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="221px" ImageUrl='<%# Eval("Product_Image") %>' OnCommand="ImageButton1_Command" Width="292px" CommandArgument='<%# Eval("Product_ID") %>' />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style12">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Product_Details") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style12">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Product_Price") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
