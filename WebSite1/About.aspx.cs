using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Page.User.Identity.Name;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();

        TextBox1.Text = String.Empty;
    }
}
