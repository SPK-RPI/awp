<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PracticalIndex.aspx.cs" Inherits="PracticalIndex" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  <center>
  <h2>Index of Practicals</h2>

  

    <asp:Menu ID="Menu1" runat="server" StaticPopOutImageUrl="~/Images/msg_idea.gif" >
        <Items>
            <asp:MenuItem Text="6a. Data Binding in Multiline Textbox"  
                Value="6a. Data Binding in Multiline Textbox" NavigateUrl="~/6a.aspx" 
                PopOutImageUrl="~/Images/msg_kudos.gif"></asp:MenuItem>
            <asp:MenuItem Text="6b. Display Records by Using database" 
                Value="6b. Display Records by Using database" 
                PopOutImageUrl="~/Images/pollcol.gif"></asp:MenuItem>
            <asp:MenuItem Text="6c. Datalist Link Control" 
                Value="6c. Datalist Link Control" NavigateUrl="~/6c.aspx"></asp:MenuItem>
            <asp:MenuItem Text="7a. Databinding Using Dropdownlist Control" 
                Value="7a. Databinding Using Dropdownlist Control" NavigateUrl="~/7a.aspx"></asp:MenuItem>
            <asp:MenuItem Text="7b. Search Query using database" 
                Value="7b. Search Query using database" NavigateUrl="~/7b.aspx"></asp:MenuItem>
            <asp:MenuItem Text="7c. Insert and delete Records" 
                Value="7c. Insert and delete Records" NavigateUrl="~/7c.aspx"></asp:MenuItem>
            <asp:MenuItem Text="8. Working with Gridview Control" 
                Value="8. Working with Gridview Control" NavigateUrl="~/8.aspx"></asp:MenuItem>
            <asp:MenuItem Text="9. Programs to create and DLL" 
                Value="9. Programs to create and DLL"></asp:MenuItem>
        </Items>
    </asp:Menu>
    </center>
    </form>
</body>
</html>
