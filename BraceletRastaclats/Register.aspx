<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BraceletRastaclats.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div id="newaccount">
    <h2> New Account</h2>
        </div>
    <div id="registercontain">
    <form id="form1" runat="server">
        
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        :<br />
        <asp:TextBox ID="txtregEmail" runat="server" Height="20px" Width="130px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        :<br />
        <asp:TextBox ID="TxtRegPassword" runat="server" TextMode="Password" Height="20px" Width="130px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" BackColor="#0066FF" BorderColor="Black" BorderStyle="Inset" ForeColor="Black" />
            
        <br />
        <br />
        <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
    </form>
    </div>
    
</asp:Content>
