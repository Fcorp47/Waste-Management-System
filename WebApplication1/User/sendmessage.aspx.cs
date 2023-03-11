using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication1.User
{
    public partial class sendmessage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        { 
            if (Session["user"] == null)
            {
                Response.Redirect("user_login.aspx");
            }
        }
    }
}