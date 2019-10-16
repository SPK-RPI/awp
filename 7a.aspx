<%@ Page Language="C#" AutoEventWireup="true" CodeFile="7a.aspx.cs" Inherits="DropDownSearchDemo" %>

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
            a. Creating a Web Application to display databinding using dropdownlist control.</h2>
    </center>
    <div align="center">
    
        <asp:Label ID="lblValue" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Value" onclick="Button1_Click" />
        <br />
        <br />
        <asp:DropDownList ID="ddlList" runat="server" AutoPostBack="True" DataTextField="Name" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>
