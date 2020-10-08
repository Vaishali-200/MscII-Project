<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication2.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Contact Here</title>
<style>
 body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  margin-left: 45%;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container 
{
    margin-right:40%;
  border-radius: 5px;
  background-color: pink;
  padding: 20px;
}
</style>
</head>
<body>
              
            	<a style="margin:100px; text-decoration:underline; color:Black; text-align:center; font-size:35px">How to find us:</a>
			    <p>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3781.1506005908964!2d73.74649291445961!3d18.612294787355715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2b97ff64ed2b5%3A0x882b048e0fc06758!2sIndira%20College%20Girls%20Hostel!5e0!3m2!1sen!2sin!4v1583600585105!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                </p><br><br/>

                
<div class="container">
  <form action="" >

  <a style=" margin-left: 45%; font-size:large; text-align:center">CONTACT US</a><br><br/>

    <label for="fname">Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name..">

    <label for="lname">Email</label>
    <input type="text" id="lname" name="email" placeholder="Your email..">


    <label for="subject">Subject</label>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

    <input style="text-align:center" type="submit" value="Submit">
  </form>
</div>
    <div class="contact-det">
          	 <h3>Contact Address:</h3>
					<p>We are here to provide solution to students problems. We feel proud to work as part of Indira Institutes. Following are our details::</p>	
					<p>Mobile No. : 9822670927/9284787412</p>
					<!--<p>Fax:</p>-->
					<p>Email: <a href="mailto:info@gmail.com">vaishalibelote6@gmail.com  OR  lokhandesneha100@gmail.com</a></p>
		</div>
    
 </body>
 </html>


</asp:Content>
