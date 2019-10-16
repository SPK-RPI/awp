using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _7c : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=USER\\SQLEXPRESS;Initial Catalog=TYITPracticals2019;Integrated Security=True");
    SqlCommand cmd;
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("Insert into StudentInfo values('" + txtRoll.Text + "','" + txtName.Text + "','" + txtClass.Text + "','" + txtContact.Text + "','" + txtEmail.Text +"')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            lblMsg.Text = "Records Inserted Successfully!!!";
        }
        catch (Exception exp)
        {
            lblMsg.Text = exp.ToString();
        }

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("Delete from StudentInfo where RollNo="+txtRoll.Text, con);
            con.Open();
            cmd.ExecuteNonQuery();
            lblMsg.Text = "Records Deleted Successfully!!!";
        }
        catch (Exception exp)
        {
            lblMsg.Text = exp.ToString();
        }
    }
}