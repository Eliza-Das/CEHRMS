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
    public partial class FeedBack : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        SqlCommand cmd;
        DataTable dt;
        SqlDataAdapter sda;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblHealthId.Text = Session["PatientId"].ToString();
            lblUserName.Text = Session["PatFname"].ToString();
            if (!String.IsNullOrEmpty(Session["Photo"].ToString()))
            {
                UserPhoto.ImageUrl = Session["Photo"].ToString();
            }
            else
            {
                UserPhoto.ImageUrl = @"..\\DAssets\\img\\UserAvtar.png";
            }
            if (IsPostBack == false)
            {
                getHospitalList();
                ddlHospital.Items.Insert(0, "Hospitals");
            }

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(constr);
                int rating = Rating.CurrentRating;
                string feedback = txtreview.Text.ToString();
                int status = 1;
                string pid = Session["PatientId"].ToString();
                string UserName = Session["PatFname"].ToString();
                conn.Open();// To open DB connection
                cmd = new SqlCommand("insert into Feedback(PatientId,Hospital_Id,Rating,Feedback,Status) values(@PatId,@HosId,@Rating,@Feedback,@Status)", conn);
                cmd.Parameters.AddWithValue("@PatId", pid);
                cmd.Parameters.AddWithValue("@HosId", ddlHospital.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@Rating", rating);
                cmd.Parameters.AddWithValue("@Feedback", feedback);
                cmd.Parameters.AddWithValue("@Status", status);
                cmd.ExecuteNonQuery(); // To Run the QSL query
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert", "alert('Your Feedback Has Been Sent Successful!!!');", true);
                lblMsg.Text = "Data Save Successfully!!!";
                conn.Close();
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }
        public void getHospitalList()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT Hospital_ID,HospitalName FROM Hospital"))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            DataTable dt = new DataTable();
                            cmd.CommandType = CommandType.Text;
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            sda.Fill(dt);
                            ddlHospital.DataSource = dt;
                            ddlHospital.DataBind();
                            ddlHospital.DataTextField = "HospitalName";
                            ddlHospital.DataValueField = "Hospital_ID";
                            ddlHospital.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
            }

        }
    }
}