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
    public partial class payment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\WMS\WebApplication1\WebApplication1\App_Data\wms.mdf;Integrated Security=True");
        int id;
        string charge = "0";
        string weight;

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

            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            if (IsPostBack) return;

            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select * from charge";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            da2.Fill(dt2);
            foreach (DataRow dr2 in dt2.Rows)
            {
                charge = dr2["camount"].ToString();
            }

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from complaint_master where cid=" + id + "";
            cmd.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd);
            da1.Fill(dt1);
            foreach (DataRow dr1 in dt1.Rows)
            {
               weight = dr1["complaint_details"].ToString();
            }

            tamount.Text = Convert.ToString(Convert.ToDouble(weight) * Convert.ToDouble(charge));

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd3 = con.CreateCommand();
            cmd3.CommandType = CommandType.Text;
            cmd3.CommandText = "insert into trans values ('" + id + "','" + Session["user"].ToString() + "','" + tamount.Text + "')";
            cmd3.ExecuteNonQuery();

            Response.Redirect("user_panel.aspx");
        }
    }
}