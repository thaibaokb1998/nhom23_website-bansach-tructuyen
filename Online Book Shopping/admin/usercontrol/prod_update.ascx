<%@ Control Language="C#" AutoEventWireup="true" CodeFile="prod_update.ascx.cs" Inherits="admin_usercontrol_prod_update" %>



<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="p_id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="p_id" HeaderText="p_id" InsertVisible="False" ReadOnly="True" SortExpression="p_id" />
      
        <asp:BoundField DataField="p_name" HeaderText="p_name" SortExpression="p_name" />
        <asp:BoundField DataField="p_desp" HeaderText="p_desp" SortExpression="p_desp" />
        <asp:ImageField DataImageUrlField="p_logo" HeaderText="p_logo" SortExpression="p_logo" ControlStyle-Width="300px" />
        <asp:BoundField DataField="p_price" HeaderText="p_price" SortExpression="p_price" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:mobileconnection %>" DeleteCommand="DELETE FROM [product] WHERE [p_id] = @original_p_id AND [p_name] = @original_p_name AND (([p_desp] = @original_p_desp) OR ([p_desp] IS NULL AND @original_p_desp IS NULL)) AND (([p_logo] = @original_p_logo) OR ([p_logo] IS NULL AND @original_p_logo IS NULL)) AND (([p_price] = @original_p_price) OR ([p_price] IS NULL AND @original_p_price IS NULL))" InsertCommand="INSERT INTO [product] ([p_name], [p_desp], [p_logo], [p_price]) VALUES (@p_name, @p_desp, @p_logo, @p_price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [p_name] = @p_name, [p_desp] = @p_desp, [p_logo] = @p_logo, [p_price] = @p_price WHERE [p_id] = @original_p_id AND [p_name] = @original_p_name AND (([p_desp] = @original_p_desp) OR ([p_desp] IS NULL AND @original_p_desp IS NULL)) AND (([p_logo] = @original_p_logo) OR ([p_logo] IS NULL AND @original_p_logo IS NULL)) AND (([p_price] = @original_p_price) OR ([p_price] IS NULL AND @original_p_price IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_p_id" Type="Int32" />
       
        <asp:Parameter Name="original_p_name" Type="String" />
        <asp:Parameter Name="original_p_desp" Type="String" />
        <asp:Parameter Name="original_p_logo" Type="String" />
        <asp:Parameter Name="original_p_price" Type="String" />
    </DeleteParameters>
    <InsertParameters>
       
        <asp:Parameter Name="p_name" Type="String" />
        <asp:Parameter Name="p_desp" Type="String" />
        <asp:Parameter Name="p_logo" Type="String" />
        <asp:Parameter Name="p_price" Type="String" />
    </InsertParameters>
    <UpdateParameters>
      
        <asp:Parameter Name="p_name" Type="String" />
        <asp:Parameter Name="p_desp" Type="String" />
        <asp:Parameter Name="p_logo" Type="String" />
        <asp:Parameter Name="p_price" Type="String" />
        <asp:Parameter Name="original_p_id" Type="Int32" />
       
        <asp:Parameter Name="original_p_name" Type="String" />
        <asp:Parameter Name="original_p_desp" Type="String" />
        <asp:Parameter Name="original_p_logo" Type="String" />
        <asp:Parameter Name="original_p_price" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>