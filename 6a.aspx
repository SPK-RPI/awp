<%@ Page Language="C#" AutoEventWireup="true" CodeFile="6a.aspx.cs" Inherits="TextBox_Display" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <center>
    <h2>Practical 6</h2>
    <h2>a. Creating a Web Application bind data in a multiline textbox by querying in another textbox.</h2>
    </center>
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
    <br />
    <asp:TextBox ID="txtMsg" runat="server" TextMode="MultiLine" Text="<%#str %>" 
        BackColor="Black" ForeColor="Blue" Height="120px" 
        ontextchanged="txtMsg_TextChanged" Width="532px"></asp:TextBox>
    </form>
</body>
</html>
