using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryFebruaryConnectionString1"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            try
            {
                string companyid=Session["compid"].ToString();
                string password=Session["password"].ToString();
                if ((companyid != "") && (password != ""))
                {
                    string query = "select name from companysignin where emailid='"+companyid+"'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    rd.Read();
                    Label1.Text = rd[0].ToString();
                    con.Close();
 
                }
                //( = "") && ( = "")
                
            }
            catch
            {
                Response.Redirect("SignInCompany.aspx");
            }
           
            
            
        }
    }
    protected void Unnamed1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("purchaseTransaction.aspx");
    }
    protected void Unnamed2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PurchaseStock.aspx");
    }
    protected void Unnamed3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SellingStock.aspx");
    }
    protected void Unnamed4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("sellingTransaction.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("SignInCompany.aspx");
    }
}