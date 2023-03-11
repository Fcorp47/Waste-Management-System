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
    public partial class edit_bin : System.Web.UI.Page
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

            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
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
                binarea.Text = dr["area"].ToString();
                binlocality.Text = dr["locality"].ToString();
                binlandmark.Text = dr["landmark"].ToString();
                bincity.Text = dr["city"].ToString();
                DropDownList3.SelectedValue = dr["loadtype"].ToString();
                driveremail.Text = dr["driveremail"].ToString();
                DropDownList4.SelectedValue = dr["cycleperiod"].ToString();
                bestroute.Text = dr["bestroute"].ToString();
            }
        }

        protected void b1_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update bin set area='" + binarea.Text + "',locality='" + binlocality.Text + "',landmark='" + binlandmark.Text + "',city='" + bincity.Text + "',loadtype='" + DropDownList3.SelectedValue + "',driveremail='" + driveremail.Text + "',cycleperiod='" + DropDownList4.SelectedValue + "',bestroute='" + bestroute.Text + "' where id=" + id + "";
            cmd.ExecuteNonQuery();

            Response.Redirect("view_bin.aspx");

        }
    }
}