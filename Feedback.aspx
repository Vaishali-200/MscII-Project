<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="WebApplication2.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<style type="text/css">  
        .auto-style1 {  
            width: 100%;  
        } 
        
             .container 
            {
                margin-right:40%;
                border-radius: 5px;
                background-color:#e06377;
                padding: 20px;
                margin-top:15%;
            }     
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


 <div  class="container">
                    
            <table style=" padding-top:10%; width:100%; background-color:aqua; font-size:large; margin-right:30%">  
               
            <tr>  
                <td colspan="6" style=" padding-top:10%; text-align: center; vertical-align: top">  
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="FEEDBACK FORM"></asp:Label>  
                </td>  
            </tr>
              
            <tr>    
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Name:"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td> 
            </tr>
            
            <tr></tr> 
            <tr></tr>   

            <tr>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Email:"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td>  
            </tr>
            
            <tr></tr>  
            <tr></tr>
            
            
             <tr>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Your Review:"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td>  
            </tr>
              

             <tr>  
                <td></td>
                 
                <td style="margin-left:auto ;margin-right:auto ;display:block; margin-top:22%; margin-bottom:10%">
                <asp:Button ID="Button1" runat="server" BorderStyle="None" Font-Size="X-Large"  Text="Send Feedback" OnClick="Button1_Click"  />  
                </td>  
             </tr>
               
              
            <tr>   
                <td>  
                    <asp:Label ID="Label5" runat="server" Font-Size="X-Large"></asp:Label>  
                </td>  
            </tr>  
        </table>  
       </div>  


</asp:Content>
