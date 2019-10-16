using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class DropDownSearchDemo : System.Web.UI.Page
{
    
    string str;
    SqlConnection con = new SqlConnection("Data Source=USER\\SQLEXPRESS;Initial Catalog=TYITPracticals2019;Integrated Security=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblValue.Text = Convert.ToString(ddlList.SelectedItem);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("Select * from StudentInfo",con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        ddlList.DataSource = dr;
        ddlList.DataTextField = "Name";
        ddlList.DataBind();
    }
}