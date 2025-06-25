using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CEHMS_PROJECT
{
    public partial class REV_FEEDBACK : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data source=.\\SQLEXPRESS; initial catalog=CEHRMS; integrated security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gridUser_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
    }
}