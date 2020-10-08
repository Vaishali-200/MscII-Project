<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReplyOnComplaint.aspx.cs" Inherits="WebApplication2.ReplyOnComplaint" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 42%;
            height: 484px;
            margin-left: 392px;
        }
        .style4
        {
            width: 442px;
            height: 47px;
        }
        .style5
        {
            width: 442px;
            height: 126px;
        }
        .style7
        {
            width: 442px;
            height: 45px;
        }
        .style9
        {
            width: 442px;
            height: 42px;
        }
        .style11
        {
            width: 442px;
            height: 43px;
        }
        .style13
        {
            width: 442px;
            height: 38px;
        }
        .style15
        {
            width: 442px;
            height: 59px;
        }
        .style16
        {
            width: 537px;
            height: 47px;
        }
        .style17
        {
            width: 537px;
            height: 45px;
        }
        .style18
        {
            width: 537px;
            height: 42px;
        }
        .style19
        {
            width: 537px;
            height: 43px;
        }
        .style20
        {
            width: 537px;
            height: 38px;
        }
        .style21
        {
            width: 537px;
            height: 126px;
        }
        .style22
        {
            width: 537px;
            height: 59px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 240px">
    
        <asp:Button ID="Button1" runat="server" BackColor="Aqua" Font-Bold="True" 
            Height="65px" style="margin-left: 272px" Text="Complaint Form" Width="204px" />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#0033CC" 
            Text="Reply By Warden For Particular Complaint"></asp:Label>
        <br />
        <br />
        <br />
    
    </div>
    <table bgcolor="#CCCCCC" class="style1">
        <tr>
            <td class="style16">
                Complaint ID</td>
            <td class="style4">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style17">
                Registered Date and Time</td>
            <td class="style7">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style18">
                Student Name</td>
            <td class="style9">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Complaint Detail</td>
            <td class="style11">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style20">
                Status</td>
            <td class="style13">
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style21">
                Reply</td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server" Height="75px" TextMode="MultiLine" 
                    Width="244px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                <asp:Button ID="Button2" runat="server" BackColor="#99CC00" Font-Bold="True" 
                    Height="33px" onclick="Button2_Click" Text="Submit" Width="197px" />
            </td>
            <td class="style15">
            </td>
        </tr>
    </table>
    <asp:Label ID="Label8" runat="server" Font-Bold="True"></asp:Label>
   <%--  <p>
        <asp:HyperLink ID="HyperLink1" runat="server">View All Complaints</asp:HyperLink>
    </p>--%>
    </form>
</body>
</html>
