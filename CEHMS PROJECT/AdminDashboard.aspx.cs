using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CEHMS_PROJECT
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUserName.Text = Session["EmpName"].ToString();
            lblEmpId.Text = Session["EmpId"].ToString();
        }
    }
}