<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XMLDEMO.aspx.cs" Inherits="XMLDEMO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <asp:Button ID="btnXMLRead" runat="server" onclick="Button1_Click" Text="Read XML!!" 
            Width="201px" BackColor="#000099" Font-Bold="True" 
            Font-Names="Copperplate Gothic Bold" ForeColor="White" Height="54px" />
        <br />
        <br />
        <br />
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#0066FF"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnXMLWrite" runat="server" Text="XML Write!!!" Width="190px" 
            BackColor="#000099" Font-Bold="True" Font-Names="Copperplate Gothic Bold" 
            ForeColor="White" Height="71px" onclick="btnXMLWrite_Click" 
            style="margin-left: 0px" />
        </center>
    
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    </form>
</body>
</html>
