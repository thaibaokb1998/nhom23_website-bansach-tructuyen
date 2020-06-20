using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_usercontrol_productupdate : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = string.Empty;
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/book/" + FileUpload1.FileName));
            path = "~/book/" + FileUpload1.FileName;
        }
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mobileconnection"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into [product](p_name,p_desp,p_logo,p_price)values(@pname,@pdesp,@plogo,@price)";
        //cmd.Parameters.AddWithValue("@cid", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pname", TextBox2.Text);
        cmd.Parameters.AddWithValue("@pdesp", TextBox3.Text);
        cmd.Parameters.AddWithValue("@plogo", path);
        cmd.Parameters.AddWithValue("@price", TextBox5.Text);
        cmd.Connection = con;
        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            Label1.Text = "Product Added Sucessfully";

        }
    }
}