using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace MiniProject
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet DS = new DataSet();
            string strPhysicalPath = Server.MapPath("countries.xml");
            DS.ReadXml(strPhysicalPath);
            DropDownList2.DataTextField = "countryname";
            DropDownList2.DataValueField = "countryid";
            DropDownList2.DataSource = DS;
            DropDownList2.DataBind();
            ListItem li = new ListItem("SELECT", "-1");
            DropDownList2.Items.Insert(0, li);

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            /*string constr = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO UserRegisterTb VALUES ('" + FirstName.Text + "','" + LastName.Text + "', '" + Email.Text + "', '" + Password.Text + "','" + PhoneNumber.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch
            {

            }

        }*/
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-P9VE95F\\SQLEXPRESS;Initial Catalog=UserRegisterDb;Integrated Security=True");
            try
            {
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[UserRegisterTb]
           ([FirstName]
           ,[LastName]
           ,[Email]
           ,[Password]
           ,[PhoneNo])
     VALUES
           ('" + FirstName.Text + "','" + LastName.Text + "', '" + Email.Text + "', '" + Password.Text + "','" + PhoneNumber.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch
            {

            }
            finally
            {
                con.Close();
                clearAllFields();
            }
        }

        protected void BtnUpload10th_Click(object sender, EventArgs e)
        {
            if (FileUpload10th.HasFile)
            {
                string FileExtension = System.IO.Path.GetExtension(FileUpload10th.FileName);
                if (FileExtension.ToLower() != ".png")
                {
                    Lblmsg10.Text = "Only png files are allowed";
                    Lblmsg10.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    int fileSize = FileUpload10th.PostedFile.ContentLength;
                    if (fileSize > 2097152)
                    {
                        Lblmsg10.Text = "Only files of size 2mb are allowed";
                        Lblmsg10.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        FileUpload10th.SaveAs(Server.MapPath("~/UPLOADS/" + FileUpload10th.FileName));
                        Lblmsg10.Text = "File uploaded";
                        Lblmsg10.ForeColor = System.Drawing.Color.Green;
                    }
                }
            }
            else
            {
                Lblmsg10.Text = "Please select a file";
                Lblmsg10.ForeColor = System.Drawing.Color.Red;
            }
        }
        void clearAllFields()
        {
            FirstName.Text = "";
            LastName.Text = "";
            Email.Text = "";
            

        }

        protected void BtnUpload12th_Click(object sender, EventArgs e)
        {
            if (FileUpload12th.HasFile)
            {
                string FileExtension = System.IO.Path.GetExtension(FileUpload12th.FileName);
                if (FileExtension.ToLower() != ".png")
                {
                    Lblmsg12.Text = "Only png files are allowed";
                    Lblmsg12.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    int fileSize = FileUpload12th.PostedFile.ContentLength;
                    if (fileSize > 2097152)
                    {
                        Lblmsg12.Text = "Only files of size 2mb are allowed";
                        Lblmsg12.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        FileUpload12th.SaveAs(Server.MapPath("~/UPLOADS/" + FileUpload12th.FileName));
                        Lblmsg12.Text = "File uploaded";
                        Lblmsg12.ForeColor = System.Drawing.Color.Green;
                    }
                }
            }
            else
            {
                Lblmsg12.Text = "Please select a file";
                Lblmsg12.ForeColor = System.Drawing.Color.Red;
            }
        }

      
      
    }
    }
