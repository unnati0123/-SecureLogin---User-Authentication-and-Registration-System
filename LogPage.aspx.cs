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
    public partial class LogPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if (CheckDetails() == true)
            {
               // LabelMsg.Text = "Your email is already registered";
                //TxtEmailId.BackColor = System.Drawing.Color.PaleGreen;
                Response.Redirect("WebForm1.aspx");
               
            }
            else
            {
                LabelMsg.Text = "Your email is not registered, please register";
                TxtEmailId.BackColor = System.Drawing.Color.PaleGreen;
               // Response.Write("<script>alert('Not a registered user, please register')</script>");
                Response.Redirect("RegisterPage.aspx");
                
            }
        }
        private Boolean CheckDetails()
        {
            Boolean dataStrored = false;
            String mycon = "Data source=DESKTOP-P9VE95F\\SQLEXPRESS; Initial Catalog=UserRegisterDb; Integrated Security=True";
                String myQuery = "Select * from UserRegisterTb where Email= '" + TxtEmailId.Text + "' and Password = '"+TxtPassword + "'";
            SqlConnection con = new SqlConnection(mycon);
            //  SqlConnection con = new SqlConnection("Data Source=DESKTOP-P9VE95F\\SQLEXPRESS;Initial Catalog=UserRegisterDb;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myQuery;
            cmd.Connection = con;
            //  con.open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
               dataStrored= true;
            }
            else
            {
                TxtEmailId.Text = "You can avail this username";
            }
            con.Close();
            return dataStrored;

        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }
    }
}