using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CEHMS_PROJECT
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx", false);
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx", false);
        }
    }
}