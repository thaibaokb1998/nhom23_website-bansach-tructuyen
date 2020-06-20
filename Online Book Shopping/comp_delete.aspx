<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="comp_delete.aspx.cs" Inherits="comp_delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="comp_id" DataSourceID="SqlDataSource1" Width="961px">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="comp_id" HeaderText="comp_id" InsertVisible="False" ReadOnly="True" SortExpression="comp_id" />
        <asp:BoundField DataField="comp_name" HeaderText="comp_name" SortExpression="comp_name" />
        <asp:ImageField DataImageUrlField="comp_logo" HeaderText="comp_logo" SortExpression="comp_logo" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:mobileconnection %>" DeleteCommand="DELETE FROM [company] WHERE [comp_id] = @original_comp_id AND [comp_name] = @original_comp_name AND [comp_logo] = @original_comp_logo" InsertCommand="INSERT INTO [company] ([comp_name], [comp_logo]) VALUES (@comp_name, @comp_logo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [company]" UpdateCommand="UPDATE [company] SET [comp_name] = @comp_name, [comp_logo] = @comp_logo WHERE [comp_id] = @original_comp_id AND [comp_name] = @original_comp_name AND [comp_logo] = @original_comp_logo">
    <DeleteParameters>
        <asp:Parameter Name="original_comp_id" Type="Int32" />
        <asp:Parameter Name="original_comp_name" Type="String" />
        <asp:Parameter Name="original_comp_logo" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="comp_name" Type="String" />
        <asp:Parameter Name="comp_logo" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="comp_name" Type="String" />
        <asp:Parameter Name="comp_logo" Type="String" />
        <asp:Parameter Name="original_comp_id" Type="Int32" />
        <asp:Parameter Name="original_comp_name" Type="String" />
        <asp:Parameter Name="original_comp_logo" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

