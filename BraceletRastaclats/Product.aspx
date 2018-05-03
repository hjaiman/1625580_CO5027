<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="BraceletRastaclats.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <form id="form1" runat="server">
        <table><tr><td>
        <asp:Image ID="ProductImage" runat="server" width="200" height="200"/>
        </td>
        <td>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
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
                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
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

                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([ProductID] = @ProductID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProductID" QueryStringField="ProductID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />

    </td></tr></table>
    </form>


</asp:Content>
