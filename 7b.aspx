<%@ Page Language="C#" AutoEventWireup="true" CodeFile="7b.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <center>
        <h2>
            Practical 7</h2>
        <h2>
            b. Creating a Web Application to display the details from the database.</h2>
    </center>
    <div align="center">
        Enter Roll No :
        <asp:TextBox ID="txtRoll" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" ForeColor="White"
            OnClick="Button1_Click" Text="Search Record!!!" />
        <br />
        <br />
        Student Name :
        <asp:TextBox ID="txtName" runat="server" BackColor="#FFCCFF" Enabled="False" Width="297px"></asp:TextBox>
        <br />
        <br />
        Student Class:
        <asp:TextBox ID="txtClass" runat="server" BackColor="#FFCCFF" Enabled="False" Width="290px"></asp:TextBox>
        <br />
        <br />
        Student Email :
        <asp:TextBox ID="txtEmail" runat="server" BackColor="#FFCCFF" Enabled="False" Width="296px"></asp:TextBox>
    </div>
    </form>
</body>
</html>
