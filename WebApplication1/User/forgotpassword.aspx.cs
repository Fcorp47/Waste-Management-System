using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Configuration;

namespace WebApplication1.User
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\WMS\WebApplication1\WebApplication1\App_Data\wms.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }
        protected void b1_Click(object sender, EventArgs e)
        {
            String password;
            String myquery = "select * from user_master where username='" + username.Text + "' and emailID='" + remail.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Label3.Text = "Data Found";

                password = ds.Tables[0].Rows[0]["userpassword"].ToString();
                sendpassword(password, remail.Text);
                msg.Style.Add("display", "block");

            }
            else
            {
                error.Style.Add("display", "block");

            }
        }
        private void sendpassword(String password, String email)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential("EMAIL_ID", "PASSWORD");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Forgot Password (User login)";
            msg.Body = "Dear " + username.Text + ", Your Password is  " + password + "\n\n\nThanks & Regards\nAMA Tech Corp. Team";
            string toaddress = remail.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Admin <EMAIL_ID>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);


            }
            catch
            {
                throw;
            }
        }
    }
}