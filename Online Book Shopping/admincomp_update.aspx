<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admincomp_update.aspx.cs" Inherits="admincomp_update" %>

<%@ Register src="admin/usercontrol/comp_add.ascx" tagname="comp_add" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:comp_add ID="comp_add1" runat="server" />
</asp:Content>

