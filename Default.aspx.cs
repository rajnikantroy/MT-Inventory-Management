using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    object companyid;
    object itemid;
    string itemname;
    string brand;
    object priceperitem;
    int id;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryFebruaryConnectionString1"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LoadGridView1();

        }
    }

    private void LoadGridView1()
    {
        SqlDataAdapter adap = new SqlDataAdapter("select itemid, itemname, brand, priceperitem from shelling_stock ", con);
        DataSet ds2 = new DataSet();
        adap.Fill(ds2);
        GridView1.DataSource = ds2;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        try
        {
            if (Session["userid"].ToString() == "")
            {
                Message.Text = "<b>You are not Sign In. Please Sign In First to Manage your Cart. </b><b><a href='SignInUser.aspx'>Sign In</a><b> ";
                Message.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                if (e.CommandName == "AddToCart1")
                {

                    int id = int.Parse(e.CommandArgument.ToString());
                    string query = "select * from shelling_stock where itemid=@itemid";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@itemid", id);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    //Quantitylabel.Visible=true;
                    //Quantity.Visible=true;
                    //Quantity.Text=
                    while (reader.Read())
                    {
                        companyid = reader[0].ToString();
                        itemid = reader[2].ToString();
                        itemname = reader[3].ToString();
                        brand = reader[4].ToString();
                        priceperitem = reader[6].ToString();
                    }

                    con.Close();
                    string query1 = "select max(transactionid) from add_to_cart";
                    SqlCommand c = new SqlCommand(query1, con);
                    con.Open();
                    object max = c.ExecuteScalar();
                    con.Close();
                    int maximum = Convert.ToInt32(max);
                    maximum = maximum + 1;
                    int q = 1;
                    // string insertquery = "insert into add_to_cart (transactionid, transactiontime, companyid, userid, itemid, itemname, brand, quantityofitem, priceperitem, totalprice) values('" + maximum + "', 'getdate()', '" + companyid + "', '" + Session["userid"].ToString() + "', '" + id + "', '" + itemname + "', '" + brand + "', '" + (int)Session["quan"] + "', '" + priceperitem + "', '" + (int)Session["quan"] *Convert.ToInt32(priceperitem) + "')";
                    string que = "insert into add_to_cart (transactionid, transactiontime, companyid, userid, itemid, itemname, brand, quantityofitem, priceperitem, totalprice) values('" + maximum + "', getdate(), '" + companyid.ToString() + "', '" + Session["userid"].ToString() + "', '" + Convert.ToInt32(id) + "', '" + itemname + "', '" + brand + "', '" + q + "', '" + Convert.ToInt32(priceperitem) + "', '" + Convert.ToInt32(priceperitem) + "')";
                    SqlCommand insertcmd = new SqlCommand(que, con);
                    con.Open();
                    insertcmd.ExecuteNonQuery();
                    con.Close();
                    Message.Text = "Successfully Added to cart. <a href='AddtoCart.aspx'>Check Out your cart.</a>";
                    Message.ForeColor = System.Drawing.Color.Green;
                }
            }
        }
        catch
        {
            Message.Text = "<b>Please LogIn First...<a href='SignInUser.aspx'>Click Me To LogIn</a></b>";
            Message.ForeColor = System.Drawing.Color.Red;
        }
        //protected void Quantity_TextChanged(object sender, EventArgs e)
        //{
        //    Session["quan"] =Convert.ToInt32(Quantity.Text);
        //}
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //GridView1.PageIndex = e.NewPageIndex;
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}