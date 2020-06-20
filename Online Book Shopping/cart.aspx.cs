using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cart : System.Web.UI.Page
{
    int total_cost = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("home.aspx");
    //}
    //protected void Button2_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("payment.aspx");
    //}
    //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.RowType==DataControlRowType.Footer)
    //    {
    //        Label l1 = (Label)e.Row.FindControl("l1"); 
    //        foreach (GridViewRow item in GridView1.Rows)
    //        {
    //            int cost =Convert.ToInt32(item.Cells[5].Text);
    //            total_cost = total_cost + cost;
    //        }
    //        l1.Text = Convert.ToString(total_cost);
    //        Session["cost"] = l1.Text;
    //    }
    //}
}