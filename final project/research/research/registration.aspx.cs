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
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand x = new SqlCommand("select * from regform where Usnnumber ='" + TextBox4.Text + "'", conn);
            SqlDataReader reader = x.ExecuteReader();
            if (!reader.Read())
            {
                reader.Close();
            
        

            
                using (SqlCommand sqlCmd = new SqlCommand())
                        {
                            sqlCmd.CommandText = @"INSERT INTO regform
                                               (Usnnumber,Username,Password) 
                                                VALUES (@Usnnumber,@Username,@Password);";
                            sqlCmd.Parameters.AddWithValue("@Usnnumber", TextBox4.Text);
                            sqlCmd.Parameters.AddWithValue("@Username", TextBox1.Text);
                            sqlCmd.Parameters.AddWithValue("@Password", TextBox2.Text);
                            
                            sqlCmd.Connection = conn;
                            if (conn.State == ConnectionState.Closed)
                            {
                                conn.Open();
                            }
                            sqlCmd.ExecuteNonQuery();
                            if (conn.State == ConnectionState.Open)
                            {
                                conn.Close();
                            }
                            
                        }
                        
                        Response.Write("<script type=\"text/javascript\">alert('Record Uploaded Successfully!');</script>");
                      
                  
                    }
                }
            catch
            {
                Response.Write("<script type=\"text/javascript\">alert('Error: Error while uploading file!');</script>");

                //  lblMsg.Text = "Error: Error while uploading file!";
            }
        }
}
    }
