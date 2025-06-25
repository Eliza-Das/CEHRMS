using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CEHMS_PROJECT
{
    public partial class ADM_GREVIANCE : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        SqlCommand cmd;
        DataTable dt;
        SqlDataAdapter sda;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               GetUser();
            }

        }
        public void GetUser()
        {
           //lblUserName.Text = Session["EmpName"].ToString();
           // lblEmpId.Text = Session["EmpId"].ToString();
           // string hosid = Session["HospID"].ToString();
            //dt = new DataTable(); // Creating Object for Data Table
            //sda = new SqlDataAdapter("SELECT * FROM FEEDBACK_VIEW WHERE Hospital_Id = '" + hosid + "' ", constr); //SQL Query to retrive Data from User table.
            //sda.Fill(dt);   // load data into Data Table
            //DataView dataView = dt.DefaultView;
            ////if (!string.IsNullOrEmpty(txtPatId.Text.ToString()))
            ////{
            ////    dataView.RowFilter = "PatientId LIKE '%" + txtPatId.Text.ToString() + "%'";
            ////}
            //if (dt.Rows.Count > 0)
            //{
            //    gridUser.DataSource = dt;         //Assigning Data Table to Gridview
            //    gridUser.DataBind();            //To Read the data from the Data Source
            //}
            //else
            //{
            //    gridUser.DataSource = null;
            //    gridUser.EmptyDataText = "Data Not Found";
            //}
        }

        protected void lnkReply_Click(object sender, EventArgs e)
        {
            GridViewRow gvr = (GridViewRow)(((Control)sender).NamingContainer);
            Label lblTime = (Label)gvr.FindControl("lblPatId");
            String id = lblTime.Text.ToString();
            Session["PatientId"] = id;
            Response.Redirect("FeedReply.aspx", false);

        }

        protected void gridUser_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridUser.PageIndex = e.NewPageIndex;
            GetUser();
        }
    }
}