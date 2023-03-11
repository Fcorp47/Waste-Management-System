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
    public partial class add_bin : System.Web.UI.Page
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
        protected void b1_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into bin values ('" + binarea.Text + "','" + binlocality.Text + "','" +binlandmark.Text + "','" + bincity.Text + "','" + DropDownList3.SelectedValue + "','" + driveremail.Text + "','" + DropDownList4.SelectedValue + "','" + bestroute.Text + "','On Progress')";
            cmd.ExecuteNonQuery();

            msg.Style.Add("display", "block");
        }
    }
}