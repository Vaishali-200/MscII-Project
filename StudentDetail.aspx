<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetail.aspx.cs" Inherits="WebApplication2.StudentDetailaspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" BackColor="#FF33CC" Font-Bold="True" 
            Font-Size="X-Large" style="margin-left: 47px" Text="Student Attendance" 
            Width="253px" />
        
    
    </div>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Roll Number"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="41px" 
            style="margin-left: 68px" Width="283px"></asp:TextBox>
    </p>
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Name"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Height="40px" 
        style="margin-left: 116px" Width="280px"></asp:TextBox>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Class"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Height="44px" 
            style="margin-left: 121px" Width="278px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" BackColor="#99CC00" Font-Bold="True" 
            Height="38px" style="margin-left: 81px" Text="Submit" Width="113px" 
            onclick="Button2_Click" />
    </p>
    <asp:Label ID="Label4" runat="server"></asp:Label>
    </form>
</body>
</html>
