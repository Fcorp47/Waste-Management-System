using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Driver
{
    public partial class driver_panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["driver"] == null)
            {
                Response.Redirect("driver_login.aspx");
            }
        }
    }
}