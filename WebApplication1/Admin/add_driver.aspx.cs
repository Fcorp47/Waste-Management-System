using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
namespace WebApplication1.Admin
{
    public partial class add_driver : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\WMS\WebApplication1\WebApplication1\App_Data\wms.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            string resume_pdf = "";
            string path = "";
            if (f2.FileName.ToString() != "")
            {
                resume_pdf = Class1.GetRandomPassword(10) + ".pdf";
                f2.SaveAs(Request.PhysicalApplicationPath + "/Admin/resume_pdf/" + resume_pdf.ToString());
                path = "resume_pdf/" + resume_pdf.ToString();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into driver values ('" + drivername.Text + "','" + demail.Text + "','" + driverpassword.Text + "','" + mobile.Text + "','" + address.Text + "','" + aadhar.Text + "','" + path.ToString() + "')";
            cmd.ExecuteNonQuery();

            msg.Style.Add("display", "block");
        }
    }

    internal class Class1
    {
        public static string GetRandomPassword(int length)
        {
            char[] chars = "abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
            string password = string.Empty;
            Random random = new Random();

            for (int i = 0; i < length; i++)
            {
                int x = random.Next(1, chars.Length);
                //For avoiding Repetation of Characters
                if (!password.Contains(chars.GetValue(x).ToString()))
                    password += chars.GetValue(x);
                else
                    i = i - 1;
            }
            return password;
        }
    }
}