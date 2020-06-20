<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="prod_insert.aspx.cs" Inherits="pupdate" %>

<%@ Register src="~/admin/usercontrol/prod_insert.ascx" tagname="productupdate" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:productupdate ID="productupdate1" runat="server" />
</asp:Content>

