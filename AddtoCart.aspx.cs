using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddtoCart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryFebruaryConnectionString1"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                string userid = Session["userid"].ToString();
                string password = Session["userpassword"].ToString();
                if ((userid != "") && (password != ""))
                {
                    string query = "select firstname from usersignin where emailid='" + userid + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    rd.Read();
                    Label1.Text = rd[0].ToString();
                    con.Close();
                    //loadtotalprice();
                    LoadGrid();                   
                }
             }
            catch
            {
                Response.Redirect("SignInUser.aspx");
            }
        }
        //try
        //{
        //    if (Session["userid"].ToString() != "")
        //    {
        //        Label1.Text = "<b>Welcome : </b>";
        //        Label2.Text = Session["username"].ToString();
        //        Label1.ForeColor = System.Drawing.Color.Green;
        //        Label2.ForeColor = System.Drawing.Color.Green;
        //        Label2.Font.Bold = true;
        //        String que = "select sum(totalprice) from shelling_stock";
        //        SqlCommand cmd = new SqlCommand(que, con);
        //        object sum = cmd.ExecuteScalar();
        //        int sum1 = Convert.ToInt32(sum);
        //        Label3.Text = sum1.ToString();
        //        LoadGrid();

        //    }
        //    else
        //    {

        //        Label1.Text = "<b>Sign In first to check out your cart.<a href='SignInUser.aspx'>Click me to Sign In<a/> </b>";
        //        Label1.ForeColor = System.Drawing.Color.Red;
                
        //    }
        //}
        //catch 
        //{
        //    Label1.Text = "<b>Sign In first to check out your cart.<a href='SignInUser.aspx'>Click me to Sign In<a/> </b>";
        //    Label1.ForeColor = System.Drawing.Color.Red;
        //   // Response.Redirect("SignInUser.aspx");
        //}
        
        //try
        //{
        //    //Label1.Text = ;
        //    //Label2.Text = Session["userpassword"].ToString();
        //}
        //catch 
        //{
        //    //Label3.Text = "Data not available";
        //}
    }

    private void loadtotalprice()
    {
        string userid = Session["userid"].ToString();
        string query1 = "select sum(totalprice) from usersignin where emailid='" + userid + "'";
        SqlCommand cmd1 = new SqlCommand(query1, con);
        con.Open();
        SqlDataReader rd1 = cmd1.ExecuteReader();
        rd1.Read();
        Label3.Text = rd1[0].ToString();
        con.Close();
    }

    private void LoadGrid()
    {
        try
        {
            string query = "select itemid, itemname, brand, quantityofitem, priceperitem, totalprice from add_to_cart where userid='" + Session["userid"].ToString() + "'";
            //SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch
        {
            Label1.Text = "Please sign in. <a href='SignInUser.aspx'>Click me to sign in</a>";
        }
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("SignInUser.aspx");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        string query = "insert into checkout(transactionid, transactiontime, companyid, userid, itemid, itemname, brand, quantityofitem, priceperitem, totalprice) select transactionid, transactiontime, companyid, userid, itemid, itemname, brand, quantityofitem, priceperitem, totalprice from add_to_cart where userid='" + Session["userid"].ToString()+ "' ";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        string querydelete = "delete from add_to_cart where userid='" + Session["userid"].ToString() + "'";
        SqlCommand cmd1 = new SqlCommand(querydelete, con);
        con.Open();
        cmd1.ExecuteNonQuery();
        con.Close();
        Response.Redirect("checkout.aspx");
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "deleted")
        {
            int itemid = int.Parse(e.CommandArgument.ToString());
            string query = "delete from add_to_cart where itemid='"+itemid+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            LoadGrid();
        }
    }
}
