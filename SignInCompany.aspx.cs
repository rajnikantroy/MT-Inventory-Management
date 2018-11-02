using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignInCompany : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryFebruaryConnectionString1"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        string s = "select * from [companysignin] where emailid='" + compid.Text + "'and password ='" + password.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(s, con);
        DataSet ds1 = new DataSet();
        adp.Fill(ds1, "companysignin");
        if (ds1.Tables.Count > 0)
        {
            foreach (DataRow dr in ds1.Tables[0].Rows)
            {
                string emailid2 = dr["emailid"].ToString();
                emailid2 = emailid2.Trim();
                string password2 = dr["password"].ToString();
                password2 = password2.Trim();
                Session["compid"] = compid.Text;
                Session["password"] = password.Text;
                if ((emailid2 == compid.Text.ToString().Trim()) || (password2 == password.Text.ToString().Trim()))
                {
                    Response.Redirect("Admin.aspx");

                }
                else
                {
                    Label1.Text = "Invalid User...";
                }
            }
        }

            }
        
            
            
        
    }
        
            
