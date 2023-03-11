using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1.Admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\WMS\WebApplication1\WebApplication1\App_Data\wms.mdf;Integrated Security=True");
        int count = 0;
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

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from messages where dusername='Admin@gmail.com' and placed='No'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            count = Convert.ToInt32(dt.Rows.Count.ToString());
            notification1.Text = count.ToString();
            notification2.Text = count.ToString();
            r1.DataSource = dt;
            r1.DataBind();
        }
        public string gettwentycharecters(object myvalues)
        {
            string a;
            a = Convert.ToString(myvalues.ToString());
            string b = "";

            if (a.Length >= 15)
            {
                b = a.Substring(0, 15);
                return b.ToString() + "..";
            }
            else
            {
                b = a.ToString();
                return b.ToString();
            }
        }
    }
}