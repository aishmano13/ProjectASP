<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="BillView.aspx.cs" Inherits="ProjectASP.BillView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 159px;
        }
        .auto-style3 {
            width: 314px;
        }
        .auto-style8 {
            width: 265px;
        }
        .auto-style10 {
            width: 159px;
            height: 5px;
        }
        .auto-style11 {
            width: 314px;
            height: 5px;
        }
        .auto-style12 {
            width: 265px;
            height: 5px;
        }
        .auto-style13 {
            height: 5px;
        }
        .auto-style14 {
            width: 159px;
            height: 23px;
        }
        .auto-style15 {
            width: 314px;
            height: 23px;
        }
        .auto-style16 {
            width: 265px;
            height: 23px;
        }
        .auto-style17 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">Bill No :
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Product_Name" HeaderText="Name" />
                        <asp:ImageField DataImageUrlField="Product_Image" HeaderText="Image">
                            <ControlStyle Height="15px" Width="15px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Product_Price" HeaderText="Price" />
                        <asp:BoundField DataField="Cart_Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="Order_Status" HeaderText="Status" />
                        <asp:BoundField DataField="Cart_Total" HeaderText="Total" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3"></td>
            <td class="auto-style8">&nbsp;Account No:&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="217px"></asp:TextBox>
            </td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
            <td class="auto-style12">Grand Total : 
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style13"></td>
            <td class="auto-style13"></td>
            <td class="auto-style13"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style16">
                <asp:Button ID="Button1" runat="server" Text="PAY" OnClick="Button1_Click" />
            </td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style16"> <span class="nav-label">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
