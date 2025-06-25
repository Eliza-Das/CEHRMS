using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CEHMS_PROJECT
{
    public partial class demo : System.Web.UI.Page
    {
        //SqlConnection conn = new SqlConnection("Data source=.\\SQLEXPRESS; initial catalog=CEHRMS; integrated security=True");
        string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

        SqlCommand cmd;
        static String email;
        static string Hospital;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                getHospitalList();
                ddlHospital.Items.Insert(0, "Hospitals");
                //ddlDepartment.Items.Insert(0, "Departments");
                //getDepartmentList();
                ddlDepartment.Items.Insert(0, "Departments");
                //getDoctorList();
                ddlDoctor.Items.Insert(0, "Doctors");

            }
            lblPID.Text = Session["PatientId"].ToString();
            lblName.Text = Session["PatFName"].ToString();
            if (!String.IsNullOrEmpty(Session["Photo"].ToString()))
            {
                UserPhoto.ImageUrl = Session["Photo"].ToString();
            }
            else
            {
                UserPhoto.ImageUrl = @"..\\assets2\\img\\user.png";
            }
        }
        public void getHospitalList()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT Hospital_Id,HospitalName FROM Hospital"))
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
                            ddlHospital.DataValueField = "Hospital_Id";
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
        public void getDepartmentList(string Hospital)
        {
            //string hoslist=ddlHospital.SelectedValue;
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT DepartmentId,DepartmentName FROM AppView2 WHERE Hospital_ID='" + Hospital + "'"))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            DataTable dt = new DataTable();
                            cmd.CommandType = CommandType.Text;
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            sda.Fill(dt);
                            ddlDepartment.DataSource = dt;
                            ddlDepartment.Items.Insert(0, "Departments");
                            ddlDepartment.DataBind();
                            ddlDepartment.DataTextField = "DepartmentName";
                            ddlDepartment.DataValueField = "DepartmentId";
                            ddlDepartment.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
            }

        }
        public void getDoctorList(string Dept)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT DoctorId,FirstName FROM APPVIEW WHERE DepartmentId='" + Dept + "'"))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            DataTable dt = new DataTable();
                            cmd.CommandType = CommandType.Text;
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            sda.Fill(dt);
                            ddlDoctor.DataSource = dt;
                            ddlDoctor.DataBind();
                            ddlDoctor.DataTextField = "FirstName";
                            ddlDoctor.DataValueField = "DoctorId";
                            ddlDoctor.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(constr);
            Random appid = new Random();
            int app_id = appid.Next(0, 200);
            string aid = Convert.ToString(appid.Next());
            int status = 1;
            string pid = Session["PatientId"].ToString();
            string UserName = Session["PatFname"].ToString();

            try
            {
                if (!Validate())
                {
                    lblMsg.Text = "Please enter a valid data";
                }
                else
                {
                    conn.Open();// To open DB connection
                    SqlCommand cmd = new SqlCommand("BookAppointment", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@APPID", aid);
                    cmd.Parameters.AddWithValue("@STATUS", status);
                    cmd.Parameters.AddWithValue("@PATID", pid);
                    cmd.Parameters.AddWithValue("@HOSID", ddlHospital.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@DEPTID", ddlDepartment.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@DOCID", ddlDoctor.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@APPDATE", txtDate.Text.ToString());
                    cmd.Parameters.AddWithValue("@APPTIME", txtTime.Text.ToString());
                    cmd.ExecuteNonQuery(); // To Run the QSL query
                    String msgbody = "Dear " + UserName + " your Appointment have been booked successfully at " + ddlHospital.SelectedValue.ToString() + " Hospital and your appointment date is : " + txtDate.Text.ToString() + " at time : " + txtTime.Text.ToString();
                    SendSuccess(msgbody);

                    btnCancel.Visible = false;
                    btnSubmit.Visible = false;
                    lblMsg.Text = "Appointment has been listed.Waiting for approval!!!. Check your Email";
                    conn.Close();
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert", "alert('Submited successfully');", true);
                }


            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
            }



        }
        private void SendSuccess(String msgBody)
        {
            string smtpUserName;
            string smtpPassword;
            email = Session["Email"].ToString();
            MailMessage mail = new MailMessage();
            SmtpClient smtp_Client = new SmtpClient(System.Configuration.ConfigurationSettings.AppSettings["smtpClient"]);

            smtpUserName = System.Configuration.ConfigurationSettings.AppSettings["smtpUserName"];
            smtpPassword = System.Configuration.ConfigurationSettings.AppSettings["smtpPassword"];
            mail.From = new MailAddress(smtpUserName);
            mail.To.Add(email);
            mail.Subject = "Appointment Booking In CEHRMS";
            mail.Body = msgBody;
            smtp_Client.Port = Convert.ToInt32(System.Configuration.ConfigurationSettings.AppSettings["smtpPort"]);
            smtp_Client.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
            smtp_Client.EnableSsl = Convert.ToBoolean(System.Configuration.ConfigurationSettings.AppSettings["enableSSL"]);
            smtp_Client.Send(mail);

        }


        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientDashboard.aspx", false);

        }

        protected void ddlHospital_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Hospital = ddlHospital.SelectedValue;
            getDepartmentList(Hospital);


        }

        protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            String dept = ddlDepartment.SelectedValue;
            getDoctorList(dept);

        }

        protected void ddlDoctor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public bool Validate()
        {
            if (ddlDepartment.Items.Count == 0 || ddlDoctor.Items.Count == 0 || ddlHospital.Items.Count == 0 || string.IsNullOrEmpty(txtDate.Text) || string.IsNullOrEmpty(txtTime.Text))
            {
                return false;
            }
            else
            {
                return true;
            }
        }

    }

}

