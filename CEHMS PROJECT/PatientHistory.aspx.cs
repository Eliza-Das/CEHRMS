using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CEHMS_PROJECT
{
    public partial class PatientHistory : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data source=.\\SQLEXPRESS; initial catalog=CEHRMS; integrated security=True");
        SqlCommand cmd;
        DataTable dt;
        SqlDataAdapter sda;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetUser(); // Method will call at page loading
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            GetUser();
        }

        protected void btnClrSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientHistory.aspx", false);
        }

        protected void gridUser_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridUser.PageIndex = e.NewPageIndex;
            GetUser();
        }
        public void GetUser()
        {
            //lblUserName.Text = Session["EmpName"].ToString();
            //lblEmpId.Text = Session["EmpId"].ToString();
           // string hosid = Session["HospID"].ToString();
            //dt = new DataTable(); // Creating Object for Data Table
          //  sda = new SqlDataAdapter("select DoctorID,PatientId,DateOfVisit from PatHisView where Hospital_Id = '" + hosid + "' ", constr); //SQL Query to retrive Data from User table. where Hospital_ID='" + lblMsg.Text.ToString() + "'"
            //sda.Fill(dt);   // load data into Data Table
           // DataView dataView = dt.DefaultView;
            //if (!string.IsNullOrEmpty(txtPatId.Text.ToString()))
            //{
            //    dataView.RowFilter = "PatientId LIKE '%" + txtPatId.Text.ToString() + "%'";
            //}
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
    }
}