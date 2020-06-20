using
 System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prod_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = string.Empty;
        string cost = string.Empty;
        string pid = string.Empty;
        int rate = 0;
        foreach (GridViewRow item in GridView1.Rows)
        {
           pid = item.Cells[0].Text;
            name = item.Cells[1].Text;
            cost = item.Cells[4].Text;
            int data = Convert.ToInt32(cost);
            int price = Convert.ToInt32(TextBox1.Text);
            rate = data * price;
        }
        if (Session["email"] != null)
        {
            string logo = getlogo(pid);
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mobileconnection"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into [Cart_Order](email,prod_img,prod_name,Qty,cost,IsConfirmed)values(@mail,@img,@name,@qty,@cost,@confir)";
            cmd.Parameters.AddWithValue("@qty", TextBox1.Text);
            cmd.Parameters.AddWithValue("@mail", Session["email"].ToString());
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@cost", rate);
            cmd.Parameters.AddWithValue("@img", logo);
            cmd.Parameters.AddWithValue("@confir", 0);
            cmd.Connection = con;
            int a = cmd.ExecuteNonQuery();
            con.Close();
            if (a > 0)
            {
                int aid = getbyid();
                Session["Id"] = aid;
                Session["SEmail"] = Session["email"].ToString();
                Session["SProduct_Img"] = logo;
                Session["SProduct_Name"] = name;
                Session["SQty"] = TextBox1.Text;
                Session["SCost"] = rate;
                Response.Redirect("~/confirmation.aspx");






             
                //Response.Redirect("");
               
            }
        
        }
        else
        {
            //Response.Write("Please Log in first");
            Label2.Text = "Please Log in First";
            Label2.ForeColor = System.Drawing.Color.Red;
        }
    }

    private int getbyid()
    {
        int d=0;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mobileconnection"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "SELECT * from [Cart_Order]";
        cmd.Connection = con;
      SqlDataReader rd = cmd.ExecuteReader();
        while(rd.Read())
        {
           d =Convert.ToInt32(rd[0]);
           
        }
        return d;
        //throw new NotImplementedException();
    }

    private string getlogo(string pid1)
    {
        string url = string.Empty;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mobileconnection"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from [product] where p_id=@pid";
        cmd.Parameters.AddWithValue("@pid", pid1);
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            url = rd[3].ToString();
            break;
        }
        return url;
    }
}