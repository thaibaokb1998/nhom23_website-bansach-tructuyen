<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #TextArea1 {
            width: 297px;
            height: 81px;
        }
        .auto-style6 {
            width: 324px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Maroon" Text="Payment Mode"></asp:Label>
    <br />
    <br />
    <table style="width:100%;">
        <tr>
            <td class="auto-style6">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>CASH ON DELIEVERY</asp:ListItem>
                    <asp:ListItem>CREDIT CARD</asp:ListItem>
                    <asp:ListItem>CHEQUE/DRAFT</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                
            </td>
            <td rowspan="2">

                <asp:Label ID="Label4" runat="server" Text="CREDIT CARD NUMBER" Visible="False"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Visible="False" Width="229px" ValidationGroup="g1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="COMPANY NAME" Visible="False"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Visible="False" Width="229px" ValidationGroup="g1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="EXPIRY DATE OF CARD" Visible="False"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox3" runat="server" Visible="False" Width="229px" ValidationGroup="g3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="CARD HOLDER NAME" Visible="False"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox4" runat="server" Visible="False" Width="229px" ValidationGroup="g1"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <br />
                <asp:Button ID="Button1" runat="server" Text="Proceed" CssClass="button" Font-Size="Large" OnClick="Button1_Click" ValidationGroup="g1" />
            </td>
            <td>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

