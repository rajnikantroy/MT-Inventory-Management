using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SellingStock : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryFebruaryConnectionString1"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string query = "select * from shelling_stock where companyid='" + Session["compid"].ToString() + "'";
            SqlDataAdapter adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch
        {
            Label1.Text = "You Aren`t signed in PLease Sign in.";
        }
    }
}