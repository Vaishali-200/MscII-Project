<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Documents.aspx.cs" Inherits="WebApplication2.Documents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title> Documents </title>
    <style>
    body 
{
  margin: 0;
  font-size: 17px;
  color:Black;
}

.content {
  padding: 16px;
}  

p
{
    color:blue;
}
h4
{
    color:white;
    font-size:30px;
} 

    </style>

</head>
<body>

<div class="content">
  <h3 style="font-size:30px; text-decoration:bold;font-family:Verdana; color:Black">Documents are listed below</h3>

            <h4>Medical Certificate:</h4>
                <p>This certificate should be from family doctor with letterhead and the medical report of student taking admmission to hostel.This is for the emergency regarding to hostpital and health.</p><br/>
            
            <h4>Bond Of Indemnity:</h4> 
                <p>This is the way of official process of getting enrolled into the hostel.This takes official permision of student and parent for saftey of individual.<p><br />
            
            <h4>Fees:</h4>
                <p>The Student who confirmed admission to hostel must have to upload the paid reciept of fees.</p>
 </div>
</body>
</html>

</asp:Content>
