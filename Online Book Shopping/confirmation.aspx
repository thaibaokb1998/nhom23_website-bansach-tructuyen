<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="confirmation.aspx.cs" Inherits="confirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />

    <br />
    Order_Details Page:<br />
    Order_Id :&nbsp;&nbsp;
    <asp:Label ID="orderidlbl" runat="server" Text="Label"></asp:Label>
    <br />
    Your _Email :<asp:Label ID="emaillbl" runat="server" Text="Label"></asp:Label> <br />
    <asp:Image ID="Image1" runat="server" Height="169px" Width="177px" /> <br />
    
    Product_Name :<asp:Label ID="pnamelbl" runat="server" Text="Label"></asp:Label> <br /><br />
    Quantity:<asp:Label ID="qtylbl" runat="server" Text="Label"></asp:Label> <br /><br />
    Cost :<asp:Label ID="costlbl" runat="server" Text="Label"></asp:Label> 
<br />
<br />
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Confirm Order " />
&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Modify" />
<br /><br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>

