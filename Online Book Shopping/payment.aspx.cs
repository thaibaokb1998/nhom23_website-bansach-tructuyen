using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "CREDIT CARD")
        {
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        Label7.Visible = true;
        TextBox1.Visible = true;
        TextBox2.Visible = true;
        TextBox3.Visible = true;
        TextBox4.Visible = true;
        }
        if (RadioButtonList1.SelectedValue == "CASH ON DELIEVERY")
        {
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
        }
        if (RadioButtonList1.SelectedValue == "CHEQUE/DRAFT")
        {
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mobileconnection"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update [Cart_Order] set IsConfirmed=@confir,Order_Date=@dt  where Id=@id1";
        cmd.Parameters.AddWithValue("@confir", 1);
        cmd.Parameters.AddWithValue("@id1", Session["id"].ToString());
        cmd.Parameters.AddWithValue("@dt", DateTime.Now.ToString());
        cmd.Connection = con;
        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            Label8.Text = "Thanks For Your Order";
        }
    }
}