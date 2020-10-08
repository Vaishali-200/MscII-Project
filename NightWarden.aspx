<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NightWarden.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<style type="text/css">

 .auto-style1 {  
            width: 100%;  
        } 
        
             .container 
            {
                margin-right:40%;
                background-color:#9999FF;
                padding: 20px;
                margin-top:15%;
            }     

</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 <div class="container">
                    
            <table style=" padding-top:10%; width:100%; background-color:#FF99CC; font-size:large">  
               
            <tr>  
                <td colspan="6" style=" padding-top:10%; text-align: center; vertical-align: top">  
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="NightOut Form "></asp:Label>  
                </td>  
            </tr>
              
            <tr>    
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Name"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td> 
            </tr>
            
            <tr>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Email"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Large" ></asp:TextBox>  
                </td>  
            </tr>
            
            <tr>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Mobile"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="X-Large" ></asp:TextBox>  
                </td>  
            </tr>
            

            <tr>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="Parent phoneno"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="X-Large" ></asp:TextBox>  
                </td>  
            </tr>
            
             <tr>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label6" runat="server" Font-Size="X-Large" Text="From Date"  ></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="X-Large" TextMode="Date" AutoCompleteType="Disabled" ></asp:TextBox>
                     <asp:RegularExpressionValidator ID="reExp1" runat="server" 
                        ControlToValidate="TextBox5" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
                        ErrorMessage="Invalid date format." ValidationGroup="Group2" Display="Dynamic" 
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" 
                        ForeColor="#FF5050"></asp:RegularExpressionValidator>
                  
                </td>  
            </tr>
            
              <tr>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label7" runat="server" Font-Size="X-Large"  Text="To Date"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox6" runat="server" Font-Size="X-Large" TextMode="Date"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="reExp2" runat="server" 
                        ControlToValidate="TextBox6" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
                        ErrorMessage="Invalid date format." ValidationGroup="Group2" Display="Dynamic" 
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" 
                        ForeColor="#FF5050"></asp:RegularExpressionValidator>
                 
                </td>  
            </tr>
            
             <tr>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label8" runat="server" Font-Size="X-Large" Text="Purpose of Leave"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox7" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td>  
            </tr>
            
            <tr>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:Label ID="Label9" runat="server" Font-Size="X-Large" Text="Location of Leave"></asp:Label>  
                </td>  
                <td style="text-align: center; padding-top:10%">  
                    <asp:TextBox ID="TextBox8" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td>  
            </tr>
            


             <tr>  
                 
                <td style="margin-left:5% ;margin-right:60% ;display:block; margin-top:22%; margin-bottom:10%">
                <asp:Button ID="Button1" runat="server" BorderStyle="None" Font-Size="X-Large"  
                        Text="Submit" onclick="Button1_Click"  />  
                </td>  
                
                <td style="margin-left:5% ;margin-right:60% ;display:block; margin-top:22%; margin-bottom:10%">
                <asp:Button ID="Button2" runat="server" BorderStyle="None" Font-Size="X-Large"  
                        Text="Ssss" onclick="Button2_Click"  />  
                </td> 

             </tr>  
              
            <tr>   
                <td>  
                    <asp:Label ID="Label10" runat="server" Font-Size="X-Large"></asp:Label>  
                </td>  
            </tr>  
        </table>  
       </div>  

</asp:Content>
