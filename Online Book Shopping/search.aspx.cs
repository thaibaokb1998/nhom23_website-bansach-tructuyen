using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["notfound"]!=null)
        {
            Label1.Text = "Not Found";
            Label1.Font.Size = 20;
            Label1.Font.Bold = true;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int data = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
        Response.Redirect("~/prod_details.aspx?p_id=" + data);
    }
}