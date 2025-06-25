using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CEHMS_PROJECT
{
    public partial class DOC_LeaveApply : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection("Data source=.\\SQLEXPRESS; initial catalog=CEHRMS; integrated security=True");
        DataTable dt;
        SqlDataAdapter sda;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        //{

        //}

        //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{

        //}

        //protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        //{

        //}

        //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{

        //}

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }
    }
}