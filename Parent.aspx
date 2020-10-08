<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Parent.aspx.cs" Inherits="WebApplication2.Parent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<style type="text/css">  
        .auto-style1 {  
            width: 100%;  
        } 
        
             .container 
            {
                margin-right:40%;
                border-radius: 5px;
                background-color:#990099;
                padding: 20px;
                margin-top:15%;
            }     
    </style>

 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



 <div  class="container">
                    
            <table style=" padding-top:10%; width:100%; background-color:#00FFFF; font-size:large; margin-right:30%">  
               
            <tr>  
                <td colspan="6" style=" padding-top:10%; text-align: center; vertical-align: top">  
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Parent Details "></asp:Label>  
                </td>  
            </tr>
              
            <tr>    
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Father Name"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td> 
            </tr>
            
            <tr>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Father MobileNo"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Large" ></asp:TextBox>  
                </td>  
            </tr>
            
            <tr>    
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="Father Occupation:"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td> 
            </tr>

            <tr>    
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label6" runat="server" Font-Size="X-Large" Text="Mother Name"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td> 
            </tr>
            
            <tr>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Text="Mother MobileNo"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td>  
            </tr>
            
            <tr>    
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label8" runat="server" Font-Size="X-Large" Text="Mother Occupation:"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox6" runat="server" Font-Size="X-Large"></asp:TextBox>  
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
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large"></asp:Label>  
                </td>  
            </tr>  
        </table>  
       </div>  





 <%-- <form action="" style="background-color:#d64161; text-decoration:underline; color:Black; text-align:center; font-size:30%">  
        <div  class="container">
                    
            <table style="padding-top:10%;padding-bottom:20%; padding-right:auto; background-color:#b5e7a0; font-size:XX-large">  
                
                 <tr>     
                    <th colspan="4">Parent Details</th>
                    <th colspan="4">Guardian Details</th>
                 </tr> 

                 <tr>  
                    <td style="height:40%"> <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Father Name"></asp:TextBox></td><td></td>&nbsp;&nbsp;   
                    <td> <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Father MobileNumber" ></asp:TextBox></td><td></td>&nbsp;&nbsp;&nbsp;&nbsp; 
                    <td> <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Guardian Name" ></asp:TextBox></td><td></td>&nbsp;&nbsp;
                    <td> <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Guardian Address" ></asp:TextBox></td><td></td>  
                </tr>

                 <tr>  
                    <td> <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Father Occupation"></asp:TextBox></td><td></td>   
                    <td> <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter Mother Name " ></asp:TextBox></td><td></td>  
                    <td> <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter Guardian Gmail" ></asp:TextBox></td><td></td>
                    <td> <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter Guardian Occupation" ></asp:TextBox></td><td></td>  
                </tr>

                 <tr>  
                    <td> <asp:TextBox ID="TextBox9" runat="server" placeholder="Enter Mother MobileNumbe"></asp:TextBox></td><td></td>   
                    <td> <asp:TextBox ID="TextBox10" runat="server" placeholder="Enter Mother Occupation" ></asp:TextBox></td><td></td>  
                    <td> <asp:TextBox ID="TextBox11" runat="server" placeholder="Enter Guardian Mobileno" ></asp:TextBox></td><td></td>
                 </tr>

             
            </table>  
        </div>  
    </form>--%>

</asp:Content>
