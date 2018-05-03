<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="BraceletRastaclats.Admin.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <form id="form1" runat="server">
        <asp:Image ID="currentImage" runat="server" Height="52px" Width="87px"  />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" DefaultMode="Edit">
            <EditItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                Productdescription:
                <asp:TextBox ID="ProductdescriptionTextBox" runat="server" Text='<%# Bind("Productdescription") %>' />
                <br />
                Productname:
                <asp:TextBox ID="ProductnameTextBox" runat="server" Text='<%# Bind("Productname") %>' />
                <br />
                Producttype:
                <asp:TextBox ID="ProducttypeTextBox" runat="server" Text='<%# Bind("Producttype") %>' />
                <br />
                Productprice:
                <asp:TextBox ID="ProductpriceTextBox" runat="server" Text='<%# Bind("Productprice") %>' />
                <br />
                Productquantity:
                <asp:TextBox ID="ProductquantityTextBox" runat="server" Text='<%# Bind("Productquantity") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ProductID:
                <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                <br />
                Productdescription:
                <asp:TextBox ID="ProductdescriptionTextBox" runat="server" Text='<%# Bind("Productdescription") %>' />
                <br />
                Productname:
                <asp:TextBox ID="ProductnameTextBox" runat="server" Text='<%# Bind("Productname") %>' />
                <br />
                Producttype:
                <asp:TextBox ID="ProducttypeTextBox" runat="server" Text='<%# Bind("Producttype") %>' />
                <br />
                Productprice:
                <asp:TextBox ID="ProductpriceTextBox" runat="server" Text='<%# Bind("Productprice") %>' />
                <br />
                Productquantity:
                <asp:TextBox ID="ProductquantityTextBox" runat="server" Text='<%# Bind("Productquantity") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("[ProductID]") %>' />
                <br />
                Productdescription:
                <asp:Label ID="ProductdescriptionLabel" runat="server" Text='<%# Bind("Productdescription") %>' />
                <br />
                Productname:
                <asp:Label ID="ProductnameLabel" runat="server" Text='<%# Bind("Productname") %>' />
                <br />
                Producttype:
                <asp:Label ID="ProducttypeLabel" runat="server" Text='<%# Bind("Producttype") %>' />
                <br />
                Productprice:
                <asp:Label ID="ProductpriceLabel" runat="server" Text='<%# Bind("Productprice") %>' />
                <br />
                Productquantity:
                <asp:Label ID="ProductquantityLabel" runat="server" Text='<%# Bind("Productquantity") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @original_ProductID AND (([Productdescription] = @original_Productdescription) OR ([Productdescription] IS NULL AND @original_Productdescription IS NULL)) AND (([Productname] = @original_Productname) OR ([Productname] IS NULL AND @original_Productname IS NULL)) AND (([Producttype] = @original_Producttype) OR ([Producttype] IS NULL AND @original_Producttype IS NULL)) AND (([Productprice] = @original_Productprice) OR ([Productprice] IS NULL AND @original_Productprice IS NULL)) AND (([Productquantity] = @original_Productquantity) OR ([Productquantity] IS NULL AND @original_Productquantity IS NULL))" InsertCommand="INSERT INTO [Product] ([ProductID], [Productdescription], [Productname], [Producttype], [Productprice], [Productquantity]) VALUES (@ProductID, @Productdescription, @Productname, @Producttype, @Productprice, @Productquantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product] WHERE ([ProductID] = @ProductID)" UpdateCommand="UPDATE [Product] SET [Productdescription] = @Productdescription, [Productname] = @Productname, [Producttype] = @Producttype, [Productprice] = @Productprice, [Productquantity] = @Productquantity WHERE [ProductID] = @original_ProductID AND (([Productdescription] = @original_Productdescription) OR ([Productdescription] IS NULL AND @original_Productdescription IS NULL)) AND (([Productname] = @original_Productname) OR ([Productname] IS NULL AND @original_Productname IS NULL)) AND (([Producttype] = @original_Producttype) OR ([Producttype] IS NULL AND @original_Producttype IS NULL)) AND (([Productprice] = @original_Productprice) OR ([Productprice] IS NULL AND @original_Productprice IS NULL)) AND (([Productquantity] = @original_Productquantity) OR ([Productquantity] IS NULL AND @original_Productquantity IS NULL))">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="ProductID" Type="Int32" />
            </SelectParameters>
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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
    </form>
</asp:Content>
