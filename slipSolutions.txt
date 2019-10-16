SLIP 1 :
Q1
Create a XML document for student database and apply the style sheet effects and
display on webpage
students.xml:
<?xml version="1.0" encoding="utf-8" ?>
<?xml-stylesheet type="text/xsl" href="style.xsl" ?>
<students>
<student>
<rollno>1</rollno>
<name>xyz</name>
</student>
<student>
<rollno>2</rollno>
<name>abc</name>
</student>
<student>
<rollno>3</rollno>
<name>erf</name>
</student>
</students>
style.xsl:
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
</head>
<body>
<table border="2">
<xsl:for-each select="students/student">
<tr>
<td>
<xsl:value-of select="name"/>
</td>
<td>
<xsl:value-of select="rollno"/>
</td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
Q2
Create a simple web page containing the student details (RollNo,
Name, Class, Phone, Email). Write a program to store the data in the
database and retrieve it using Data reader in tabular format.(this is incomplete)
Default.aspx.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
try
{
SqlConnection con = new SqlConnection("data source = initial
catalog=asp;integrated security=true");
string insqry = " insert into std_table values("+TextBox1.Text +",'"+TextBox2
+"')";
SqlCommand cmd = new SqlCommand(insqry, con);
con.Open();
cmd.ExecuteNonQuery();
con.Close();
}
catch (Exception x)
{
Response.Write(x.ToString());
}
finally
{
if (con.State == System.Data.ConnectionState.Closed)
{
}
else
{
con.close();
}
}
}
protected void Button2_Click(object sender, EventArgs e)
{
}
}
Default.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
<asp:Label ID="Label1" runat="server" Text="Rollno"></asp:Label>
</div>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
<br />
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<br />
<br />
<br />
<br />
<br />
<br />
<asp:Button ID="Button1" runat="server" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button2" runat="server" onclick="Button2_Click"
Text="Retrive" />
<br />
<br />
<br />
<br />
</form>
<p>
&nbsp;</p>
</body>
</html>
SLIP 2:
Create a simple web page with various sever controls to demonstrate
setting and use of their properties. (Example : AutoPostBack)
1.On click of a button control display the selected items from
Create a XML document for student database and apply the style sheet effects and
display on webpage.
Create a simple web page containing the student details (RollNo, Name, Class,
Phone, Email).
Write a program to store the data in the database and retrieve it using Data reader in
tabular format.
Create a simple web page with various sever controls to demonstrate setting and use
of their properties. (Example : AutoPostBack)
On click of a button control display the selected items from the listbox in a textbox.
Also in the same webpage display
the name of the selected item from the DropDownList1 in a
label. Also change the font size of the same label according
to the font size selected from the Dropdownlist2.
2. Display Image control for photo.
3. Check Boxes provides special formatting (viz. underline,
bold, italic) and Radio Buttons provides
default.aspx.cs
/*Dont Forget to change the immage location
simply drag and drop*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
}
protected void Button1_Click(object sender, EventArgs e)
{
/* This will fetch the value from listbox to textbox*/
TextBox1.Text=ListBox1.SelectedValue.ToString();
}
protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs
e)
{
/* This will fetch the value from drop down list box to textbox*/
Label1.Text = DropDownList1.SelectedValue.ToString();
}
protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs
e)
{
/*This will Change the size of text of Listbox1*/
Label1.Font.Size = Convert.ToInt32(DropDownList2.SelectedValue.ToString());
}
protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
{
if (CheckBox1.Checked)
{
Label2.Font.Underline = true;
}
else
{
Label2.Font.Underline = true;
}
}
protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
{
Label2.ForeColor = System.Drawing.Color.Red;
}
protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
{
if (CheckBox2.Checked)
{
Label2.Font.Bold = true;
}
else
{
Label2.Font.Bold = true;
}
}
protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
{
if (CheckBox3.Checked)
{
Label2.Font.Italic = true;
}
else
{
Label2.Font.Italic = true;
}
}
protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
{
Label2.ForeColor = System.Drawing.Color.Green;
}}
default.aspx
<%@ Page Language="C#" MaintainScrollPositionOnPostback="true"
AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
</div>
<asp:ListBox ID="ListBox1" runat="server">
<asp:ListItem>item1</asp:ListItem>
<asp:ListItem>item2</asp:ListItem>
<asp:ListItem>item1</asp:ListItem>
<asp:ListItem>item3</asp:ListItem>
<asp:ListItem>item4</asp:ListItem>
</asp:ListBox>
<div style="margin-left: 120px">
<asp:Button ID="Button1" runat="server" Text="Button"
onclick="Button1_Click" />
</div>
<div style="margin-left: 240px">
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</div>
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
onselectedindexchanged="DropDownList1_SelectedIndexChanged">
<asp:ListItem>item1</asp:ListItem>
<asp:ListItem>item2</asp:ListItem>
<asp:ListItem>item1</asp:ListItem>
<asp:ListItem>item3</asp:ListItem>
<asp:ListItem>item4</asp:ListItem>
</asp:DropDownList>
<div style="margin-left: 120px">
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<br />
<asp:Image ID="Image1" runat="server" Height="165px"
ImageUrl="http://localhost:59072/WebSite17/senti.jpg" Width="388px" />
<br />
<br />
<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True"
onselectedindexchanged="DropDownList2_SelectedIndexChanged">
<asp:ListItem>10</asp:ListItem>
<asp:ListItem>12</asp:ListItem>
<asp:ListItem>13</asp:ListItem>
</asp:DropDownList>
</div>
<asp:Label ID="Label2" runat="server" Text="HelloFriends"></asp:Label>
<br />
<div style="margin-left: 240px">
<asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True"
oncheckedchanged="CheckBox1_CheckedChanged" Text="underline" />
</div>
<div style="margin-left: 360px">
<asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True"
oncheckedchanged="CheckBox2_CheckedChanged" Text="bold" />
<asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True"
oncheckedchanged="CheckBox3_CheckedChanged" Text="italic" />
<asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True"
GroupName="g1" oncheckedchanged="RadioButton1_CheckedChanged"
Text="red" />
<asp:RadioButton ID="RadioButton2" runat="server" GroupName="g1"
oncheckedchanged="RadioButton2_CheckedChanged" Text="green" />
</div>
</form>
</body>
</html>
Q2 Create a simple web page to count the number of times the current
webpage is submitted to the server onclick event of a Button.
Default.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" /
>
<p>
&nbsp;</p>
&nbsp;&nbsp;&nbsp;&nbsp; submit count =<asp:Label ID="Label2" runat="server"
Text="0"></asp:Label>
</form>
</body>
</html>
Default.aspx.cs.
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
if (!this.IsPostBack)
ViewState["submitcount"] = 0;
}
protected void Button1_Click(object sender, EventArgs e)
{
ViewState["submitcount"] = (int)ViewState["submitcount"] + 1;
Label2.Text = ViewState["submitcount"].ToString();
}
}
SLIP 3 :
Create simple application to perform following operations
i. Finding factorial Value
ii. Money Conversion
iii. Cube of given number
iv Generate Fibonacci series
/*
* C# Program to Generate the Factorial of Given Number
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
namespace factorial
{
class Program
{
static void Main(string[] args)
{
int i, number, fact;
Console.WriteLine("Enter the Number");
number = int.Parse(Console.ReadLine());
fact = number;
for (i = number - 1; i >= 1; i--)
{
fact = fact * i;
}
Console.WriteLine("\nFactorial of Given Number is: " + fact);
Console.ReadLine();
}
}
}
/* FIBNONACCI*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace Fibonacci
{
class Fibonacci
{
static void Main(string[] args)
{
int i,a=0,b=1,c,d;
Console.WriteLine("Enter the limitation of fibonacci =");
d = Convert.ToInt32(Console.ReadLine());
Console.WriteLine(a);
Console.WriteLine(b);
for(i=3;i<=d;i++)
{
c = a + b;
Console.WriteLine(c);
a = b;
b = c;
}
Console.ReadKey();
}
}
}
/*Money Coversion*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
namespace Money_Conversion
{
class Program
{
static void Main(string[] args)
{
int choice;
Console.Write("Enter your choice:\n 1- US DOLLAR\n 2-EURO \n 3- YAN \n 4-
POUNDS\n Enter:");
choice = int.Parse(Console.ReadLine());
switch (choice)
{
case 1 :
Double dollar, rupee, val;
Console.Write("Enter Dollar Amount:");
dollar = Double.Parse(Console.ReadLine());
Console.WriteLine("Enter Dollar Value:");
val = Double.Parse(Console.ReadLine());
rupee = dollar * val;
Console.WriteLine("Dollar to Rupee Conversion:" + rupee);
break;
case 2 :
Double euro, rupee1, val1;
Console.Write("Enter Euro Amount:");
euro = Double.Parse(Console.ReadLine());
Console.WriteLine("Enter Euro Value:");
val1 = Double.Parse(Console.ReadLine());
rupee1 = euro * val1;
Console.WriteLine("Yan to Rupee Conversion:" + rupee1);
break;
case 3:
Double Yan, rupee2, val2;
Console.Write("Enter Yan Amount:");
Yan = Double.Parse(Console.ReadLine());
Console.WriteLine("Enter Yan Value:");
val2 = Double.Parse(Console.ReadLine());
rupee2 = Yan * val2;
Console.WriteLine("Yan to Rupee Conversion:" + rupee2);
break;
case 4: Double pound, rupee3, val3;
Console.Write("Enter Pounds Amount:");
pound = Double.Parse(Console.ReadLine());
Console.WriteLine("Enter Pounds Value:");
val3 = Double.Parse(Console.ReadLine());
rupee3 = pound * val3;
Console.WriteLine("Dollar to Rupee Conversion:" + rupee3);
break;
default:
Console.Write("Wrong Choice");
break;
} Console.ReadKey();
}
}
}
/*CUBE_OF_DIGIT*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
namespace p
{
class reverse
{
static void Main(string[] args)
{
int no, c;
Console.WriteLine("Enter the number=");
no = Convert.ToInt32(Console.ReadLine());
c = no * no * no;
Console.WriteLine("cube =" + c);
Console.ReadKey();
}
}
}
Q2 Demonstrate the use of Calendar control to perform following
operations.
a) Display messages in a calendar control
b) Display vacation in a calendar control
c) Selected day in a calendar control using style
d) Difference between two calendar dates
Default.aspx:
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
<asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC"
BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest"
Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399"
Height="200px"
ondayrender="Calendar1_DayRender"
onselectionchanged="Calendar1_SelectionChanged" ShowGridLines="True"
Width="220px">
<DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
<NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
<OtherMonthDayStyle ForeColor="#CC9966" />
<SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
<SelectorStyle BackColor="#FFCC66" />
<TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt"
ForeColor="#FFFFCC" />
<TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
</asp:Calendar>
<asp:Calendar ID="Calendar2" runat="server" BackColor="White"
BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-
Names="Verdana"
Font-Size="9pt" ForeColor="Black" Height="191px"
NextPrevFormat="ShortMonth"
Width="230px">
<DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333"
Height="8pt" />
<DayStyle BackColor="#CCCCCC" />
<NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
<OtherMonthDayStyle ForeColor="#999999" />
<SelectedDayStyle BackColor="#333399" ForeColor="White" />
<TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True"
Font-Size="12pt" ForeColor="White" Height="12pt" />
<TodayDayStyle BackColor="#999999" ForeColor="White" />
</asp:Calendar>
<asp:Button ID="Button1" runat="server" onclick="Button1_Click"
Text="Button" />
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</div>
</form>
</body>
</html>
Default.aspx.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
}
protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
{
if (e.Day.Date.Year == 2019 && e.Day.Date.Month == 10 && e.Day.Date.Day ==
2)
{
Label l1 = new Label();
l1.Text = "<br>Gandhi Jayanti";
e.Cell.Controls.Add(l1);
}
if (e.Day.Date.Year == 2019 && e.Day.Date.Month == 10 && e.Day.Date.Day ==
17)
{
Label l2 = new Label();
l2.Text = "<br>Project Presentation";
e.Cell.Controls.Add(l2);
}
}
protected void Calendar1_SelectionChanged(object sender, EventArgs e)
{
Calendar1.SelectedDayStyle.BackColor = System.Drawing.Color.Yellow;
Calendar1.SelectedDayStyle.ForeColor = System.Drawing.Color.Red;
}
protected void Button1_Click(object sender, EventArgs e)
{
TimeSpan ts = Calendar1.SelectedDate - Calendar2.SelectedDate;
Label1.Text = ts.TotalDays.ToString();
}
}
SLIP 4
1. Create Web Form to demonstrate use of User Control. Create footer
named user control having copyright reserved (ex. “©company
name”) and use it in a webpage.
Take empty website , in solution explorer right click on
website -> add new item- >select
Web User Control (extension is ascx) and again default.aspx from list
WebControlUser.ascx.cs*
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class WebUserControl : System.Web.UI.UserControl
{
protected void Page_Load(object sender, EventArgs e)
{
lblf.Text = "Copy right by Microsoft corporation";
}
}
WebuserControl.ascx
<%@ Control Language="C#" AutoEventWireup="true"
CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>
<asp:Label ID="lblf" runat="server" ForeColor="Blue"
></asp:Label>
Default.aspx.c
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<%@ Register TagPrefix="Asp" TagName="Footer" Src="~/WebUserControl.ascx"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
<Asp:Footer id="f1" runat="server"></Asp:Footer>
</div>
</form>
</body>
</html>
2. Create Web Form to demonstrate use of Ad rotator Control with five
advertisements. Also demonstrate how keyword filter works.
Add new item as XML file and add following code in file
The following code illustrates an advertisement file XMLfile.xml:
XML FILE.XML
<Advertisements>
<Ad>
<ImageUrl>Desert.jpg</ImageUrl>
<NavigateUrl>/*PLEASE CHANGE/*</</NavigateUrl>
<AlternateText>book desert show</AlternateText>
<Impressions>5</Impressions>
<Keyword>desert </Keyword>
</Ad>
<Ad>
<ImageUrl>/*PLEASE CHANGE/*</ImageUrl>
<NavigateUrl>www.Koala.com</NavigateUrl>
<AlternateText>book desert show</AlternateText>
<Impressions>5</Impressions>
<Keyword>desert </Keyword>
</Ad>
</Advertisements>
Warning all Tags begins with Capital letter and if spelling mistake then no out put no
error
All tags must finish in same line like
<AlternateText>book desert show</AlternateText>
Not as follows
<AlternateText>book desert show
</AlternateText>
Now add adrotoator and change following properties of ad rotator
Height =60
Width=600
AdvertisementFile - > select name of XML file you have created.
Run
To change image Refresh so it will display . in impressions of xml file use different
number , like 1 , 5 , 7 etc. More impressions means it will display more time as
compare to
other
Default.aspx
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
<asp:AdRotator ID="AdRotator1" runat="server"
DataSourceID="XmlDataSource1" />
<br />
</div>
<asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/
XMLFile.xml">
</asp:XmlDataSource>
</form>
</body>
</html>
Slip 5
Q1 Create XML file employees with nodes (eid, ename, edept, salary). Bind the eid
and ename to a dropdownlist and the ename should be in the ascending order
XMLfile.xml
<?xml version="1.0" encoding="utf-8" ?>
<employees>
<employee>
<eid>1</eid>
<ename>Abhishek</ename>
<edept>IT</edept>
<salary>5000</salary>
</employee>
<employee>
<eid>2</eid>
<ename>Siddhesh</ename>
<edept>IT</edept>
<salary>4000</salary>
</employee>
<employee>
<eid>3</eid>
<ename>Akshita</ename>
<edept>IT</edept>
<salary>6000</salary>
</employee>
<employee>
<eid>4</eid>
<ename>Ashu</ename>
<edept>IT</edept>
<salary>9000</salary>
</employee>
</employees>
default.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
<asp:DropDownList ID="DropDownList1" runat="server">
</asp:DropDownList>
</div>
</form>
</body>
</html>
default.aspx.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
DataSet empds = new DataSet();
empds.ReadXml(Server.MapPath("")+"\\XMLFile.xml");
empds.Tables[0].DefaultView.Sort = "ename";
DropDownList1.DataSource = empds.Tables[0];
DropDownList1.DataTextField = "ename";
DropDownList1.DataValueField = "eid";
DropDownList1.DataBind();
}
}
Q2 Create simple web page that takes a number as input and display it
four times in a row (separated by blank spaces), and then four times
in the next row, with no separation.
Like-
Enter a digit: 22
Expected Output:
22 22 22 22
22222222
22 22 22 22
22222222
default.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
</div>
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
<br />
<br />
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<br />
</form>
</body>
</html>
default.aspx.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
}
protected void Button1_Click(object sender, EventArgs e)
{
Label1.Text="";
int a = Convert.ToInt32(TextBox1.Text);
for (int i = 1; i <= 10; i++)
{
if (i % 2 == 0)
{
for (int j = 1; j <= 4; j++)
{
Label1.Text += a.ToString();
}
Label1.Text += "<br>";
}
else
{
for (int j = 1; j <= 4; j++)
{
Label1.Text += a.ToString()+" ";
}
Label1.Text += "<br>";
}
}
}
}
Slip 6
Q1
Create a simple web page to display the Date properties (year,
month, day, hour, minute, second, millisecond etc.) as well as to
display the number of days of the year between two specified years.
Default.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
from date
<asp:TextBox ID="txtfrom" runat="server"></asp:TextBox>
<br />
<br /> to date
<asp:TextBox ID="txtto" runat="server"></asp:TextBox>
<br />
<br />
<br />
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
<br />
<br />
<br />
<br />
<asp:TextBox ID="TextBox3" runat="server" Height="118px" TextMode="MultiLine"
Width="176px"></asp:TextBox>
</div>
</form>
</body>
</html>
Default.aspx.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
}
protected void Button1_Click(object sender, EventArgs e)
{
DateTime FromYear = Convert.ToDateTime(txtfrom.Text); DateTime ToYear =
Convert.ToDateTime(txtto.Text);
TimeSpan objTimeSpan = ToYear - FromYear;
//Creating object of TimeSpan Class TimeSpan objTimeSpan = ToYear -
FromYear;
//years
int Years = ToYear.Year - FromYear.Year;
//months
int month = ToYear.Month - FromYear.Month;
//TotalDays
double Days = Convert.ToDouble(objTimeSpan.TotalDays);
//Total Months
int TotalMonths = (Years * 12) + month;
//Total Hours
double TotalHours = objTimeSpan.TotalHours;
//Total Minutes
double TotalMinutes = objTimeSpan.TotalMinutes;
//Total Seconds
double TotalSeconds = objTimeSpan.TotalSeconds;
//Total Mile Seconds
double TotalMileSeconds = objTimeSpan.TotalMilliseconds;
//Assining values to td tags
TextBox3.Text = Years + "Year " + month + " Months" + "\n";
TextBox3.Text += "Total months "
+ Convert.ToString(TotalMonths) + "\n";
TextBox3.Text += "Total Days "
+ Convert.ToString(Days) + "\n";
TextBox3.Text += "Total Hours " + Convert.ToString(TotalHours) + "\n";
TextBox3.Text += "Total Minutes" + Convert.ToString(TotalMinutes) + "\n";
TextBox3.Text += "Total Seconds" + Convert.ToString(TotalSeconds) + "\n";
TextBox3.Text += "Total Miliseconds" + Convert.ToString(TotalMileSeconds) +
"\n";
}
}
Q2
Create a web page containing the student details (RollNo, Name,
Class, Phone, Email) and show result using Databinding and
dropdownlist control.
solution -> Make one default.aspx
MAKE ONE sql db
add table and save(ctrl+s)
show table data -> add data
go to deafult.aspx
drag and drop gridview
drag and dropdownlist
In dropdown enable autopostback -> and add new soruce -> add sql table next
after adding go to same option in gridview -> select connection and database and
now in where clause select rollno = rollno, Control and dropdownlist
and then next next
go and run deafult.aspx, Bingoo thanks me later
Slip 7
Q1
Create a simple web page to demonstrate all string operations.
Default.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<div>
</div>
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
</form>
</body>
</html>
Default.aspx.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
}
protected void Button1_Click(object sender, EventArgs e)
{
string st = TextBox1.Text;
Response.Write(st.ToUpper()+"<br>");
Response.Write(st.ToLower() + "<br>");
Response.Write(st.Substring(0,5) + "<br>");
Response.Write(st.IndexOf("llo") + "<br>");
Response.Write(st.Insert(1, "x") + "<br>");
Response.Write(st.StartsWith("hel") + "<br>");
Response.Write(st.Split(' ')[0] + "<br>");
}
}
Q2
Design an asp.net webpage with 2 groups of Radio Buttons, DropDownList,
label and TextBox
1.On click of Radio Buttons each at the same time from two
different groups, change the font- size and font-face of the
labelʼs Text.
2.Also on the same webpage show that, on selecting a country
name from the dropdown list, its respective country code gets
displayed in a textbox.
1.Default.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
</div>
<asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True"
GroupName="g1" oncheckedchanged="Page_Load" Text="hshs" />
<asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True"
GroupName="g1" oncheckedchanged="RadioButton1_CheckedChanged"
Text="ssssas" />
<asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True"
GroupName="g1" oncheckedchanged="RadioButton1_CheckedChanged"
Text="aassasas" />
<br />
<br />
<br />
<asp:RadioButton ID="RadioButton4" runat="server" AutoPostBack="True"
GroupName="p1" oncheckedchanged="fontchange" Text="11" />
<asp:RadioButton ID="RadioButton5" runat="server" AutoPostBack="True"
GroupName="p1" oncheckedchanged="fontchange" Text="10" />
<asp:RadioButton ID="RadioButton6" runat="server" AutoPostBack="True"
GroupName="p1" oncheckedchanged="fontchange" Text="12" />
<br />
<br />
<asp:Label ID="Label1" runat="server" Text="Helo AWP"></asp:Label>
</form>
</body>
</html>
Default.aspx.cs [Properties -> CHeckchange -> "Give name of method" ->
fontchange]
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
}
protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
{
Label1.Font.Name = ((RadioButton)sender).Text;
}
protected void fontchange(object sender, EventArgs e)
{
Label1.Font.Size = Convert.ToInt32( ((RadioButton)sender).Text);
}
}
2. Now Select one drop down, dont forget for autopostback,
add items in it, after adding items, take one textbox and copy paste this code in the
dropdown method
{
TextBox1.Text =DropDownList.SelectedValue.ToString();
}
Slip 8
Q1.
Create a delegate del1. Create display1() and display2() static methods.
Create a simple application to call these two methods by the through the
delegate.
Program.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
delegate int del1(int n);
namespace Delegates
{
class DelegateTest
{
static int num = 10;
public static int display1(int p)
{
num += p;
return num;
}
public static int display2(int q)
{
num *= q;
return num;
}
static void Main(string[] args)
{
del1 m1 = new del1(display1);
del1 m2 = new del1(display2);
m1(25);
Console.WriteLine("Value of Num:{0}", num);
m2(5);
Console.WriteLine("Value of Num:{0}", num);
Console.ReadKey();
}
}
}
Q2.
Create a simple web page to show how to write and read a cookie from a client's
computer.
default.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
<br />
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="write" /
>
<br />
<br />
<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="read" /
>
</div>
</form>
</body>
</html>
default.aspx.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
}
protected void Button1_Click(object sender, EventArgs e)
{
HttpCookie cookie1 = new HttpCookie("user1", TextBox1.Text);
Response.Cookies.Add(cookie1);
}
protected void Button2_Click(object sender, EventArgs e)
{
TextBox1.Text=Request.Cookies["user1"].Value;
}
}
Slip 9
Q1.
Create a web application to demonstrate use of HtmlEditorExtender Ajax control.
Create one default.aspx
'In that select a textbox and, in properties Textmode-> keep multiline
Click on small arrow button on right side on textbox and add extender -> Htmleditor
Save and run DONE
if any error <EnableSanitization="false">
Q2.
Create a web application to demonstrate use of Master Page with applying Styles
and Themes
for page beautification.
You need one master page, one default.aspx and one add theme and use this code
default.aspx
<%@ Page Language="C#" EnableTheming="true" Theme="Theme1"
AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
fsdfddsfaafdsf
</div>
</form>
</body>
</html>
Masterpage.master
<%@ Master Language="C#" AutoEventWireup="true"
CodeFile="MasterPage.master.cs" Inherits="MasterPage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<asp:ContentPlaceHolder id="head" runat="server">
</asp:ContentPlaceHolder>
</head>
<body>
<form id="form1" runat="server">
<div class="head" style="border: medium solid #000000">
head
</div>
<asp:ContentPlaceHolder id="ContentPlaceHolder1" runat="server">
</asp:ContentPlaceHolder>
<div class ="foot">
foot
</div>
</form>
</body>
</html>
Theme/Stylesheet.css
body
{
border-style: groove;
border-color: #FFFF00;
}
.head
{
border-style: solid;
border-color: #FF0000;
}
.foot
{
border-style: solid;
border-color: #FF0000;
}
Slip 10
Q1
Create a web applications to demonstrate Form Security and Windows Security with
proper Authentication and Authorization properties.
NA
Q2.
Create a web application to demonstrate GridView paging and Creating own table
format using GridView.
create one sql database
then table details in table till 15 row or cols
after that select one grid view in grid view enable the paging and after that on > this
arrow click add new conectiion,
next next next.
and run deault.aspx
Slip 11
Q1
Create a web application to bind data in a multiline textbox by querying in another
textbox.
default.ascx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
<asp:TextBox ID="TextBox1" Text='<%# textdata %>' runat="server"
Height="73px" TextMode="MultiLine"
Width="204px" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True"
ontextchanged="TextBox2_TextChanged"></asp:TextBox>
<br />
<br />
<br />
</div>
</form>
</body>
</html>
default.aspx.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
public String textdata;
protected void Page_Load(object sender, EventArgs e)
{
}
protected void TextBox2_TextChanged(object sender, EventArgs e)
{
textdata = TextBox2.Text;
this.DataBind();
}
}
Q2.
Write a program to create a DLL to print a factorial of a number.
Create a Class Library
File_>newproject->SelectClassLibrary->clickok
class library
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
namespace ClassLibrary1
{
public class Class1
{
public String fact(int x)
{
int d = 1;
for (int i = 1; i < x; i++)
{
d = d * i;
}
return d.ToString();
}
}
}
Clickondebug->buildsolutiontocreatDLL
FileDLLiscreatedinfolderbin
Then minimize and open new visual studIO
Go to Console Application
Copy paste code
Now Rightclick on right side, Cosole Application and add reference of your Dll file
and the rub this code
Consoleapplication.
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ClassLibrary1;
namespace ConsoleApplication2
{
class Program
{
static void Main(string[] args)
{
ClassLibrary1.Class1 ob = new ClassLibrary1.Class1();
int z =Convert.ToInt32(ob.fact(5));
Console.WriteLine("Factorial is" +z);
Console.ReadKey();
}
}
}
Slip 12
Q1 Write an Application to:
1.Generate Fibonacci series
2.Test for prime numbers
3.Test for vowels
4.Reverse a number
/*fibo*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace Fibonacci
{
class Fibonacci
{
static void Main(string[] args)
{
int i,a=0,b=1,c,d;
Console.WriteLine("Enter the limitation of fibonacci =");
d = Convert.ToInt32(Console.ReadLine());
Console.WriteLine(a);
Console.WriteLine(b);
for(i=3;i<=d;i++)
{
c = a + b;
Console.WriteLine(c);
a = b;
b = c;
}
Console.ReadKey();
}
}
}
/*prime*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
namespace prime1
{
class prime
{
static void Main(string[] args)
{
int i, no;
int m, f = 0;
Console.WriteLine("Enter the number=");
no = Convert.ToInt32(Console.ReadLine());
m = no / 2;
for (i = 2; i <= m; i++)
{
if (no % i == 0)
{
Console.WriteLine("it is not prime");
f = 1;
break;
}
}
if(f==0)
{
Console.WriteLine("it is prime ");
}
Console.ReadKey();
}
}
}
/*reverse*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
namespace p
{
class reverse
{
static void Main(string[] args)
{
int no, temp, rev=0;
Console.WriteLine("Enter the number=");
no = Convert.ToInt32(Console.ReadLine());
while (no > 0)
{
temp = no % 10;
rev = (rev * 10) + temp;
no = no / 10;
}
Console.WriteLine("reverse=" + rev);
Console.ReadKey();
}
}
}
/*vowel*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
namespace vowel
{
class vowel
{ static void Main(string[] args)
{
char ch;
Console.WriteLine("enter no=");
ch = Convert.ToChar(Console.ReadLine());
if(ch=='a' || ch=='e' || ch=='i' || ch=='o' || ch=='u' )
{
Console.WriteLine("It is wovel");
}
else
{
Console.WriteLine("Is is not wovel");
}
Console.ReadKey();
}
}
}
Q2.
Create a table with records and retrieve those using Disconnected
data access in a Gridview.
-> Create a sql database
add table and show table data and put tsome details
and create a default.aspx in that (grid view)
and the add new data source in gridview right corner of table
and then add sql database adn run bingo!
SLIP 13
Q1
Create a simple web page to demonstrate use of built in DivideByZeroException and
IndexOutOfRangeException
Default.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
enter no 1&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox1"
runat="server"></asp:TextBox>
<br />
<br />
<br />
enter no 2&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox2"
runat="server"></asp:TextBox>
<br />
<br />
<br />
answer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label1" runat="server"
Text="Label"></asp:Label>
<br />
<br />
<asp:Button ID="Button1" runat="server"
onclick="Button1_Click" Text="Button" />
<asp:Button ID="Button2" runat="server"
onclick="Button2_Click" Text="Button" />
<br />
</div>
</form>
</body>
</html>
Default.aspx.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
protected void Button1_Click(object sender,
EventArgs e)
{
try
{
int a, b;
a = Convert.ToInt32(TextBox1.Text);
b = Convert.ToInt32(TextBox2.Text);
int c = a / b;
Label1.Text = c.ToString();
}
catch (DivideByZeroException)
{
Label1.Text = "can't divide by zero";
}
}
protected void Button2_Click(object sender,
EventArgs e)
{
try
{
int[] a = { 6, 7 };
Label1.Text = a[2].ToString();
}
catch (IndexOutOfRangeException)
{
Label1.Text = "out of range";
}
}
}
Q2
Create a simple web page to show data in Tree view control and datalist using web.
Sitemap file containing navigation information.
Create a Student XML
<?xml version="1.0" encoding="utf-8" ?>
<studentdetail>
<student>
<sid>1</sid>
<sname>greatperson</sname>
<sclass>TYIT</sclass>
</student>
<student>
<sid>2</sid>
<sname>Sonali</sname>
<sclass>TYCS</sclass>
</student>
<student>
<sid>3</sid>
<sname>hari </sname>
<sclass>TYIT</sclass>
</student>
<student>
<sid>4</sid>
<sname>Vedshree</sname>
<sclass>TYCS</sclass>
</student>
</studentdetail>
Default.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
Treeview control navigation:<asp:TreeView ID = "TreeView1" runat = "server" Width =
"150px" ImageSet="Arrows"
onselectednodechanged="TreeView1_SelectedNodeChanged">
<HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
<Nodes>
<asp:TreeNode Text = "ASP.NET Practs" Value = "New Node">
<asp:TreeNode Text = "Calendar Control" Value = "RED" NavigateUrl="~/
Default.aspx">
</asp:TreeNode>
<asp:TreeNode Text = "Constructor Overloading" Value = "GREEN"
NavigateUrl="~/Default.aspx"></asp:TreeNode>
<asp:TreeNode NavigateUrl="~/Default.aspx" Text="Inheritance"
Value="BLUE"></asp:TreeNode>
<asp:TreeNode NavigateUrl="~/Default.aspx" Text="Class Properties" Value="Class
Properties"></asp:TreeNode>
</asp:TreeNode>
</Nodes>
<NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black"
HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
<ParentNodeStyle Font-Bold="False" />
<SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD"
HorizontalPadding="0px" VerticalPadding="0px" />
</asp:TreeView>
<br />
Fetch Datalist Using XML data : </div>
<asp:DataList ID="DataList1" runat="server">
<ItemTemplate>
<table class = "table" border="1">
<tr>
<td>Roll Num : <%# Eval("sid") %><br />
Name : <%# Eval("sname") %><br />
Class : <%# Eval("sclass")%>
</td>
</tr>
</table>
</ItemTemplate>
</asp:DataList>
<br/>
</form>
</body>
</html>
Default.aspx.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
if (!IsPostBack)
{
BindData();
}
}
protected void BindData()
{
DataSet ds = new DataSet();
ds.ReadXml(Server.MapPath("stdetail.xml"));
if (ds != null && ds.HasChanges())
{
DataList1.DataSource = ds;
DataList1.DataBind();
}
else
{
DataList1.DataBind();
}
}
protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
{
}
protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
{
}
}
SLIP 14
Q1
Display the no. of visitors on a given web page.
/*Create webpge and then default.aspx
and then create add -> new global asax and ctl c + ctrl v/*
Default.aspx.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
Label1.Text = "" + Application["Nov"];
}
}
Global.asax
<%@ Application Language="C#" %>
<script runat="server">
void Application_Start(object sender, EventArgs e)
{
Application["Nov"] = 0;
}
void Application_End(object sender, EventArgs e)
{
// Code that runs on application shutdown
}
void Application_Error(object sender, EventArgs e)
{
// Code that runs when an unhandled error occurs
}
void Session_Start(object sender, EventArgs e)
{
Application.Lock();
Application["Nov"] = (int)Application["Nov"] + 1 ;
Application.UnLock();
}
void Session_End(object sender, EventArgs e)
{
// Code that runs when a session ends.
// Note: The Session_End event is raised only when the sessionstate mode
// is set to InProc in the Web.config file. If session mode is set to StateServer
// or SQLServer, the event is not raised.
}
</script>
default.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</div>
</form>
</body>
</html>
Q2
Create a registration form having text fields for accepting, Name, Age, Email,
Address and Mobile number. Perform the following
validations for the same:
All fields need to be filled compulsorily
2.Name should contain only alphabets and should not be more
than 25 characters long
3.Validate email and mobile number appropriately
4.Age should be between 18 and 32 only.
Include submit and cancel buttons. On click of submit button, open
a new page and display all the information entered by the user and
on click of cancel button, all text fields should be cleared.
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title></title>
<style type="text/css">
.style1
{
height: 30px;
}
</style>
</head>
<body>
<form id="form1" runat="server">
<div>
<table style="width:100%;">
<tr>
<td class="style1">
Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox1" runat="server" Width="202px"
></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></
asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1"
runat="server"
ControlToValidate="TextBox1" ErrorMessage="Only Character and not
more than 25"
ForeColor="Red" ValidationExpression="[a-zA-Z]{5,25}"></
asp:RegularExpressionValidator>
</td>
<td class="style1">
</td>
<td class="style1">
</td>
</tr>
<tr>
<td>
Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox2" runat="server" Width="59px"></
asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></
asp:RequiredFieldValidator>
<asp:RangeValidator ID="RangeValidator1" runat="server"
ControlToValidate="TextBox2" ErrorMessage="18 - 25"
ForeColor="Red"
MaximumValue="25" MinimumValue="18" Type="Integer"></
asp:RangeValidator>
</td>
<td>
&nbsp;</td>
<td>
&nbsp;</td>
</tr>
<tr>
<td>
Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox3" runat="server" Width="253px"></
asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></
asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2"
runat="server"
ControlToValidate="TextBox3" ErrorMessage="Invalid email"
ForeColor="Red"
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]
\w+)*"></asp:RegularExpressionValidator>
</td>
<td>
&nbsp;</td>
<td>
&nbsp;</td>
</tr>
<tr>
<td>
Address&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></
asp:RequiredFieldValidator>
</td>
<td>
&nbsp;</td>
<td>
&nbsp;</td>
</tr>
<tr>
<td>
PhoneNo&nbsp;&nbsp;
<asp:TextBox ID="TextBox5" runat="server" Width="140px"></
asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></
asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator3"
runat="server"
ControlToValidate="TextBox5" ErrorMessage="Invalid phoneNo"
ForeColor="Red"
ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
</td>
<td>
&nbsp;</td>
<td>
&nbsp;</td>
</tr>
<tr>
<td>
<asp:Button ID="Button1" runat="server" Text="Submit"
onclick="Button1_Click" />
<asp:Button ID="Button2" runat="server" Text="Clear"
onclick="Button2_Click" />
</td>
<td>
&nbsp;</td>
<td>
&nbsp;</td>
</tr>
</table>
</div>
</form>
</body>
</html>
Deault.aspx.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
}
protected void Button2_Click(object sender, EventArgs e)
{
TextBox1.Text = "";
TextBox2.Text = "";
TextBox3.Text = "";
TextBox4.Text = "";
TextBox5.Text = "";
}
protected void Button1_Click(object sender, EventArgs e)
{
Response.Redirect("Default2.aspx?na=" + TextBox1.Text + "&ag=" +
TextBox2.Text + "&em=" + TextBox3.Text + "&ad=" + TextBox4.Text + "&ph=" +
TextBox5.Text);
}
}
SLIP 15
Q1
Create a webpage with multiline textbox and two buttons, viz. saveContents and
loadContents.
On click of saveContents button, contents from the textbox should be retained and
on click of loadContents button,
the previously saved contents should be displayed back on the textbox.
default.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
<asp:TextBox ID="TextBox1" runat="server" Height="160px"
TextMode="MultiLine"
Width="196px"></asp:TextBox>
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save " /
>
<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="load" /
>
</div>
</form>
</body>
</html>
default.aspx.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
}
protected void Button1_Click(object sender, EventArgs e)
{
ViewState["data"] = TextBox1.Text;
TextBox1.Text = "";
}
protected void Button2_Click(object sender, EventArgs e)
{
TextBox1.Text = ViewState["data"].ToString();
}
}
Q2.
Store 3 objects of the furniture class having 3 data members (name, manufacturer,
and cost) in 3 session objects.
Display a panel to include a listbox displaying the names of all three furniture objects,
and a button named “MoreInformation”.
On click of the button retrieve the selected object (from listbox) information and
display it in a label.
Default.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div style="margin-left: 280px">
<asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="201px"
onselectedindexchanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</div>
<div style="margin-left: 320px">
<asp:Button ID="Button1" runat="server" Text="Button"
onclick="Button1_Click" />
</div>
<div>
</div>
</form>
</body>
</html>
Default.aspx.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
if (!IsPostBack)
{
Session["s1"]=new Furniture("chair","xyz","1000");
Session["s2"]=new Furniture("chair1","eez","50");
Session["s3"]=new Furniture("chair2","xez","600");
ListBox1.Items.Add(((Furniture)Session["s1"]).name);
ListBox1.Items.Add(((Furniture)Session["s2"]).name);
ListBox1.Items.Add(((Furniture)Session["s3"]).name);
}
}
protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
{
}
protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
{
}
protected void Button1_Click(object sender, EventArgs e)
{
if(ListBox1.SelectedIndex != -1)
{
if(ListBox1.SelectedIndex == 0 )
{
Label1.Text = ((Furniture)Session["s1"]).mani;
Label2.Text = ((Furniture)Session["s1"]).cost;
}
else if(ListBox1.SelectedIndex == 1)
{
Label1.Text = ((Furniture)Session["s2"]).mani;
Label2.Text = ((Furniture)Session["s2"]).cost;
}
else if(ListBox1.SelectedIndex == 2)
{
Label1.Text = ((Furniture)Session["s3"]).mani;
Label2.Text = ((Furniture)Session["s3"]).cost;
}
}
}
}
class Furniture
{
public string name;
public string mani;
public string cost;
public Furniture(string name, string mani, string cost)
{
this.name = name;
this.mani = mani;
this.cost = cost;
}
}
SLIP 16
Q1.
Write a program in C# to demonstrate multiple inheritance using interfaces.
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace Interfaces
{
interface Addition
{
void add(double num1, double num2);
}
interface Multiplication
{
void mul(double num1, double num2);
}
public class computation : Addition, Multiplication
{
double n1 = 120, n2 = 12.239;
double Result;
public void add(double n1, double n2)
{
Result = n1 + n2;
Console.WriteLine("Addition is:{0}", Result);
}
public void mul(double n1, double n2)
{
Result = n1 * n2;
Console.WriteLine("Multiplication is:{0}", Result);
}
}
class Program
{
static void Main(string[] args)
{
computation c = new computation();
c.add(15, 20);
c.mul(20, 15);
Console.ReadLine();
}
}
}
Q2.
Create a table with records and retrieve those using Disconnected
data access in a Gridview.
-> Create an sql database
add table and show table data and put tsome details
and create a default.aspx in that (grid view)
and the add new data source in gridview right corner of table
and then add sql database adn run bingo!
