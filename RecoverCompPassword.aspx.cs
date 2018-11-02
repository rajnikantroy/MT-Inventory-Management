using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class RecoverCompPassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryFebruaryConnectionString1"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string query1 = "select password from comprecoverypass where emailid='" + TextBox1.Text + "' and answer ='" + TextBox2.Text + "'";
        SqlCommand cmd1 = new SqlCommand(query1, con);
        con.Open();
        SqlDataReader rd = cmd1.ExecuteReader();
        while (rd.Read())
        {
            Label3.Text = "Your Password is :";
            Label2.Visible = true;
            Label2.Text = rd[0].ToString();
        }
        Label4.Visible = true;
        Label4.Text = "Wrong Answer.";
        Label4.ForeColor = System.Drawing.Color.Red;
        Label4.Font.Bold = true;
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {        
            string query = "select emailid, password, question, answer from comprecoverypass where emailid='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                Label1.Visible = true;
                Label1.Text = rd[2].ToString();
            }
            con.Close();
            Label4.Visible = true;
            Label4.Text = "Wrong Email ID...Not Found in my Database.";
            Label4.ForeColor = System.Drawing.Color.Red;
            Label4.Font.Bold = true;
        
            
    }
    
}
