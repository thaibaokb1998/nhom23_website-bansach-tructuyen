<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="vieworder.aspx.cs" Inherits="vieworder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />

    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="prod_name" HeaderText="prod_name" SortExpression="prod_name" />
            <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
            <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
            <asp:BoundField DataField="Order_Date" HeaderText="Order_Date" SortExpression="Order_Date" />
            <asp:ImageField DataImageUrlField="prod_img" HeaderText="Image">
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mobileconnection %>" DeleteCommand="DELETE FROM [Cart_Order] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Cart_Order] ([email], [prod_img], [prod_name], [Qty], [cost], [IsConfirmed], [Order_Date]) VALUES (@email, @prod_img, @prod_name, @Qty, @cost, @IsConfirmed, @Order_Date)" SelectCommand="SELECT * FROM [Cart_Order] WHERE ([IsConfirmed] = @IsConfirmed)" UpdateCommand="UPDATE [Cart_Order] SET [email] = @email, [prod_img] = @prod_img, [prod_name] = @prod_name, [Qty] = @Qty, [cost] = @cost, [IsConfirmed] = @IsConfirmed, [Order_Date] = @Order_Date WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="prod_img" Type="String" />
            <asp:Parameter Name="prod_name" Type="String" />
            <asp:Parameter Name="Qty" Type="Int32" />
            <asp:Parameter Name="cost" Type="String" />
            <asp:Parameter Name="IsConfirmed" Type="Byte" />
            <asp:Parameter Name="Order_Date" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="IsConfirmed" Type="Byte" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="prod_img" Type="String" />
            <asp:Parameter Name="prod_name" Type="String" />
            <asp:Parameter Name="Qty" Type="Int32" />
            <asp:Parameter Name="cost" Type="String" />
            <asp:Parameter Name="IsConfirmed" Type="Byte" />
            <asp:Parameter Name="Order_Date" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

</asp:Content>

