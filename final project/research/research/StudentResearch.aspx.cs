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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["UID"] == null)
            {

                Response.Redirect("~/LogIn.aspx");

            }
        }
      

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
                SqlCommand x = new SqlCommand("select * from tblStdResearch where STDR_USN ='" + TextBoxusn.Text + "'", conn);
            SqlDataReader reader = x.ExecuteReader();
            if (!reader.Read())
            {
                reader.Close();
                if (fuFileUploader.PostedFile != null && fuFileUploader.PostedFile.ContentLength > 0)
                {
                    if (Path.GetExtension(fuFileUploader.FileName).ToLower() != ".jpg"
           && Path.GetExtension(fuFileUploader.FileName).ToLower() != ".png"

           && Path.GetExtension(fuFileUploader.FileName).ToLower() != ".jpeg")
                    {
                        Response.Write("<script type=\"text/javascript\">alert('Error: Upload Image File');</script>");

                    }
                    else
                    {
                        //string fileName = Path.GetFileName(fuFileUploader.PostedFile.FileName);
                        string fileName = TextBoxusn.Text;
                        string fileExtension = Path.GetExtension(fuFileUploader.PostedFile.FileName);
                        string GetExtension = fileExtension.Trim('.');

                        bool IsExists = Directory.Exists(Server.MapPath("~/UploadImages/" + fileExtension.ToString().Trim('.') + "/"));
                        if (!IsExists)
                        {
                            Directory.CreateDirectory(Server.MapPath("~/UploadImages/" + fileExtension.ToString().Trim('.') + "/"));
                        }
                        //first check if "uploads" folder exist or not, if not create it
                        string fileSavePath = ("/UploadImages/" + fileExtension.ToString().Trim('.') + "/") + fileName + fileExtension.ToString();

                        fuFileUploader.PostedFile.SaveAs(Server.MapPath("~/UploadImages/" + fileExtension.ToString().Trim('.') + "/") + fileName + fileExtension.ToString());
                        FileInfo fileInfo = new FileInfo(fileSavePath);
                        //using (SqlConnection sqlConn = new SqlConnection(strConn))
                        //{

                        using (SqlCommand sqlCmd = new SqlCommand())
                        {
                            sqlCmd.CommandText = @"INSERT INTO tblStdResearch
                                               (STDR_USN,STDR_NAME,STDR_COURSE,STDR_IMGPATH,STDR_PUB,STDR_GUIDE,STDR_TITLE) 
                                                VALUES (@STDR_USN,@STDR_NAME,@STDR_COURSE,@STDR_IMGPATH,@STDR_PUB,@STDR_GUIDE,@STDR_TITLE);";
                            sqlCmd.Parameters.AddWithValue("@STDR_USN", TextBoxusn.Text);
                            sqlCmd.Parameters.AddWithValue("@STDR_NAME", TextBoxNAME.Text);
                            sqlCmd.Parameters.AddWithValue("@STDR_COURSE", DropDownListCatg.SelectedValue);
                            sqlCmd.Parameters.AddWithValue("@STDR_IMGPATH", fileSavePath);
                            sqlCmd.Parameters.AddWithValue("@STDR_PUB", TextBoxPublication.Text);
                            sqlCmd.Parameters.AddWithValue("@STDR_GUIDE", TextBoxGuide.Text);
                            sqlCmd.Parameters.AddWithValue("@STDR_TITLE", TextBoxTitle.Text);
                            sqlCmd.Parameters.AddWithValue("@STDR_PPRPATH", fileSavePath);

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
                            //BindGridviewFileData();
                        }
                        // }
                        Response.Write("<script type=\"text/javascript\">alert('Record Uploaded Successfully!');</script>");
                        // lblMsg.Text = "File Uploaded Successfully!";
                        // lblMsg.ForeColor = System.Drawing.Color.Green;
                    }
                }

                else
                {
                    Response.Write("<script type=\"text/javascript\">alert('Error: Please select a file to upload!');</script>");

                    // lblMsg.Text = "Error: Please select a file to upload!";
                }
            }
            else
            {
                reader.Close();
                Response.Write("<script type=\"text/javascript\">alert('USN Already Exist');</script>");
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