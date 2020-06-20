using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class modify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bindgrid();
        }

    }

    private void bindgrid()
    {
        //throw new NotImplementedException();
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mobileconnection"].ToString();
        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from [Cart_Order] where Id="+Request.QueryString["id"].ToString();
        cmd.Connection = con;

        SqlDataReader rd = cmd.ExecuteReader();
        g1.DataSource = rd;
        g1.DataBind();
        con.Close();
    }
    protected void g1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        g1.EditIndex = e.NewEditIndex;
        bindgrid();
    }
    protected void g1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        g1.EditIndex = -1;
        bindgrid();
    }
    protected void g1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label l1 = g1.Rows[e.RowIndex].FindControl("idlbl") as Label;
        Label cl1 = g1.Rows[e.RowIndex].FindControl("costlbl") as Label;
        TextBox t1 = g1.Rows[e.RowIndex].FindControl("nametext") as TextBox;

        decimal rate = Convert.ToDecimal(t1.Text) * Convert.ToDecimal(cl1.Text);
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mobileconnection"].ToString();
        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update [Cart_Order] set Qty=@nm, cost=@cost where Id=@id1";
        cmd.Parameters.AddWithValue("@id1", l1.Text);

        cmd.Parameters.AddWithValue("@nm", t1.Text);
        cmd.Parameters.AddWithValue("@cost", rate.ToString());
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

        g1.EditIndex = -1;
        bindgrid();
        GridView1.DataBind();
      



    }


    protected void Button2_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/payment.aspx?id=" + Session["Id"].ToString());
    }
}