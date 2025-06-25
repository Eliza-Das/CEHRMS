using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CEHMS_PROJECT
{
    public partial class feedrev : System.Web.UI.Page
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

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            GetUser();
        }

        protected void gridUser_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridUser.PageIndex = e.NewPageIndex;
            GetUser();
        }

        protected void lnkReply_Click(object sender, EventArgs e)
        {
            GridViewRow gvr = (GridViewRow)(((Control)sender).NamingContainer);
            Label lblTime = (Label)gvr.FindControl("lblPatId");
            String id = lblTime.Text.ToString();
            Session["PatientId"] = id;
            Response.Redirect("feedrev.aspx", false);
        }
        public void GetUser()
        {
            //lblUserName.Text = Session["PatFname"].ToString();
            //lblEmpId.Text = Session["EmpId"].ToString();
     //     string hosid = Session["HospID"].ToString();
            dt = new DataTable(); // Creating Object for Data Table
           // sda = new SqlDataAdapter("select * from FEEDBACK_VIEW where Hospital_Id='" + hosid + "'", constr); //sql query to retrive data from user table.
            sda.Fill(dt);   // load data into Data Table
            DataView dataView = dt.DefaultView;
            if (!string.IsNullOrEmpty(txtPID.Text.ToString()))
            {
                dataView.RowFilter = "PatientId LIKE '%" + txtPID.Text.ToString() + "%'";
            }
            if (dt.Rows.Count > 0)
            {
                gridUser.DataSource = dt;         //Assigning Data Table to Gridview
                gridUser.DataBind();            //To Read the data from the Data Source
            }
            else
            {
                gridUser.DataSource = null;
                gridUser.EmptyDataText = "Data Not Found";
            }
        }
    }
}