using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LibraryDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        MyClass.Class1 c=new MyClass.Class1();
        int result;
        //n1 = Convert.ToInt32(txtINum1.Text);
       // n2 = Convert.ToInt32(txtNum2.Text);
        result = c.Sub(Convert.ToInt32(txtINum1.Text), Convert.ToInt32(txtNum2.Text));
        lblResult.Text = "Addition is :" + result;
    }
    protected void btnCube_Click(object sender, EventArgs e)
    {
        int n1;
        double r;
           MyClass.Class1 c=new MyClass.Class1();
        n1 = Convert.ToInt32(txtINum1.Text);
        r = c.Cube(n1);
        lblResult.Text = "Cube is :" + r;
    }
}