﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPasswordStudent.aspx.cs" Inherits="WebApplication2.ForgetPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        enter ur Register Email Id:<asp:TextBox ID="txtEmail" runat="server" /><br ><br >
        <asp:Button ID="btnPwd" runat="server" Text="Get your password" 
            onclick="btnPwd_Click"/>
        <asp:Label ID="Labelmsg" runat="server" />
    </center>
    </div>
    </form>
</body>
</html>
