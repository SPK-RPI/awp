<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LibraryDemo.aspx.cs" Inherits="LibraryDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Input 1&nbsp;
        <asp:TextBox ID="txtINum1" runat="server"></asp:TextBox>
        <br />
        <br />
        Input 2&nbsp;
        <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Take Input" />
        <br />
        <br />
        <br />
        <asp:Button ID="btnCube" runat="server" OnClick="btnCube_Click" Text="Cube" />
&nbsp;<asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
