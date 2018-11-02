using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PurchaseStock : System.Web.UI.Page
{
    //object companyid;
    //object dealerid;
    int id;
    //string itemname;
    //string brand;
    //object quantity;
    //object priceperitem;
    //object totalprice;
    
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryFebruaryConnectionString1"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        loadgrid();
    }

    private void loadgrid()
    {
        try
        {
            string query = "select itemid, itemname, brand, quantityofitem, priceperitem, totalprice from purchase_stock where companyid='" + Session["compid"].ToString() + "'";
            //SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch 
        {
            Label8.Text = "You are not Loged In...";
            Label8.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
        if (e.CommandName == "Edited")
        {
            id = int.Parse(e.CommandArgument.ToString());
            string q = "select companyid, dealerid, itemid, itemname, brand, quantityofitem, priceperitem, totalprice from purchase_stock where itemid=@itemid ";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@itemid", id);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                 Session["companyid"]=rd[0].ToString();
                 Session["dealerid1"]=rd[1].ToString();
                 Session["id"]=id;
                 Session["itemname"]=rd[3].ToString();
                 Session["brand"]=rd[4].ToString();
                 Session["quantity"]=rd[5].ToString();
                 Session["priceperitem"]=rd[6].ToString();
                 Session["totalprice"]=rd[7].ToString();
                 ItemName.Text = Session["itemname"].ToString();
                 ItemPrice.Text = Session["priceperitem"].ToString();
                 Label12.Text = Session["quantity"].ToString();
                 TotalPrice.Text = Session["totalprice"].ToString();
                // Label8.Text = itemid.ToString();
            }
            con.Close();
        }
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        try
        {
            //string query2 = "select itemid from purchase_transaction where itemid='"++"'";
            string query = "insert into shelling_stock(companyid, dealerid, itemid, itemname, brand, quantityofitem, priceperitem, totalprice) values('" + Session["companyid"].ToString() + "', '" + Convert.ToInt32(Session["dealerid1"]) + "', '" + Convert.ToInt32(Session["id"]) + "', '" + Session["itemname"].ToString() + "', '" + Session["brand"].ToString() + "', '" + Convert.ToInt32(Session["quantity"]) + "', '" + Convert.ToInt32(ItemPrice.Text) + "', '" + Convert.ToInt32(TotalPrice.Text) + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label8.Text = "You Have successfully send " + Session["itemname"].ToString() + " to shelling stock <a href='SellingStock.aspx'>Click me to chek out Shelling Stock<a/>";
            Label8.ForeColor = System.Drawing.Color.Green;
        }
        catch 
        {
            Label8.Text = "Network Problem Try Again Later...";
        }
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        int total=Convert.ToInt32(Label12.Text)*Convert.ToInt32(ItemPrice.Text);
        TotalPrice.Text = total.ToString();
    }
}

