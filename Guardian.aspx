<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Guardian.aspx.cs" Inherits="WebApplication2.Guardian" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<style type="text/css">  
        .auto-style1 {  
            width: 100%;  
        } 
        
             .container 
            {
                margin-right:40%;
                border-radius: 5px;
                background-color:#FF0066;
                padding: 20px;
                margin-top:15%;
            }     
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


 <div  class="container">
                    
            <table style=" padding-top:10%; width:100%; background-color:#FFFF99; font-size:large; margin-right:30%">  
               
            <tr>  
                <td colspan="6" style=" padding-top:10%; text-align: center; vertical-align: top">  
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="GUARDIAN INFORMATION "></asp:Label>  
                </td>  
            </tr>
              
            <tr>    
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" placeholder="Guardian First Name" Text="First Name"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td> 
            </tr>


            <tr>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" placeholder="Guardian Last Name" Text="Last Name"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td>  
            </tr>
            
            <tr>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" placeholder="Guardian Mobileno" Text=" MobileNo"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="X-Large" ></asp:TextBox>  
                </td>  
            </tr>
            
            <tr>    
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label5" runat="server" Font-Size="X-Large" placeholder="Guardian Occupation" Text="Occupation:"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td> 
            </tr>

            <tr>    
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label6" runat="server" Font-Size="X-Large" placeholder="Guardian Gmail" Text="Gmail"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td> 
            </tr>

             <tr>  
                <td></td>  
                <td style="margin-left:5% ;margin-right:auto ;display:block; margin-top:22%; margin-bottom:10%">
                <asp:Button ID="Button1" runat="server" BorderStyle="None" Font-Size="X-Large"  Text="Submit" OnClick="Button1_Click"/>  
                </td>  
             </tr>  
              
            <tr>   
                <td>  
                    <asp:Label ID="Label7" runat="server" Font-Size="X-Large"></asp:Label>  
                </td>  
            </tr>  
        </table>  
       </div>  

</asp:Content>
