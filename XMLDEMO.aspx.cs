using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class XMLDEMO : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        XmlReader xR = XmlReader.Create(@"http://localhost:1098/Ajax_XML/XMLFile.xml");
        while (xR.Read())
        {
            if(xR.NodeType.Equals(XmlNodeType.Element))
            {
                string s=lblMsg.Text + " ";
                lblMsg.Text=s+xR.Name;
            }
        }
        xR.Close();

    }
    protected void btnXMLWrite_Click(object sender, EventArgs e)
    {
        XmlTextWriter TW = new XmlTextWriter("E:\\Syllabus 2013\\2019-20\\Ajax_XML\\MyXML.xml",null);
        TW.WriteStartDocument();
        TW.WriteStartElement("Employee");
        TW.WriteStartElement("EName");
        TW.WriteString("Samuel Jackson");
        TW.WriteEndElement();

        TW.WriteStartElement("EDOJ");
        TW.WriteString("September 05, 1990");
        TW.WriteEndElement();

        TW.WriteEndDocument();
        TW.Close();
    }
}