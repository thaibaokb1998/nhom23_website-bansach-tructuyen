<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 194px;
        }
        .auto-style3 {
            width: 304px;
        }
        .auto-style4 {
            width: 82px;
        }
    .auto-style5 {
        width: 246px;
        height: 65px;
    }
    .auto-style6 {
        width: 620px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">
                <br />
                <img alt="" class="auto-style5" src="images/login-button-png-hi%20(1).png" /><br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">
                <table style="width: 65%;" class="table">
                    <tr>
                        <td class="auto-style4">Email</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox1" runat="server" Width="207px" ValidationGroup="group2"></asp:TextBox> 
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="group2"></asp:RequiredFieldValidator>
                           
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="group2">*</asp:RegularExpressionValidator>
                           
                        </td>
                       
                    </tr>
                    <tr>
                        <td class="auto-style4">Password</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox2" runat="server" Width="207px" Type="password" ValidationGroup="group2"></asp:TextBox> 
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="group2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="margin-left: 80px">
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="margin-left: 80px">&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Button ID="Button1" runat="server" CssClass="button" Text="Log in" OnClick="Button1_Click" ValidationGroup="group2" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

