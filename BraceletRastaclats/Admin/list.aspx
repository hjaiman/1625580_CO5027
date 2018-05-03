<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="BraceletRastaclats.Admin.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <form id="form1" runat="server">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="Productdescription" HeaderText="Productdescription" SortExpression="Productdescription" />
                <asp:BoundField DataField="Productname" HeaderText="Productname" SortExpression="Productname" />
                <asp:BoundField DataField="Producttype" HeaderText="Producttype" SortExpression="Producttype" />
                <asp:BoundField DataField="Productprice" HeaderText="Productprice" SortExpression="Productprice" />
                <asp:BoundField DataField="Productquantity" HeaderText="Productquantity" SortExpression="Productquantity" />
                <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="UploadImage.aspx?ProductID={0}" Text="Upload Image" />
                <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="Edit.aspx?ProductID={0}" Text="Edit" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @original_ProductID AND (([Productdescription] = @original_Productdescription) OR ([Productdescription] IS NULL AND @original_Productdescription IS NULL)) AND (([Productname] = @original_Productname) OR ([Productname] IS NULL AND @original_Productname IS NULL)) AND (([Producttype] = @original_Producttype) OR ([Producttype] IS NULL AND @original_Producttype IS NULL)) AND (([Productprice] = @original_Productprice) OR ([Productprice] IS NULL AND @original_Productprice IS NULL)) AND (([Productquantity] = @original_Productquantity) OR ([Productquantity] IS NULL AND @original_Productquantity IS NULL))" InsertCommand="INSERT INTO [Product] ([ProductID], [Productdescription], [Productname], [Producttype], [Productprice], [Productquantity]) VALUES (@ProductID, @Productdescription, @Productname, @Producttype, @Productprice, @Productquantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Productdescription] = @Productdescription, [Productname] = @Productname, [Producttype] = @Producttype, [Productprice] = @Productprice, [Productquantity] = @Productquantity WHERE [ProductID] = @original_ProductID AND (([Productdescription] = @original_Productdescription) OR ([Productdescription] IS NULL AND @original_Productdescription IS NULL)) AND (([Productname] = @original_Productname) OR ([Productname] IS NULL AND @original_Productname IS NULL)) AND (([Producttype] = @original_Producttype) OR ([Producttype] IS NULL AND @original_Producttype IS NULL)) AND (([Productprice] = @original_Productprice) OR ([Productprice] IS NULL AND @original_Productprice IS NULL)) AND (([Productquantity] = @original_Productquantity) OR ([Productquantity] IS NULL AND @original_Productquantity IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_Productdescription" Type="String" />
                <asp:Parameter Name="original_Productname" Type="String" />
                <asp:Parameter Name="original_Producttype" Type="String" />
                <asp:Parameter Name="original_Productprice" Type="Int32" />
                <asp:Parameter Name="original_Productquantity" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="Productdescription" Type="String" />
                <asp:Parameter Name="Productname" Type="String" />
                <asp:Parameter Name="Producttype" Type="String" />
                <asp:Parameter Name="Productprice" Type="Int32" />
                <asp:Parameter Name="Productquantity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Productdescription" Type="String" />
                <asp:Parameter Name="Productname" Type="String" />
                <asp:Parameter Name="Producttype" Type="String" />
                <asp:Parameter Name="Productprice" Type="Int32" />
                <asp:Parameter Name="Productquantity" Type="Int32" />
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_Productdescription" Type="String" />
                <asp:Parameter Name="original_Productname" Type="String" />
                <asp:Parameter Name="original_Producttype" Type="String" />
                <asp:Parameter Name="original_Productprice" Type="Int32" />
                <asp:Parameter Name="original_Productquantity" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log Out" />
    </form>
</asp:Content>
