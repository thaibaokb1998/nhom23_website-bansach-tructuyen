<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="prod_details.aspx.cs" Inherits="prod_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="p_id" DataSourceID="SqlDataSource1" Width="100%" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4"  >
        <Columns>
            <asp:BoundField DataField="p_id" HeaderText="p_id" InsertVisible="False" ReadOnly="True" SortExpression="p_id" />
            <asp:BoundField DataField="p_name" HeaderText="p_name" SortExpression="p_name" />
            <asp:ImageField DataImageUrlField="p_logo" HeaderText="p_logo" SortExpression="p_logo">
                <ControlStyle Width="300px"></ControlStyle>
            </asp:ImageField>
            <asp:BoundField DataField="p_desp" HeaderText="p_desp" SortExpression="p_desp" />
            <asp:BoundField DataField="p_price" HeaderText="p_price" SortExpression="p_price" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mobileconnection %>" SelectCommand="SELECT * FROM [product] where ([p_id] = @p_id)">
    <SelectParameters>
            <asp:QueryStringParameter Name="p_id" QueryStringField="p_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Quantity:"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="52px">1</asp:TextBox>
    <br />
<br />
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Place Order" />
    &nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server"></asp:Label>
    </asp:Content>

