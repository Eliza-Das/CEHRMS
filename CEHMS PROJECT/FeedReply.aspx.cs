using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CEHMS_PROJECT
{
    public partial class FeedReply : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Response.Redirect("ADM_GREVIANCE.aspx",false);
        }
    }
}