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
    public partial class load_new_messages : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\WMS\WebApplication1\WebApplication1\App_Data\wms.mdf;Integrated Security=True");
        int Count = 0;
        string msg = "";
        string username = "";
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
            username = Request.QueryString["username"].ToString();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from messages where dusername='Admin@gmail.com' and placed='No'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                Count = Count + 1;

                if (Count == 1)
                {
                    msg = dr["susername"].ToString() + " : " + dr["msg"].ToString();
                }
                else
                {
                    msg = msg + "||abcd||" + dr["susername"].ToString() + " : " + dr["msg"].ToString();
                }

                SqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "update messages set placed='Yes' where id='" + dr["id"].ToString() + "' and susername='" + dr["susername"].ToString() + "'";
                cmd1.ExecuteNonQuery();
            }

            if (Count == 0)
            {
                Response.Write("0");
            }
            else
            {
                Response.Write(msg.ToString());
            }

        }
    }
}