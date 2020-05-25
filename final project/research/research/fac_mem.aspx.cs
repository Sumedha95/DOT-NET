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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["UID"] == null)
            {

                Response.Redirect("~/LogIn.aspx");

            }
            if (!Page.IsPostBack)
            {
                gridload();
            }
        }
        public void gridload()
        {
            DataTable dt = new DataTable();
           
            if (sqlconn.State == ConnectionState.Closed)
            {
                sqlconn.Open();
            }
            SqlCommand x = new SqlCommand("select * from  faculty", sqlconn);
        

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = x;
            da.Fill(dt);
            


            grdReportFA.DataSource = dt;
            grdReportFA.DataBind();
           

            if (sqlconn.State == ConnectionState.Open)
            {
                sqlconn.Close();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (sqlconn.State == ConnectionState.Closed)
            {
                sqlconn.Open();
            }
            SqlCommand x = new SqlCommand("select * from faculty where FA_NAME ='" + DropDownListFAC.SelectedValue + "' and FA_YEAR='" + TextBoxYR .Text+ "'", sqlconn);
            SqlDataReader reader = x.ExecuteReader();
            if (!reader.Read())
            {
                reader.Close();
                SqlCommand sqlcmd = new SqlCommand("insert into faculty (FA_NAME,FA_YEAR,FA_COUNT) values('" + DropDownListFAC.SelectedValue + "','" + int.Parse(TextBoxYR.Text) + "','" + int.Parse(txtNumberOfStudent.Text) + "')", sqlconn);
                sqlcmd.ExecuteNonQuery();
                Response.Write("<script type=\"text/javascript\">alert('Succesfully Record Added');</script>");
                gridload();
            }
            else
            {
                reader.Close();
                Response.Write("<script type=\"text/javascript\">alert('Name And Year Already Exist');</script>");
            }


            if (sqlconn.State == ConnectionState.Open)
            {
                sqlconn.Close();
            }
        }



        protected void grdReportFA_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string yr_id = grdReportFA.DataKeys[e.RowIndex].Values["FA_ID"].ToString();
            if (sqlconn.State == ConnectionState.Closed)
            {
                sqlconn.Open();
            }
            SqlCommand cmd = new SqlCommand("delete from faculty where FA_ID=" + yr_id, sqlconn);
            int result = cmd.ExecuteNonQuery();

            if (sqlconn.State == ConnectionState.Open)
            {
                sqlconn.Close();
            }
            if (result == 1)
            {
                Response.Write("<script type=\"text/javascript\">alert('Deleted successfully.......');</script>");
            }
            gridload();
        }



        protected void grdReportFA_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdReportFA.EditIndex = e.NewEditIndex;
            gridload();
        }

        protected void grdReportFA_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int Yr_id = int.Parse(grdReportFA.DataKeys[e.RowIndex].Values["FA_ID"].ToString());
            TextBox txtST_NOFA = (TextBox)grdReportFA.Rows[e.RowIndex].FindControl("txtST_NOFA");
            

            if (sqlconn.State == ConnectionState.Closed)
            {
                sqlconn.Open();
            }
            SqlCommand cmd = new SqlCommand("update faculty set FA_COUNT='" + int.Parse(txtST_NOFA.Text) + "' where FA_ID=" + Yr_id, sqlconn);
            cmd.ExecuteNonQuery();
            if (sqlconn.State == ConnectionState.Open)
            {
                sqlconn.Close();
            }
            Response.Write("<script type=\"text/javascript\">alert('Updated successfully........  ');</script>");
            // lblmsg.Text = stor_id + "        Updated successfully........    ";
            grdReportFA.EditIndex = -1;
            gridload();
        }
        protected void OnRowCreated(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[0].Visible = false;
        }
        protected void grdReportFA_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdReportFA.EditIndex = -1;
            gridload();
        }
    }
}