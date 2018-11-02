using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using PaypalSandboxService;

public partial class CheckOut : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryFebruaryConnectionString1"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["userid"].ToString() != string.Empty)
            {
                if (!Page.IsPostBack)
                {
                    LoadGrid();
                }
            }            
        }
        catch
        {
                message.Text = "<b>Please <a href='SignInUser.aspx'>Login</a> first. </b>";
        }
    }
    private void LoadGrid()
    {        
            string query = "select itemname, brand, quantityofitem, priceperitem, totalprice from checkout where userid='" + Session["userid"].ToString() + "'";
            //SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds); 
            GridView1.DataSource = ds;
            GridView1.DataBind();
            string TotalShopingPrice = "select sum(totalprice) from checkout where userid='"+Session["userid"].ToString()+"'";
            SqlCommand cmd = new SqlCommand(TotalShopingPrice, con);
            con.Open();
            object price = cmd.ExecuteScalar();
            pricelabel.Text = price.ToString();
            con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }    
}
