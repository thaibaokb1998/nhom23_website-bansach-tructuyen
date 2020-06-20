using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            login.Text = "Log Out";
            Label1.Text =  Session["email"].ToString() ;
            //order.Visible = true;
            singup.Visible = false;
            cart.Visible = true;
        }
    }
    protected void singup_Click(object sender, EventArgs e)
    {
        if (singup.Text == "Sign Up")
        {
            Response.Redirect("~/signup.aspx");
        }
        else
        {
            Session["signup"] = null;
            login.Text = "Sign Up";

        }
    }
    protected void login_Click1(object sender, EventArgs e)
    {
        if (login.Text == "Login")
        {
            Response.Redirect("~/login.aspx");
        }
        else
        {
            Session["email"] = null;
            login.Text = "Login";
            Response.Redirect("~/home.aspx");
        }
    }
    protected void cart_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/cart.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    
        bool flag = true;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mobileconnection"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from [product] where p_name like '%'+@tx+'%' " ;
        cmd.Parameters.AddWithValue("@tx", TextBox1.Text);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            
                Session["p_id"]= rd["p_id"].ToString();
                flag = false;
                break;
              
        }
        if(flag==false)
        {
            Response.Redirect("~/search.aspx");
        }
        else
        {
            Session["notfound"] = "Not Found";
            //ClientScript.RegisterStartupScript(GetType(), "hwa", "alert('Hello World');", true);
        }
    }
    protected void order_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/order.aspx");
    }
}