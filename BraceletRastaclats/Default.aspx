<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BraceletRastaclats.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <div id="logo">
        <img src="Images/logo.png" width='700' height='150' />
    </div>


  


 <div align="center">
    <h2>PRODUCT</h2>
  </div>
    <form id="form1" runat="server">
   <div id="repeater">

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Productname] LIKE '%' + @Productname + '%')">
            <SelectParameters>
                <asp:QueryStringParameter Name="Productname" QueryStringField="searchproduct" />
            </SelectParameters>
        </asp:SqlDataSource>


        <table>
                <tr>
                <td>
                    <h2>Available woodsculpture in Online Stores:</h2>
                </td>
                <td style="padding-left:290px;">
                    <asp:TextBox ID="searchtext" runat="server" Width="320px" Height="31px"></asp:TextBox>
                    <br />
                    <asp:Button ID="searchproduct" runat="server" Text="Search Product" OnClick="searchproduct_Click" Width="137px"/>
        <asp:Repeater ID="RepeaterSearch" runat="server" DataSourceID="SqlDataSource3">
              <HeaderTemplate>
                 <table><tr>
                  </HeaderTemplate>
                   <ItemTemplate>
                            <td>
                                <div class="searchbox">
                                  <p>|  <a href="<%#Eval("ProductID", "Product.aspx?ProductID={0}") %>"><%#Eval ("Productname")%></a>  |</p>
                                </div>
                            </td>
                     </ItemTemplate>
                    <FooterTemplate>
                  </tr></table>
              </FooterTemplate>
         </asp:Repeater>


                </td>
                </tr>
            </table>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">

            <HeaderTemplate>
                    <table><tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <td>
                            <a href="<%#Eval("ProductID", "Product.aspx?ProductID={0}") %>"><img src="Images/ProductImage/<%#Eval ("ProductID")%>.jpg" width="200" height="200" /></a>
                            <br>
                            </br>
                            
                            <a href="<%#Eval("ProductID", "Product.aspx?ProductID={0}") %>"><<%#Eval ("Productname")%>/></a>
                            <br>
                            </br>
                            <a><%#Eval ("Productname") %></a> 
                            <br> 
                            </br>                         
                            <a>Bnd $<%#Eval ("Productprice") %></a></td>
                    </ItemTemplate>
                    <FooterTemplate>
                    </tr></table>
                    </FooterTemplate>   
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT TOP 4 * FROM [Product] WHERE ProductQuantity &gt; 0 ORDER BY ProductID DESC
"></asp:SqlDataSource>

    </div>
</form>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT TOP 4 * FROM [Product] WHERE ProductQuantity > 0 ORDER BY ProductID DESC"></asp:SqlDataSource>

   

    
   
</asp:Content>

