using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Newtonsoft.Json.Linq;
using System.Configuration;
using System.Net;
using System.IO;

namespace WebApplication1.User
{
    public partial class user_registration : System.Web.UI.Page
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
            int count2 = 0;
            if (IsReCaptchValid())
            {
                //This is for checking Username unique

                SqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "select * from user_master where username='" + username.Text + "'";
                cmd2.ExecuteNonQuery();
                DataTable dt2 = new DataTable();
                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                da2.Fill(dt2);
                count2 = Convert.ToInt32(dt2.Rows.Count.ToString());

                //End here for checking Username unique
                if (count2 > 0)
                {
                    Response.Write("<script>alert('This Username is already  available please choose any other');</script>");
                }
                else
                {
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into user_master values ('" + username.Text + "','" + emailID.Text + "','" + userpassword.Text + "','" + phone.Text + "','" + address.Text + "')";
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Record Inserted Successfuly');</script>");
                }
            }
            else
            {
                lblMessage1.Text = "This is invalid";
            }
        }
        public bool IsReCaptchValid()
        {
            var result = false;
            var captchaResponse = Request.Form["g-recaptcha-response"];
            var secretKey = "6Ld_ctAZAAAAANKJ6x2xw6zQMMjBv2n3anx11uFS";
            var apiUrl = "https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}";
            var requestUri = string.Format(apiUrl, secretKey, captchaResponse);
            var request = (HttpWebRequest)WebRequest.Create(requestUri);

            using (WebResponse response = request.GetResponse())
            {
                using (StreamReader stream = new StreamReader(response.GetResponseStream()))
                {
                    JObject jResponse = JObject.Parse(stream.ReadToEnd());
                    var isSuccess = jResponse.Value<bool>("success");
                    result = (isSuccess) ? true : false;
                }
            }
            return result;
        }
    }
}