<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WardenRegistration.aspx.cs" Inherits="WebApplication2.WardenRegistration2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<style type="text/css">
        .auto-style1 {
            width: 100%;
            font-family:AR CARTER;
            font-size:40%;
            color:#80ced6;
        }
        .auto-style2 {
            width: 216px;
        }
        
        .container 
{
    margin-right:40%;
  border-radius: 5px;
  background-color: #b5e7a0;
  padding: 20px;
}
       
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 <form action="" style="background-color:#d64161; margin:100px; text-decoration:underline; color:Black; text-align:center; font-size:35px">  
        <div  class="container">
                    
            <table style="width:100%; background-color:#f4a688; font-size:large; margin-right:30%">  
                
            <caption class="style1"> Warden Registration Form  </caption> 
         
           
                <tr>  
                    <td class="style2"></td>    
                    <td> </td>    
                    <td> </td>   
                 </tr> 

                 <tr>  
                    <td class="style2">Fname:</td>   
                    <td> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  </td>  
                    <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your First name"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>
                
                <tr>  
                    <td class="style2">Lname:</td>   
                    <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>  </td>  
                    <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"   
ControlToValidate="TextBox2" ErrorMessage="Please Enter Your Last name"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr> 
                 
                 
                <tr>  
                    <td class="style2">Email:</td>   
                    <td> <asp:TextBox ID="TextBox3"  Height="30%" runat="server"></asp:TextBox>  </td>  
                    <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   
ControlToValidate="TextBox3" ErrorMessage="Please Enter Your Email"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr> 
                 
                <tr>  
                    <td class="style2"> Password:</td>
  
                    <td> 
                        <asp:TextBox ID="TextBox4" TextMode="Password" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
ControlToValidate="TextBox4" ErrorMessage="Please Enter Your word"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr> 

                <tr>  
                    <td class="style2">Aadhar Number:</td>   
                    <td> <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>  </td>  
                    <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"   
ControlToValidate="TextBox5" ErrorMessage="Please Enter Your Aadhar Number"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr> 


                <tr>  
                    <td class="style2">Address:</td>   
                    <td> <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>  </td>  
                    <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"   
ControlToValidate="TextBox6" ErrorMessage="Please Enter Your Address"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr> 
                 

                 <tr>  
                    <td class="style2">State:</td>   
                    <td> <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>  </td>  
                    <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"   
ControlToValidate="TextBox7" ErrorMessage="Please Enter Your State"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr> 
                 
                 <tr>  
                    <td class="style2">City:</td>   
                    <td> <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>  </td>  
                    <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"   
ControlToValidate="TextBox8" ErrorMessage="Please Enter Your City"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr> 
                 
                 <tr>  
                    <td class="style2">Mobile Number:</td>   
                    <td> <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>  </td>  
                    <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"   
ControlToValidate="TextBox9" ErrorMessage="Please Enter Your Mobile Number"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr> 
                 
                 <tr>  
                    <td class="style2">Pincode:</td>   
                    <td> <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>  </td>  
                    <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"   
ControlToValidate="TextBox10" ErrorMessage="Please Enter Your PinCode"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr> 
                 
                 <tr>  
                    <td>Gender</td>  
                    <td>  
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">  
                            <asp:ListItem>Male</asp:ListItem>  
                            <asp:ListItem>Female</asp:ListItem>  
                        </asp:RadioButtonList>  
                    </td>  
               </tr>  


               <tr>  
                    <td>Course</td>  
                    <td>  
                        <asp:DropDownList ID="DropDownList1" runat="server">  
                            <asp:ListItem Text="Select Course" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="MCS" Value="MCS"></asp:ListItem>  
                            <asp:ListItem Text="MCA" Value="MCA"></asp:ListItem>  
                            <asp:ListItem Text="OTHER" Value="OTHER"></asp:ListItem>  
                        </asp:DropDownList>  
                    </td>  
                </tr>  

                 <tr>
                    <td>DOB: </td><td><asp:TextBox ID="dob" runat="server" TextMode="Date" height="50%"></asp:TextBox> </td>
                    <td><asp:RequiredFieldValidator ID="validdob" runat="server" ControlToValidate="dob" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>  
                       

                 <tr>  
                    <td>Blood Group</td>  
                    <td>  
                        <asp:DropDownList ID="DropDownList2" runat="server">  
                            <asp:ListItem Text="Select Blood Group" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="A Positive" Value="A Positive"></asp:ListItem>  
                            <asp:ListItem Text="A Negative" Value="A Negative"></asp:ListItem>  
                            <asp:ListItem Text="B Positive" Value="B Positive"></asp:ListItem> 
                            <asp:ListItem Text="AB Positive" Value="AB Positive"></asp:ListItem>  
                            <asp:ListItem Text="B Negative" Value="B Negative"></asp:ListItem>  
                            <asp:ListItem Text="O Positive" Value="O Positive"></asp:ListItem> 
                            <asp:ListItem Text="AB Negative" Value="AB Negative"></asp:ListItem>  
                            <asp:ListItem Text="O Negative" Value="O Negative"></asp:ListItem>     
                        </asp:DropDownList>  
                    </td>  
                </tr>  

                 
                <tr>  
                    <td class="style2"></td>    
                    <td>  </td>  <td> </td>  
                </tr>                       

                   <tr>    
                        <td class="style2"> </td>   
                         <td>  <asp:Button ID="Button1" runat="server" Text="Log In"  OnClick="Button1_Click" />    </td>  
                         <td> <asp:Label ID="Label1" runat="server"></asp:Label>  </td>      
                    </tr> 


                    <tr>   
                        <td>  
                        <asp:Label ID="Label4" runat="server" Font-Size="X-Large"></asp:Label>  
                        </td>  
                    </tr>  

            </table>  
        </div>  
    </form>


</asp:Content>
