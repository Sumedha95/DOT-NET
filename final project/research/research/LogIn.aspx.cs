using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace research
{
    public partial class LogIn : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        con.Open();

        SqlCommand cmd = new SqlCommand("select COUNT(*)FROM regform WHERE Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'");

        cmd.Connection = con;

        int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
        if (OBJ > 0)
        {

            Session["UID"] = TextBox1.Text;
            Response.Redirect("~/UL_Welcom.aspx");

        }
            

            if (TextBox1.Text == "Admin" && TextBox2.Text == "12345")
            {
                Session["UID"] = "Admin";

                Response.Redirect("~/welcome.aspx");
            }

           
            
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Enter Proper User Id/Password');</script>");
            }
        }
    }
}