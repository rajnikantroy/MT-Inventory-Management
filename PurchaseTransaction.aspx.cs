using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class PurchaseTransaction : System.Web.UI.Page
{
    //string companyid1;
    //object dealid;
    //object itemid;
    //string itemname;
    //string brand;
    //object quantity;
    //object ppi;
    //object total;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryFebruaryConnectionString1"].ToString());
    public void Page_Load(object sender, EventArgs e)
    {
        try
        {
            dealerid.Text = Session["dealerid"].ToString();
        }
        catch
        {
            Label1.Text = "Choose dealer id.";
        }
    }
   
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.Redirect("ExistingDealersDetail.aspx");
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
       
            if ((Itemname.Text == "") || (Brand.Text == "") || (Quantity.Text == "") || (PricePerItem.Text == "") || (TotalPrice.Text == ""))
            {
                Label1.Text = "All Fields are Required...";
            }
            else
            {
                string query = "insert purchase_transaction(transactiontime, companyid, dealerid, itemname, brand, quantityofitem, priceperitem, totalprice) values(getdate(), '" + Session["compid"].ToString() + "', '" + Session["dealerid"].ToString() + "', '" + Itemid.Text + "', '" +  Brand.Text + "', '" + Convert.ToInt32(Quantity.Text) + "', '" + Convert.ToInt32(PricePerItem.Text) + "', '" + Convert.ToInt32(TotalPrice.Text) + "')";
                SqlCommand comm = new SqlCommand(query, con);
                con.Open();
                comm.ExecuteNonQuery();
                con.Close();
                loadgridview();
                Label1.Text = "You have successfully Added : " + Itemname.Text + "<a href='PurchaseStock.aspx'>Click me to Chek out Purchase Stock</a>";
            }
        
        
    }

    private void loadgridview()
    {
        string query2 = "select * from purchase_transaction where companyid='" + Session["compid"].ToString() + "'";
        SqlDataAdapter adp = new SqlDataAdapter(query2, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        gridview1.DataSource = ds;
        gridview1.DataBind();
        inserttopurchasestock();
    }

    private void inserttopurchasestock()
    {
        //string s1 = "select max(itemid) from purchase_transaction";
        //SqlCommand cmd123 = new SqlCommand(s1, con);
        //object ccc= cmd123.ExecuteScalar();
        //int item = Convert.ToInt32(ccc);
        //string s = "select * from purchase_transaction where itemid='"+item+"'";
        //SqlCommand cmd12 = new SqlCommand(s, con);
        //SqlDataReader rd = cmd12.ExecuteReader();
        //while (rd.Read())
        //{
        //    string companyid1 = rd[0].ToString();
        //    object dealid = rd[1].ToString(); ;
        //    object itemid = rd[2].ToString();
        //    string itemname = rd[3].ToString();
        //    string brand=rd[4].ToString();
        //    object quantity = rd[5].ToString();
        //    object ppi = rd[6].ToString();
        //    object total = rd[7].ToString();
        //}
        string query12 = "insert purchase_stock(companyid, dealerid, itemid, itemname, brand, quantityofitem, priceperitem, totalprice) values( '" + Session["compid"].ToString() +"', '" +Convert.ToInt32(Session["dealerid"])+ "', '" +Convert.ToInt32(Itemid.Text) + "', '" + Itemname.Text + "', '" + Brand.Text + "', '" + Convert.ToInt32(Quantity.Text) + "', '" + Convert.ToInt32(PricePerItem.Text) + "', '" + Convert.ToInt32(TotalPrice.Text) + "')";
        SqlCommand comm = new SqlCommand(query12, con);
        con.Open();
        comm.ExecuteNonQuery();
        con.Close();
    }
    //public void Transaction()
    //{
       
    //}
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        int quan = Convert.ToInt32(Quantity.Text);
        int ppi = Convert.ToInt32(PricePerItem.Text);
        int total = quan * ppi;
        TotalPrice.Text = total.ToString();
        Session["totalprice"]=TotalPrice;
    }
    protected void LinkButton13_Click(object sender, EventArgs e)
    {      
        //int i=(int)Session["Ptransaction"];
        //i++;
        //Session["Ptransaction"] = i;
    }
}
