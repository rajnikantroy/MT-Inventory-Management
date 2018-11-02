using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ProductsDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryFebruaryConnectionString1"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                string s = Session["itemid"].ToString();
                SqlDataAdapter adap = new SqlDataAdapter("select companyid, itemid, itemname, brand, priceperitem from employee where itenid='" + s + "'", con);
                DataSet ds = new DataSet();
                adap.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            catch
            {
                
            }
        }
    }
}
