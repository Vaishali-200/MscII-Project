<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Facility.aspx.cs" Inherits="WebApplication2.Facility" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Facilities</title>
<style>
.container 
{
  border-radius: 5px;
  background-color: #f2f2f2;
  width:500px;
}
</style>
</head>
<body>
     <div><h3 style="text-align:justify; font-size:300%; text-decoration:none; color:Black">Facilities of Hostel</h3></div>
	      <div class="container">
                <form action="">
                <h5 style="margin-left:10px; font-size:20px; font-family:">
                        <p>1. Carefully Planned Menu with Variety</p><br />
                        <p>2. Centrally located - with easy access to all day-to-day requirements</p><br />
                        <p>3. Hot Water Facility</p><br />
                        <p>4. Purified Drinking Water</p><br />
                        <p>5. Separate Dining Hall</p><br />
                        <p>6. Medical Facility</p><br />
                        <p>7. News Paper & Magazines</p><br />
                        <p>8. Television</p><br />
                    </h5>
                </form>
          </div>

</body>
</html>

</asp:Content>
