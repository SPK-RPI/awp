<%@ Page Language="C#" AutoEventWireup="true" CodeFile="8.aspx.cs" Inherits="GridviewDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <center>
        <h2>
            Practical 8</h2>
        <h2>
           Demonstarte the use of GridView Control</h2>
    </center>
    <div>
<h1>GridViewDemo</h1>
    </div>
    <p>
        <asp:Button ID="btnShow" runat="server" onclick="Button1_Click" 
            Text="Click to Display Gridview!!" />
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%"
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="RollNo" HeaderText="RollNo" 
                SortExpression="RollNo" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            <asp:BoundField DataField="Contact" HeaderText="Contact" 
                SortExpression="Contact" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:ButtonField ButtonType="Button" CommandName="Click" HeaderText="View" Text="View Record!" /> 
            <asp:ButtonField ButtonType="Link" CommandName="Select" HeaderText="Select" Text="Select Record!" /> 
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:TYITPracticals2019ConnectionString %>" 
        SelectCommand="SELECT * FROM [StudentInfo]"></asp:SqlDataSource>
    </form>
</body>
</html>
