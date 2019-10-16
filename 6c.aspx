<%@ Page Language="C#" AutoEventWireup="true" CodeFile="6c.aspx.cs" Inherits="DatalistDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <center>
        <h2>
            Practical 6</h2>
        <h2>
            c. Demonstrate the use of Datalist link control.</h2>
    </center>
    <div>
    
        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" 
            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" GridLines="Horizontal">
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <ItemTemplate>
                Roll No :
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("RollNo") %>'>'></asp:Label>
                <br />
                 Name :
                <asp:Label ID="Label2" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                <br />
                 Class:
                <asp:Label ID="Label3" runat="server" Text='<%#Eval("Class") %>'></asp:Label>
                <br />
                 Contact:
                <asp:Label ID="Label4" runat="server" Text='<%#Eval("Contact") %>'></asp:Label>
                <br />
                 Email:
                <asp:Label ID="Label5" runat="server" Text='<%#Eval("Email") %>'></asp:Label>
                <br /><br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TYITPracticals2019ConnectionString %>" 
            SelectCommand="SELECT * FROM [StudentInfo]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
