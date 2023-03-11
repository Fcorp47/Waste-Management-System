using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1.User
{
    public partial class messages_send_from_user : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\WMS\WebApplication1\WebApplication1\App_Data\wms.mdf;Integrated Security=True");
        string username = "";
        string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if (Session["user"] == null)
            {
                Response.Redirect("user_login.aspx");
            }

            username = Session["user"].ToString();
            msg = Request.QueryString["msg"].ToString();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into messages values('" + username.ToString() + "','Admin@gmail.com','" + msg.ToString() + "','No')";
            cmd.ExecuteNonQuery();
        }
    }
}