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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["UID"] == null)
            {

                Response.Redirect("~/LogIn.aspx");

            }
            if (!IsPostBack)
            {
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


             grdReportUG.DataSource = dt;
             grdReportUG.DataBind();
             grdReportPG.DataSource = dt2;
             grdReportPG.DataBind();

             if (conn.State == ConnectionState.Open)
             {
                 conn.Close();
             }
         }

         /////@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@UG REPORT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/////////////

         protected void grdReport_RowDeleting(object sender, GridViewDeleteEventArgs e)
         {
             string yr_id = grdReportUG.DataKeys[e.RowIndex].Values["UG_Year"].ToString();
             if (conn.State == ConnectionState.Closed)
             {
                 conn.Open();
             }
             SqlCommand cmd = new SqlCommand("delete from tblUG_report where UG_Year=" + yr_id, conn);
             int result = cmd.ExecuteNonQuery();

             if (conn.State == ConnectionState.Open)
             {
                 conn.Close();
             }
             if (result == 1)
             {
                 Response.Write("<script type=\"text/javascript\">alert('Deleted successfully.......');</script>"); 
             }
             gridload();
         }

        

         protected void grdReport_RowEditing(object sender, GridViewEditEventArgs e)
         {
             grdReportUG.EditIndex = e.NewEditIndex;
             gridload();
         }

         protected void grdReport_RowUpdating(object sender, GridViewUpdateEventArgs e)
         {
             int Yr_id = int.Parse(grdReportUG.DataKeys[e.RowIndex].Values["UG_Year"].ToString());
             TextBox txtjournal = (TextBox)grdReportUG.Rows[e.RowIndex].FindControl("txtjournal");
             TextBox txtconferenc = (TextBox)grdReportUG.Rows[e.RowIndex].FindControl("txtconferenc");
             TextBox txtcourse = (TextBox)grdReportUG.Rows[e.RowIndex].FindControl("txtcourse");
             TextBox txtTotal = (TextBox)grdReportUG.Rows[e.RowIndex].FindControl("txtTotal");

             if (conn.State == ConnectionState.Closed)
             {
                 conn.Open();
             }
             SqlCommand cmd = new SqlCommand("update tblUG_report set UG_journal='" + int.Parse(txtjournal.Text) + "', UG_conferenc='" + int.Parse(txtconferenc.Text) + "',  UG_Total='" + (int.Parse(txtjournal.Text) + int.Parse(txtconferenc.Text)) + "' where UG_Year=" + Yr_id, conn);
             cmd.ExecuteNonQuery();
             if (conn.State == ConnectionState.Open)
             {
                 conn.Close();
             }
             Response.Write("<script type=\"text/javascript\">alert('Updated successfully........  ');</script>"); 
            // lblmsg.Text = stor_id + "        Updated successfully........    ";
             grdReportUG.EditIndex = -1;
             gridload();
         }

         protected void grdReport_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
         {
             grdReportUG.EditIndex = -1;
             gridload();
         }

      /////@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@PG REPORT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/////////////

         protected void grdReportPG_RowDeleting(object sender, GridViewDeleteEventArgs e)
         {
             string yr_id = grdReportPG.DataKeys[e.RowIndex].Values["PG_Year"].ToString();
             if (conn.State == ConnectionState.Closed)
             {
                 conn.Open();
             }
             SqlCommand cmd = new SqlCommand("delete from tblPG_report where PG_Year=" + yr_id, conn);
             int result = cmd.ExecuteNonQuery();

             if (conn.State == ConnectionState.Open)
             {
                 conn.Close();
             }
             if (result == 1)
             {
                 Response.Write("<script type=\"text/javascript\">alert('Deleted successfully.......');</script>");
             }
             gridload();
         }



         protected void grdReportPG_RowEditing(object sender, GridViewEditEventArgs e)
         {
             grdReportPG.EditIndex = e.NewEditIndex;
             gridload();
         }

         protected void grdReportPG_RowUpdating(object sender, GridViewUpdateEventArgs e)
         {
             int Yr_id = int.Parse(grdReportPG.DataKeys[e.RowIndex].Values["PG_Year"].ToString());
             TextBox txtjournalPG = (TextBox)grdReportPG.Rows[e.RowIndex].FindControl("txtjournalPG");
             TextBox txtconferencPG = (TextBox)grdReportPG.Rows[e.RowIndex].FindControl("txtconferencPG");
             TextBox txtcoursePG = (TextBox)grdReportPG.Rows[e.RowIndex].FindControl("txtcoursePG");
             TextBox txtTotalPG = (TextBox)grdReportPG.Rows[e.RowIndex].FindControl("txtTotalPG");

             if (conn.State == ConnectionState.Closed)
             {
                 conn.Open();
             }
             SqlCommand cmd = new SqlCommand("update tblPG_report set PG_journal='" + int.Parse(txtjournalPG.Text) + "', PG_conferenc='" + int.Parse(txtconferencPG.Text) + "',  PG_Total='" + (int.Parse(txtjournalPG.Text) + int.Parse(txtconferencPG.Text)) + "' where PG_Year=" + Yr_id, conn);
             cmd.ExecuteNonQuery();
             if (conn.State == ConnectionState.Open)
             {
                 conn.Close();
             }
             Response.Write("<script type=\"text/javascript\">alert('Updated successfully........  ');</script>");
             // lblmsg.Text = stor_id + "        Updated successfully........    ";
             grdReportPG.EditIndex = -1;
             gridload();
         }

         protected void grdReportPG_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
         {
             grdReportPG.EditIndex = -1;
             gridload();
         }
    }
    
}