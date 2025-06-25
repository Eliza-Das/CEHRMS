using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace CEHMS_PROJECT
{
    public partial class PatientDashboard : System.Web.UI.Page
    {

        string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        DataTable dt;
        SqlDataAdapter sda;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

            lblHealthId.Text = Session["PatientId"].ToString();
            lblUserName.Text = Session["PatFName"].ToString();
            if (!String.IsNullOrEmpty(Session["Photo"].ToString()))
            {
                UserPhoto.ImageUrl = Session["Photo"].ToString();
            }
            else
            {
                UserPhoto.ImageUrl = @"..assetsdash/img/User%20Avtar.png";
            }
            TotalVisit();
        }
         public void TotalVisit()
        {
            try
            {
                //SqlConnection connstr = new SqlConnection(conn);
                SqlConnection conn = new SqlConnection(constr);
                conn.Open();
                sda = new SqlDataAdapter();
                dt = new DataTable();
                string query = "select COUNT(*) as Total_Visit from Appointments where PatientId = '" + lblHealthId.Text.ToString() + "'";
                cmd = new SqlCommand(query, conn);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = conn;
                sda.SelectCommand = cmd;
                sda.Fill(dt);
                if(dt.Rows.Count > 0)
                {
                    lblTotalVisit.Text = dt.Rows[0]["Total_Visit"].ToString();
                }
                else
                {
                    lblTotalVisit.Text = "0";
                }
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {

            }

        }
    }
}
