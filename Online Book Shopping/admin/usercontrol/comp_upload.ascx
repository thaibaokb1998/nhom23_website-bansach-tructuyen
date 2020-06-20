<%@ Control Language="C#" AutoEventWireup="true" CodeFile="comp_upload.ascx.cs" Inherits="admin_upload" %>
<style type="text/css">
    .auto-style1 {
        width: 543px;
    }
    .auto-style2 {
        width: 167px;
    }
</style>
<table style="width:56%;">
    <tr>
        <td class="auto-style2">Company Name</td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="2x"></asp:TextBox>
        </td>
        
    </tr>
    <tr>
        <td class="auto-style2">Upload Image</td>
        <td class="auto-style1">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">
            <asp:Button ID="Button1" runat="server" Text="ADD" OnClick="Button1_Click" />
        </td>
    </tr>
</table>

