<%@ Page Language="C#" AutoEventWireup="true" CodeFile="7c.aspx.cs" Inherits="_7c" %>

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
           c. Inserting and Deleting Records from Database.</h2>
    </center>
    <div>
    
        Roll No :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRoll" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
        <br />
        Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <br />
        Class :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtClass" runat="server"></asp:TextBox>
        <br />
        <br />
        Contact :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
        <br />
        <br />
        Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnInsert" runat="server" onclick="Button1_Click" 
            Text="Insert Data" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click" 
            Text="Delete" />
&nbsp;<asp:Label ID="lblMsg" runat="server" BackColor="Black" Font-Bold="True" 
            ForeColor="Aqua"></asp:Label>
    
    </div>
    </form>
</body>
</html>
