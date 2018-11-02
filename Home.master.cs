using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.MasterPage
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        //try
        //{
        //    string userid = Session["userid"].ToString();
        //    string userpass = Session["userpassword"].ToString();
        //    string companyid = Session["companyid"].ToString();
        //    string companypass = Session["password"].ToString();
        //    if (!Page.IsPostBack)
        //    {
        //        if ((userid == "") || (userpass == "") || (companyid == "") || (companypass == ""))
        //        {
        //            //Response.Redirect
        //            LinkButton1.Visible = true;
        //        }
        //        else
        //        {
        //            LinkButton6.Visible = true;
        //        }


        //    }
        //}
        //catch
        //{
        //    LinkButton1.Visible = true;
        //}
       
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
    protected void TextBox1_Click(object sender, EventArgs e)
    {
        
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        
    }
}
