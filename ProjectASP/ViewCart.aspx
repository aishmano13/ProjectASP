<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="ProjectASP.ViewCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 307px;
        }
        .auto-style2 {
            width: 886px;
        }
        .auto-style3 {
            width: 307px;
            height: 32px;
        }
        .auto-style4 {
            width: 886px;
            height: 32px;
        }
        .auto-style5 {
            height: 32px;
        }
        .auto-style7 {
            width: 180px;
        }
        .auto-style8 {
            width: 101px;
        }
        .auto-style9 {
            width: 88px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2"> <span class="nav-label">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="867px">
                    <Columns>
                        <asp:BoundField DataField="Product_Name" HeaderText="Name" />
                        <asp:ImageField DataImageUrlField="Product_Image" HeaderText="Image">
                            <ControlStyle Height="50px" Width="50px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Product_Details" HeaderText="Description" />
                        <asp:BoundField DataField="Cart_Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="Total_Price" HeaderText="Total" />
                        <asp:BoundField DataField="Cart_Status" HeaderText="Status" />
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="LinkButton1_Command" CommandArgument='<%# Eval("Cart_ID") %>'>select</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" OnCommand="LinkButton2_Command" CommandArgument='<%# Eval("Cart_ID") %>'>select</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="Button3" runat="server" Height="55px" Text="Confirm order" Width="206px" OnClick="Button3_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style9"><span class="nav-label">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#CC6699" Text="Quantity"></asp:Label>
                                </span></td>
                            <td class="auto-style7"><span class="nav-label">
                                <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="55px"></asp:TextBox>
                                </span></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style7"><span class="nav-label">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="EDIT" Width="131px" />
                                </span></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style7"><span class="nav-label">
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                                </span></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style7">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style7">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style7">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"><span class="nav-label">&nbsp;&nbsp;
            </td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2"><span class="nav-label">&nbsp;&nbsp;
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
