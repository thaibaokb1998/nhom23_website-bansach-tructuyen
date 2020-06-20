using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class confirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        orderidlbl.Text = Session["Id"].ToString();

        emaillbl.Text= Session["SEmail"].ToString();
       Image1.ImageUrl = Session["SProduct_Img"].ToString();
        pnamelbl.Text = Session["SProduct_Name"].ToString();
        qtylbl.Text = Session["SQty"].ToString();
        costlbl.Text = Session["SCost"].ToString();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/modify.aspx?id="+Session["Id"].ToString());
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/payment.aspx?id=" + Session["Id"].ToString());
    }
}