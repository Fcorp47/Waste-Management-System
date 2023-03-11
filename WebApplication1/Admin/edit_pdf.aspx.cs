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
    public partial class edit_pdf : System.Web.UI.Page
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
            cmd.CommandText = "select * from driver where id=" + id + "";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                drivername.Text = dr["drivername"].ToString();
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
            
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update driver set driver_pdf='" + path.ToString() + "' where id=" + id + "";
                cmd.ExecuteNonQuery();

                Response.Redirect("view_driver.aspx");
            }
        }
    }
}