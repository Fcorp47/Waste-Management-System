using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication1.User
{
    public partial class ticket : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\WMS\WebApplication1\WebApplication1\App_Data\wms.mdf;Integrated Security=True");
        int id;
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

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from bin where id=" + id + "";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                binid.Text = dr["id"].ToString();
                binarea.Text = dr["area"].ToString();
            }

            useremailID.Text = Session["user"].ToString();
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into complaint_master values ('" + useremailID.Text + "','" + binid.Text + "','" + binarea.Text + "','" + complaint.Text + "','Pending')";
            cmd.ExecuteNonQuery();

            Response.Redirect("my_complaints.aspx");
        }
    }
}