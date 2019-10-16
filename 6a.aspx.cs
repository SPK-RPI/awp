using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class TextBox_Display : System.Web.UI.Page
{
    protected string str;
    SqlConnection con=new SqlConnection("Data Source=USER\\SQLEXPRESS;Initial Catalog=TYITPracticals2019;Integrated Security=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("Select * from StudentInfo", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                str += dr["RollNo"] + " " + dr["Name"] + "\n";
            }
            this.DataBind();
        }
        catch (Exception exp)
        {
 
        }

    }

    protected void txtMsg_TextChanged(object sender, EventArgs e)
    {

    }
}