<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="modify.aspx.cs" Inherits="modify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
     <br />
     Edit Details:<br />
     <br />
<asp:GridView ID="g1" runat="server" AutoGenerateColumns="false" OnRowCancelingEdit="g1_RowCancelingEdit" OnRowEditing="g1_RowEditing" OnRowUpdating="g1_RowUpdating">
            <Columns>
                <asp:TemplateField HeaderText="Controls">
                    <ItemTemplate>
                        <asp:Button Text="Edit" ID="Editbutton" runat="server" CommandName="Edit" />
                    </ItemTemplate>
                    <EditItemTemplate>
                         <asp:Button Text="Update" ID="updatebutton" runat="server" CommandName="Update" />
                         <asp:Button Text="Cancel" ID="cancelButton" runat="server" CommandName="Cancel" />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="idlbl" runat="server" Text='<%# Eval("Id") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <asp:Label ID="namelbl" runat="server" Text='<%# Eval("Qty") %>' />

                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="nametext" runat="server" Text ='<%# Eval("Qty") %>' />
                    </EditItemTemplate>
                </asp:TemplateField>
            
                 <asp:TemplateField HeaderText="Product_Name">
                    <ItemTemplate>
                        <asp:Label ID="productnamelbl" runat="server" Text='<%# Eval("prod_name") %>' />

                    </ItemTemplate>
                   
                </asp:TemplateField>
                            <asp:TemplateField HeaderText="cost">
                    <ItemTemplate>
                        <asp:Label ID="costlbl" runat="server" Text='<%# Eval("cost") %>' />

                    </ItemTemplate>
                   
                </asp:TemplateField>
                

            </Columns>
        </asp:GridView>    
    <br />
    <br />
    Delete Details:<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="772px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="prod_name" HeaderText="prod_name" SortExpression="prod_name" />
            <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
            <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
            <asp:ImageField DataImageUrlField="prod_img" HeaderText="Product Image">
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Cart_Order] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Cart_Order] ([prod_img], [prod_name], [Qty], [cost]) VALUES (@prod_img, @prod_name, @Qty, @cost)" SelectCommand="SELECT [Id], [prod_img], [prod_name], [Qty], [cost] FROM [Cart_Order] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Cart_Order] SET [prod_img] = @prod_img, [prod_name] = @prod_name, [Qty] = @Qty, [cost] = @cost WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="prod_img" Type="String" />
            <asp:Parameter Name="prod_name" Type="String" />
            <asp:Parameter Name="Qty" Type="Int32" />
            <asp:Parameter Name="cost" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="prod_img" Type="String" />
            <asp:Parameter Name="prod_name" Type="String" />
            <asp:Parameter Name="Qty" Type="Int32" />
            <asp:Parameter Name="cost" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Confirm Your Order" />
    <br />
</asp:Content>

