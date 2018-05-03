<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="BraceletRastaclats.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div id="contactcontent">
        
       <table>
            <tr>
                <td>
                    <div id="mapcontent">
                    <h2>Location</h2>
                                      <div id="map">    
                                            <script src="scripts/map.js"></script>
                                          <script> var map;
                                              function initMap() {
                                                  map = new google.maps.Map(document.getElementById('map'), { center: { lat: 4.887916, lng: 114.949184, }, zoom: 12 });

                                              } </script>
                                            <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-oJBYzfq9AQg1bMV6vz0240c-qUi59RE&callback=initMap"></script>
                                       </div>
                     </div>
               </td>


<td>
    <div id="contcontent">
    <div id="contacth2">    <h2>Contact</h2> </div>

    <div id="contactus">
                   
                                <form id="form1" runat="server">
                                                                         <asp:ValidationSummary runat="server" ID="sumarry"></asp:ValidationSummary>
                                                                         <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
                                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                         <asp:TextBox ID="txtEmail" runat="server" Width="154px" Height="24px"></asp:TextBox>
                                                                         <asp:RequiredFieldValidator runat="server" ErrorMessage="Email is required" ForeColor="Red" ID="reqEmail" ControlToValidate="txtEmail" Display="None"></asp:RequiredFieldValidator>
           
                                                                         <asp:RegularExpressionValidator runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ID="ValidEmail" ForeColor="Red" Display="None" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
        
        
                                                                         <br />
        
        
                                                                         <br />
        
        
                                                                         <asp:Label ID="Label2" runat="server" Text="Subject:"></asp:Label>
        
       
        
                                                                         &nbsp;&nbsp; <asp:TextBox ID="txtsubject" runat="server" Width="154px" Height="24px"></asp:TextBox>
                                                                         <asp:RequiredFieldValidator runat="server" ErrorMessage="Subject is required" ID="reqSubject" ControlToValidate="txtSubject" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
        
                                                                         <br />
        
                                                                         <br />
        
                                                                         <asp:Label ID="Label3" runat="server" Text="Message:"></asp:Label>
                                                                         &nbsp;<asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Height="100px" Width="231px"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Please input your message" ID="reqTxt" ControlToValidate="txtbody" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                                                                         <br />
                                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                         <asp:Button ID="btnsend" runat="server" Text="Submit" Onclick="btnsendemail_Click" />
                                                                         <asp:Literal ID="litResult" runat="server"></asp:Literal>
         

  
     </form>
                 </div>
        </div>
        </td>
        </tr>
</table>

</div>
    

    
   
                   
 
</asp:Content>
