<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAllComplaints.aspx.cs" Inherits="WebApplication2.ViewAllComplaints" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 30px; width: 397px; margin-left: 230px">
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Aqua" 
        Text="Complaint Form"></asp:Label>
    <p>
        <asp:Label ID="Label2" runat="server" ForeColor="Blue" 
            Text="View All Complaint in Warden Area"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="complaintid" HeaderText="Complaint Id" 
                SortExpression="complaintid">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="registerdatetime" 
                HeaderText="Register Date and Time" SortExpression="registerdatetime">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="cname" HeaderText="Customer Name" 
                SortExpression="cname">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="complaintdetail" HeaderText="Complaint Detail" 
                SortExpression="complaintdetail">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Reply Option">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" BackColor="Red" 
                        CommandArgument='<%# Eval("complaintid")%>' Height="42px" 
                        onclick="Button1_Click" style="margin-left: 79px" Text="Reply" Width="85px" />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
        SelectCommand="SELECT * FROM [ComplaintDetail] ORDER BY [complaintid] DESC">
    </asp:SqlDataSource>
    </form>
</body>
</html>
