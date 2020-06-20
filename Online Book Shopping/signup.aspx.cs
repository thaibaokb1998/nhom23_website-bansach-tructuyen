using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RadioButtonList1.SelectedIndex = 1;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mobileconnection"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into [signup](Name, Age, DOB,Email, Gender, Mobile, Address, Password)values(@na,@ag, @dob,@id,@gen,@no,@co,@pass)";
        cmd.Parameters.AddWithValue("@na", TextBox1.Text); 
        cmd.Parameters.AddWithValue("@ag", TextBox2.Text);
        cmd.Parameters.AddWithValue("@id", TextBox3.Text);
        cmd.Parameters.AddWithValue("@gen", RadioButtonList1.Text);
        cmd.Parameters.AddWithValue("@no", TextBox4.Text);
        cmd.Parameters.AddWithValue("@co",TextBox7.Text);
        cmd.Parameters.AddWithValue("@pass", TextBox5.Text);
        string dob = DropDownList1.Text + DropDownList2.Text + DropDownList3.Text;
        cmd.Parameters.AddWithValue("@dob", dob);
        cmd.Connection=con;
        int a=cmd.ExecuteNonQuery();
        if(a>0)
        {
            //Response.Write("Sign up successful");
            Label2.Text = "Sign up successful Please Login to Continue";
          
            }
        }
    }
