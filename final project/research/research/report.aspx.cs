using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace research
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["UID"] == null)
            {

                Response.Redirect("~/LogIn.aspx");

            }
           
           gridload();
        }

       protected void Button1_Click(object sender, EventArgs e)
        {

            if (DropDownListCourser.SelectedValue=="UG")
            {

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand x = new SqlCommand("select * from tblUG_report where UG_Year ='" + TextBoxYR.Text + "'", conn);
                SqlDataReader reader = x.ExecuteReader();
                if (!reader.Read())
                {
                    reader.Close();
                    SqlCommand cmd = new SqlCommand("insert into tblUG_report (UG_Year,UG_journal,UG_conferenc,UG_TOTAL) values ('" + int.Parse(TextBoxYR.Text) + "','" + int.Parse(jpub.Text) + "','" + int.Parse(cpub.Text) + "','" + (int.Parse(jpub.Text) + int.Parse(cpub.Text)) + "')", conn);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script type=\"text/javascript\">alert('Succesfully Record Added For UG');</script>");
                }
                else
                {
                    reader.Close();
                    Response.Write("<script type=\"text/javascript\">alert('Year Already Exist For UG');</script>");
                }
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                gridload();
            }
            if (DropDownListCourser.SelectedValue == "PG")
            {

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand x = new SqlCommand("select * from tblPG_report where PG_Year ='" + TextBoxYR.Text + "'", conn);
                SqlDataReader reader = x.ExecuteReader();
                if (!reader.Read())
                {
                    reader.Close();
                    SqlCommand cmd = new SqlCommand("insert into tblPG_report (PG_Year,PG_journal,PG_conferenc,PG_TOTAL) values ('" + int.Parse(TextBoxYR.Text) + "','" + int.Parse(jpub.Text) + "','" + int.Parse(cpub.Text) + "','" + (int.Parse(jpub.Text) + int.Parse(cpub.Text)) + "')", conn);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script type=\"text/javascript\">alert('Succesfully Record Added For PG');</script>");
                }
                else
                {
                    reader.Close();
                    Response.Write("<script type=\"text/javascript\">alert('Year Already Exist For PG');</script>");
                }
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                gridload();
            }



        }

       public void gridload()
       {
           DataTable dt = new DataTable();
           DataTable dt2 = new DataTable();
           if (conn.State == ConnectionState.Closed)
           {
               conn.Open();
           }
           SqlCommand x = new SqlCommand("select * from  tblUG_report", conn);
           SqlCommand x2 = new SqlCommand("select * from tblPG_report", conn);

           SqlDataAdapter da = new SqlDataAdapter();
           da.SelectCommand = x;
           da.Fill(dt);
           SqlDataAdapter da2 = new SqlDataAdapter();
           da2.SelectCommand = x2;
           da2.Fill(dt2);


           GridViewUG.DataSource = dt;
           GridViewUG.DataBind();
           GridViewPG.DataSource = dt2;
           GridViewPG.DataBind();

           if (conn.State == ConnectionState.Open)
           {
               conn.Close();
           }
       }
     
    }
}