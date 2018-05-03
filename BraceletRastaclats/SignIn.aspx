<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="BraceletRastaclats.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <div id="content2">
    <div align="center">
       <form id="form1" runat="server">
          
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="TxtLoginPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        
           <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" />
        
        <br />
        <br />
        <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
              </form>

    </div>
</div>
</asp:Content>
