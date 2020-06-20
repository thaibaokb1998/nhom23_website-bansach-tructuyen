<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="prod_update.aspx.cs" Inherits="prod_update" %>

<%@ Register src="admin/usercontrol/prod_update.ascx" tagname="prod_update" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:prod_update ID="prod_update1" runat="server" />
</asp:Content>

