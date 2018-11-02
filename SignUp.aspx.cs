using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;

public partial class SignUp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryFebruaryConnectionString1"].ToString());
    //SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if ((Name.Text == "") || (Type.Text == "") || (year.Text == "") || (representator.Text == "") || (mobile.Text == "") || (phone.Text == "") || (address.Text == "") || (state.Text == "") || (country.Text == "") || (email.Text == "") || (password.Text == "") || (securityQuestion.Text == "") || (Answer.Text == ""))
        {
            //MessageBox.Show("All Field are Required...", "Warning...", MessageBoxButtons.OKCancel, MessageBoxIcon.Information);
            Label1.Text = "<b>All fields are Required...</b>";
            Label1.ForeColor = System.Drawing.Color.Red;
            //Label1.CssClass = "myTextBox";
        }
        else
        {
              string query = "insert into companyreg(name, type, estb, representator, mobile, phone, address, state, country, emailid, password, question, answer, signuptime) values('" + Name.Text + "', '" + Type.Text + "', '" + year.Text + "', '" + representator.Text + "', '" + mobile.Text + "', '" + phone.Text + "', '" + address.Text + "', '" + state.Text + "', '" + country.Text + "', '" + email.Text + "', '" + password.Text + "', '" + securityQuestion.Text + "', '" + Answer.Text + "', getdate())";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "<b>You have successfully Signed UP...<a href='SignInCompany.aspx'>Sign In</a></b>";
                Label1.ForeColor = System.Drawing.Color.Green;
                Response.Redirect("SignInCompany.aspx");
               
            
            
        }

    }
}