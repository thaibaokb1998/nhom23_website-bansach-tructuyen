using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_upload : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = string.Empty;
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/images/" + FileUpload1.FileName));
            path = "~/images/" + FileUpload1.FileName;
        }
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mobileconnection"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into [company](comp_name, comp_logo)values(@cname,@clogo)";
            cmd.Parameters.AddWithValue("@cname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@clogo", path);
            cmd.Connection = con;
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("Upload successful");

            }
        
    }
}