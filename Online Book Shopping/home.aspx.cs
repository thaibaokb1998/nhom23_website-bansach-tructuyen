using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void singup_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/signup.aspx");
    }
    protected void login_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/login.aspx");
    }
    protected void cart_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cart.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int data = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
        Response.Redirect("~/prod_details.aspx?p_id="+data);
    }
}