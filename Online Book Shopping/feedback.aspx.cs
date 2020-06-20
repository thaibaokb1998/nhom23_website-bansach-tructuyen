using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mobileconnection"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into [feedback](Name,Email,phone,design,prod_variety,extra)values(@na,@id,@no,@des,@pr,@ex)";
        cmd.Parameters.AddWithValue("@na", TextBox1.Text);
        cmd.Parameters.AddWithValue("@id", TextBox2.Text);
        cmd.Parameters.AddWithValue("@no", TextBox3.Text);
        cmd.Parameters.AddWithValue("@des", RadioButtonList1.Text);
        cmd.Parameters.AddWithValue("@pr", RadioButtonList2.Text);
        cmd.Parameters.AddWithValue("@ex", TextArea2.InnerText);
        cmd.Connection = con;
        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            Response.Write("Thank you for your feedback");

        }
    }
}