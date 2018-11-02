using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DealerDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryFebruaryConnectionString1"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string query1 = "select id from createdealer";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            con.Open();
            object id = cmd1.ExecuteScalar();
            con.Close();
            int dealerid = Convert.ToInt32(id);
            dealerid = dealerid + 1;
            Session["dealerid"] = dealerid;
            Label2.Text = Session["compid"].ToString();
            Label3.Text = dealerid.ToString(); ;
        }
        catch
        {
            Label1.Text = "<b>You are not Loged In. Please LogIn First...<a href='SignInCompany.aspx'>Click Here to LogIn</a><b>";
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Font.Bold = true;
        }
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {

        if ((TextBox3.Text == "") || (TextBox4.Text == "") || (TextBox5.Text == ""))
        {
            Label1.Text = "All Fields are Required...";
        }
        else if((Label2.Text!=""))
        {           
               
                string query = "insert into createdealer(companyid, name, address, mobile, createtime) values('" + Session["compid"].ToString() + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "',getdate())";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();               
                Response.Redirect("PurchaseTransaction.aspx");              
                        
            }
        else
        {
                Label1.Text = "<b>Please Login First.<a href='SignInCompany.aspx'>Click on me to SignIn.</a></b>";
                Label1.ForeColor = System.Drawing.Color.Red;
        }
        }
    }
   
 
