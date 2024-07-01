<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="ProjectASP.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 260px;
        }
        .auto-style2 {
            width: 203px;
        }
        .auto-style3 {
        width: 44px;
    }
    .auto-style4 {
        height: 32px;
    }
    .auto-style5 {
        width: 131px;
    }
    .auto-style6 {
        height: 32px;
        width: 131px;
    }
    .auto-style7 {
        width: 210px;
    }
    .auto-style8 {
        height: 32px;
        width: 210px;
    }
    .auto-style9 {
        width: 208px;
    }
    .auto-style10 {
        height: 32px;
        width: 208px;
    }
        .auto-style11 {
            width: 100%;
            height: 630px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="895px">
                    <Columns>
                        <asp:BoundField DataField="Product_Name" HeaderText="Name" />
                        <asp:ImageField DataImageUrlField="Product_Image" HeaderText="Image">
                            <ControlStyle Height="150px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Product_Details" HeaderText="Details" />
                        <asp:BoundField DataField="Product_Price" HeaderText="Price" />
                        <asp:BoundField DataField="Product_Stock" HeaderText="Stock" />
                        <asp:BoundField DataField="Product_Status" HeaderText="Status" />
                        <asp:TemplateField HeaderText="EDIT">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("Product_ID") %>' OnCommand="LinkButton3_Command">SELECT</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="BLOCK">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton4" runat="server" CommandArgument='<%# Eval("Product_ID") %>' OnCommand="LinkButton4_Command">SELECT</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">
                <asp:Panel ID="Panel1" runat="server" Height="730px" Visible="False" Width="675px">
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label2" runat="server" Text="Image"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:Image ID="Image1" runat="server" Height="122px" Width="127px" />
                            </td>
                            <td class="auto-style9">
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="238px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="Label3" runat="server" Text="Details"></asp:Label>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="23px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style4"></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style8"></td>
                            <td class="auto-style10"></td>
                            <td class="auto-style4"></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label5" runat="server" Text="Stock"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style7">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
                            </td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style7">
                                <asp:Label ID="Label6" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
