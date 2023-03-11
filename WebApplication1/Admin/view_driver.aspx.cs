using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Org.BouncyCastle.Asn1.Esf;

namespace WebApplication1.Admin
{
    public partial class view_driver : System.Web.UI.Page
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

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from driver";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            r1.DataSource = dt;
            r1.DataBind();
        }
        public string checkpdf1(object myvalue1, object id1)
        {
            if (myvalue1 == "")
            {
                return "Not Available";
            }
            else
            {
                myvalue1 = "" + myvalue1.ToString();
                return "<a href='" + myvalue1.ToString() + "' style='color:green'>View PDF</a>";
            }
        }
        public string checkpdf2(object myvalue2, object id2)
        {
            if (myvalue2 == "")
            {
                return myvalue2.ToString();
            }
            else
            {
                return "<a href='delete_files.aspx?id1=" + id2 + "' style='color:red'>Delete PDF</a>";
            }
        }
    }
}