﻿using System;
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
    public partial class my_profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\WMS\WebApplication1\WebApplication1\App_Data\wms.mdf;Integrated Security=True");
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

            if (IsPostBack) return;

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from user_master where emailID ='" + Session["user"].ToString() + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                emailID.Text = dr["emailID"].ToString();
                username.Text = dr["username"].ToString();
                address.Text = dr["address"].ToString();
                phone.Text = dr["phone"].ToString();
                
            }
        }

        protected void b1_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update user_master set emailID='" + emailID.Text + "',username='" + username.Text + "',address='" + address.Text + "',phone='" + phone.Text + "' where emailID ='" + Session["user"].ToString() + "'";
            cmd.ExecuteNonQuery();

            Response.Redirect("user_panel.aspx");

        }
    }
}
