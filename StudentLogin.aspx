<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="WebApplication2.StudentLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style type="text/css">  
        .auto-style1 {  
            width: 100%;  
        } 
        
             .container 
            {
                margin-right:40%;
                border-radius: 5px;
                background-color:#eca1a6;
                padding: 20px;s
                margin-top:15%;
            }
           
       
         
    </style>  

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  
    
        <div  class="container">
                    
            <table style=" padding-top:10%; width:100%; background-color:#b5e7a0; font-size:large; margin-right:30%">  
               
            <tr>  
                <td colspan="6" style=" padding-top:10%; text-align: center; vertical-align: top">  
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Student Log In "></asp:Label>  
                </td>  
            </tr>
              
            <tr>    
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="UserId:"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td> 
            </tr>
            
            <tr></tr> 
            <tr></tr>   

            <tr>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Password:"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Large" TextMode="Password"></asp:TextBox>  
                </td>  
            </tr>
            
            <tr></tr>  
            <tr></tr> 
            
            
           <%--  <tr>
            <td><a href="#" onclick="window.open('ForgetPassword.aspx','FP','width=500,height=50,top=300,left=500,fullscreen=no')">Forget Password</a></td>
           <td><asp:Button ID="Button2" Text="Login" runat="server"  /></td> 
            </tr>--%>
            
            
             

             <tr>  
             
 <td><a href="#" onclick="window.open('ForgetPasswordStudent.aspx','FP','width=500,height=200,top=300,left=500,fullscreen=no')">Forget Password</a></td>
         
                <td style="margin-left:18% ;margin-right:auto ;display:block; margin-top:22%; margin-bottom:10%">
                <asp:Button ID="Button1" runat="server" BorderStyle="None" Font-Size="X-Large"  Text="Submit" OnClick="Button1_Click" />  
                </td>  
             </tr>  
              
            <tr>   
                <td>  
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large"></asp:Label>  
                </td>  
            </tr>  
        </table>  
       </div>  
   

</asp:Content>
