using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignInUser : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryFebruaryConnectionString1"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        //if ((userid.Text == "") || (password.Text == ""))
        //{
        //    Label1.Text = "<b>Invalid User...</b>";
        //    Label1.ForeColor = System.Drawing.Color.Red;
        //}
        //else if ((userid.Text != "") || (password.Text != ""))
        //{

        //    string s = "select * from usersignin where emailid='" + userid.Text + "'and password ='" + password.Text + "'";
        //    SqlCommand cmd = new SqlCommand(s, con);
        //    con.Open();
        //    SqlDataReader rd = cmd.ExecuteReader();
        //    while (rd.Read())
        //    {

        //        Session["userid"] = userid.Text;
        //        Response.Redirect("AddtoCart.aspx");
        //        Session["username"] = dr["firstname"].ToString();
        //}
        //con.Close();
        string s = "select * from usersignin where emailid='" + userid.Text + "'and password ='" + password.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "usersignin");
        if (ds.Tables.Count >= 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                string emailid1 = dr["emailid"].ToString();
                emailid1 = emailid1.Trim();
                string password1 = dr["password"].ToString();
                password1 = password1.Trim();
                Session["userid"] = userid.Text;
                Session["username"] = dr["firstname"].ToString();
                Session["userpassword"] = password.Text;
                if ((emailid1 == userid.Text.ToString()) || (password1 == password.Text.ToString()))
                {
                    Response.Redirect("AddtoCart.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Invalid User...";
                    Response.Redirect("AddtoCart.aspx");
                }
            }
            //else
            //{
            //    Label1.Visible = true;
            //               Label1.Text = "Invalid User...";
            //}
        }

    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        //= "";
        Session["userid"]=userid.Text ;
        Response.Redirect("AddtoCart.aspx");
    }
}