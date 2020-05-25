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
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            gridloadReport();
            loadDynamicFacultyGrid();
        }
        public void gridloadReport()
        {
            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();
            DataTable dt3 = new DataTable();
            DataTable dt4 = new DataTable();
            DataTable dt5 = new DataTable();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand x = new SqlCommand("select * from  tblUG_report", conn);
            SqlCommand x2 = new SqlCommand("select * from tblPG_report", conn);
            SqlCommand x3 = new SqlCommand("select * from faculty order by FA_YEAR ", conn);
            SqlCommand x4 = new SqlCommand("select * from tblStdResearch where STDR_COURSE='PG'", conn);
            SqlCommand x5 = new SqlCommand("select * from tblStdResearch where STDR_COURSE='UG'", conn);

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = x;
            da.Fill(dt);
            SqlDataAdapter da2 = new SqlDataAdapter();
            da2.SelectCommand = x2;
            da2.Fill(dt2);
            SqlDataAdapter da3 = new SqlDataAdapter();
            da3.SelectCommand = x3;
            da3.Fill(dt3);
            SqlDataAdapter da4 = new SqlDataAdapter();
            da4.SelectCommand = x4;
            da4.Fill(dt4);
            SqlDataAdapter da5 = new SqlDataAdapter();
            da5.SelectCommand = x5;
            da5.Fill(dt5);


            GridViewUG.DataSource = dt;
            GridViewUG.DataBind();
            GridViewPG.DataSource = dt2;
            GridViewPG.DataBind();
            GridViewFaculty.DataSource = dt3;
            GridViewFaculty.DataBind();
            GridViewPG_RESEARCH.DataSource = dt4;
            GridViewPG_RESEARCH.DataBind();

            GridViewUG_RESEARCH.DataSource = dt5;
            GridViewUG_RESEARCH.DataBind();
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }
        private void loadDynamicFacultyGrid()
        {


            for (int column = 0; column < 1; column++)
            {
                string initialnamevalue = GridViewFaculty.Rows[0].Cells[column].Text;

                //Step 2:

                for (int i = 1; i < GridViewFaculty.Rows.Count; i++)
                {

                    if (GridViewFaculty.Rows[i].Cells[column].Text == initialnamevalue)
                        GridViewFaculty.Rows[i].Cells[column].Text = string.Empty;
                    else
                        initialnamevalue = GridViewFaculty.Rows[i].Cells[column].Text;
                }
            }

            ////Create an instance of DataTable
            //DataTable dt = new DataTable();

            ////Create an ID column for adding to the Datatable
            //DataColumn dcol = new DataColumn("ID", typeof(System.Int32));
            //dcol.AutoIncrement = true;
            //dt.Columns.Add(dcol);

            ////Create an ID column for adding to the Datatable
            // dcol = new DataColumn("NAME", typeof(System.String));
            //dt.Columns.Add(dcol);
            // if (conn.State == ConnectionState.Closed)
            //    {
            //        conn.Open();
            //    }
            // SqlCommand x = new SqlCommand("select DISTINCT FA_YEAR from faculty ORDER BY FA_YEAR DESC  ", conn);
            //    SqlDataReader reader = x.ExecuteReader();
            //    if (reader.HasRows)
            //    {
            //        while (reader.Read())
            //        {
            //            //Create an ID column for adding to the Datatable
            //            dcol = new DataColumn(reader.GetValue(0).ToString(), typeof(System.String));
            //            dt.Columns.Add(dcol);

            //        }
            //    }
            //    reader.Close();

        }
        public void loadresearch()
        {

        }
    }
}