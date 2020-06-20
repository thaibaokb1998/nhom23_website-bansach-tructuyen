<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 247px;
        }
        .auto-style3 {
        width: 570px;
    }
        .auto-style4 {
            width: 501px;
        }
        #TextArea1 {
            width: 206px;
        }
        #Area {
            width: 206px;
        }
    .auto-style6 {
        width: 215px;
    }
    .auto-style7 {
        width: 1202px;
        height: 40px;
    }
    .auto-style8 {
        width: 525px;
    }
    .auto-style9 {
        width: 295px;
        height: 65px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width:100%;">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style8">
                <img alt="" class="auto-style9" src="images/feedback-png-hi.png" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style8">
                <table class="table" style="width:100%;">
                    <tr>
                        <td class="auto-style7">Name</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox1" runat="server" Width="206px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            Email</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox2" runat="server" Width="206px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Phone no.</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox3" runat="server" Width="206px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">A) Do you like the design of our site</td>
                        <td class="auto-style3">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                <asp:ListItem>Excellent</asp:ListItem>
                                <asp:ListItem>Good</asp:ListItem>
                                <asp:ListItem>Average</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">B) Rate the variety of products on site</td>
                        <td class="auto-style3">
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                <asp:ListItem>Excellent</asp:ListItem>
                                <asp:ListItem>Good</asp:ListItem>
                                <asp:ListItem>Average</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Your Feedback</td>
                        <td class="auto-style3">
                            <textarea id="TextArea2" runat="server" cols="20" name="S2" rows="2"></textarea></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="button" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

