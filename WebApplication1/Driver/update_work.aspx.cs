using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication1.Driver
{
    public partial class update_work : System.Web.UI.Page
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

            if (Session["driver"] == null)
            {
                Response.Redirect("driver_login.aspx");
            }


            id = Convert.ToInt32(Request.QueryString["id"].ToString());

            if (IsPostBack) return;

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from bin where driveremail ='" + Session["driver"].ToString() + "' and id=" + id + "";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                driveremail.Text = dr["driveremail"].ToString();
                binID.Text = dr["id"].ToString();
                binArea.Text = dr["area"].ToString();
            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            /*DateTime d1 = Convert.ToDateTime(DateTime.Now.Date.ToString("yyyy/MM/dd"));
              DateTime d2 = Convert.ToDateTime(DateTime.Now.ToString("HH : mm : ss"));*/
            string d1 = DateTime.Now.Date.ToString("dd-MM-yyyy");
            string d2 = DateTime.Now.ToString("hh:mm:ss tt");

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into work_report values ('" + binID.Text + "','" + binArea.Text + "','" + DropDownList1.SelectedValue + "','" + d2 + "','" + d1 +"','"+ driveremail.Text + "')";
            cmd.ExecuteNonQuery();

            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "update bin set status='" + DropDownList1.SelectedValue + "' where id='" + binID.Text + "' and driveremail='" + driveremail.Text + "'";
            cmd2.ExecuteNonQuery();

            Response.Redirect("work.aspx");
        }
    }
}