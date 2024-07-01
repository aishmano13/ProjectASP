<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewFeedback.aspx.cs" Inherits="ProjectASP.ViewFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 88px;
        }
        .auto-style2 {
            width: 521px;
        }
        .auto-style30 {
            width: 88px;
            height: 32px;
        }
        .auto-style31 {
            width: 521px;
            height: 32px;
        }
        .auto-style32 {
            height: 32px;
        }
        .auto-style35 {
            width: 88px;
            height: 24px;
        }
        .auto-style36 {
            width: 521px;
            height: 24px;
        }
        .auto-style37 {
            height: 24px;
        }
        .auto-style38 {
            width: 172px;
        }
        .auto-style39 {
            width: 172px;
            height: 32px;
        }
        .auto-style40 {
            width: 172px;
            height: 48px;
        }
        .auto-style41 {
            height: 48px;
        }
        .auto-style42 {
            width: 172px;
            height: 44px;
        }
        .auto-style43 {
            height: 44px;
        }
        .auto-style44 {
            width: 172px;
            height: 53px;
        }
        .auto-style45 {
            height: 53px;
        }
        .auto-style46 {
            width: 172px;
            height: 42px;
        }
        .auto-style47 {
            height: 42px;
        }
        .auto-style48 {
            width: 172px;
            height: 57px;
        }
        .auto-style49 {
            height: 57px;
        }
        .auto-style50 {
            height: 32px;
            width: 218px;
        }
        .auto-style51 {
            height: 48px;
            width: 218px;
        }
        .auto-style52 {
            height: 44px;
            width: 218px;
        }
        .auto-style53 {
            height: 53px;
            width: 218px;
        }
        .auto-style54 {
            height: 42px;
            width: 218px;
        }
        .auto-style55 {
            height: 57px;
            width: 218px;
        }
        .auto-style56 {
            width: 218px;
        }
        .auto-style57 {
            width: 98%;
        }
        .auto-style58 {
            width: 790px;
        }
        .auto-style59 {
            width: 790px;
            height: 32px;
        }
        .auto-style60 {
            width: 790px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style58">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style58">
                <asp:GridView ID="GridView1" runat="server" Width="491px" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="User_ID" HeaderText="User_ID" />
                        <asp:BoundField DataField="FMessage" HeaderText="Feedback" />
                        <asp:BoundField DataField="Replay" HeaderText="Replay" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("FBID") %>' OnCommand="LinkButton1_Command">Replay</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style58">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style59">
                <asp:Panel ID="Panel1" runat="server" Height="323px" Width="653px" Visible="False">
                    <table class="auto-style57">
                        <tr>
                            <td class="auto-style39"></td>
                            <td class="auto-style50"></td>
                            <td class="auto-style32"></td>
                        </tr>
                        <tr>
                            <td class="auto-style40"><span class="nav-label">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#3333FF" Text="Name"></asp:Label>
                                </span></td>
                            <td class="auto-style51"><span class="nav-label">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#3333FF" Text="Label"></asp:Label>
                                </span></td>
                            <td class="auto-style41"></td>
                        </tr>
                        <tr>
                            <td class="auto-style42"><span class="nav-label">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#3333FF" Text="Subject"></asp:Label>
                                </span></td>
                            <td class="auto-style52"><span class="nav-label">
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#3333FF" Text="Response to Feedback"></asp:Label>
                                </span></td>
                            <td class="auto-style43"></td>
                        </tr>
                        <tr>
                            <td class="auto-style44"><span class="nav-label">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#3333FF" Text="Replay Message"></asp:Label>
                                </span></td>
                            <td class="auto-style53"><span class="nav-label">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </span></td>
                            <td class="auto-style45">
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#3333FF" Text="Enter the replay"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style46"><span class="nav-label">
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#3333FF" Text="Email"></asp:Label>
                                </span></td>
                            <td class="auto-style54"><span class="nav-label">
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#3333FF" Text="Label"></asp:Label>
                                </span></td>
                            <td class="auto-style47"></td>
                        </tr>
                        <tr>
                            <td class="auto-style48"></td>
                            <td class="auto-style55"><span class="nav-label">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Font-Bold="True" Font-Italic="True" />
                                </span></td>
                            <td class="auto-style49"></td>
                        </tr>
                        <tr>
                            <td class="auto-style38">&nbsp;</td>
                            <td class="auto-style56">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style31"></td>
            <td class="auto-style32"></td>
            <td class="auto-style32"></td>
            <td class="auto-style32"></td>
        </tr>
        <tr>
            <td class="auto-style35"></td>
            <td class="auto-style60"></td>
            <td class="auto-style36"></td>
            <td class="auto-style37"></td>
            <td class="auto-style37"></td>
            <td class="auto-style37"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style58">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style58">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style58">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style58">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
