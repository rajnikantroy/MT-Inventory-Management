using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignupUser : System.Web.UI.Page
{
      SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryFebruaryConnectionString1"].ToString());
       protected void LinkButton3_Click(object sender, EventArgs e)
    {
          if ((firstname.Text == "") || (lastname.Text == "") || (dob.Text == "") || (sex.Text == "") || (mobile.Text == "") || (address.Text == "") || (state.Text == "") || (country.Text == "") || (userid.Text == "") || (email.Text == "") || (password.Text == "") || (securityQuestion0.Text == "") || (Answer.Text == ""))
            {
                Label1.Text = "<b>All Fields are Required...</b>";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                      try
                      {
              string s = "insert into userreg(firstname, lastname, dob, sex, mobile, address, state, country, userid, emailid, password, quesption, answer, signuptime) values('" + firstname.Text + "', '" + lastname.Text + "', '" + dob.Text + "', '" + sex.Text + "', '" + mobile.Text + "', '" + address.Text + "', '" + state.Text + "', '" + country.Text + "', '"  + "', '" + email.Text + "', '" + password.Text + "', '" + securityQuestion0.Text + "', '" + Answer.Text + "', getdate())";
              con.Open();
              SqlCommand cmd=new SqlCommand(s, con);
              cmd.ExecuteNonQuery();
              con.Close();
              Label1.Text = "<b>You have successfully signde Up</b><b><a href='SignInUser.aspx'> Sign In</b>";
              Label1.ForeColor=System.Drawing.Color.Green;
              Response.Redirect("SignInUser.aspx");
              }
          
              catch
              {
                  Label1.Text = "<b>Try Again Later</b>";
                  Label1.ForeColor = System.Drawing.Color.Red;
              }
            }
        
    }

       
}