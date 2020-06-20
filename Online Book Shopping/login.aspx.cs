using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    bool flag = true;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {       
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mobileconnection"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from [Signup]";
        SqlDataReader rd= cmd.ExecuteReader();
        while(rd.Read())
        {
            if(rd["Email"].ToString() == TextBox1.Text && rd["Password"].ToString()== TextBox2.Text)
            {
                flag = false;
                Session["email"] = rd["Email"].ToString();
                break;
            }
        }
        if (flag==false)
        {
            if(TextBox1.Text == "admin@admin.com")
            {
                Response.Redirect("~/adminhome.aspx");
            }
            else
            {
                Response.Redirect("~/home.aspx");
            }
        }
     }
}