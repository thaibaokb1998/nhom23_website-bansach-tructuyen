<%@ Control Language="C#" AutoEventWireup="true" CodeFile="prod_insert.ascx.cs" Inherits="admin_usercontrol_productupdate" %>
<table style="width:100%;">
    <tr>
        <td>Add Product (Books)</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Book Name</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="g1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Book&nbsp; Description</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" ValidationGroup="g1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Book Logo</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Book&nbsp; Price</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="g1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" ValidationGroup="g1" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

