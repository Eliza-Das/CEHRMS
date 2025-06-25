using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace CEHMS_PROJECT
{
    
    public partial class UPCOMING_APPOINTMENT : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        SqlCommand cmd;
        DataTable dt;
        SqlDataAdapter sda;
        static string appId;
        static string appdt;
        static string apptm;
        static String email;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                appointment();
            }

        }
        public void appointment()
        {
            try
            {
                SqlConnection conn = new SqlConnection(constr);
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
                conn.Open();
                sda = new SqlDataAdapter();
                dt = new DataTable();
                if (!Page.IsPostBack)
                {
                    GetUser(); // Method will call at page loading
                }
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
            }
        }
        public void GetUser()
        {
            dt = new DataTable(); // Creating Object for Data Table
            sda = new SqlDataAdapter("select * from AppointmentView where PatientId='" + lblHealthId.Text.ToString() + "'", constr); //SQL Query to retrive Data from User table.
            sda.Fill(dt);   // load data into Data Table
            DataView dataView = dt.DefaultView;
            if (!string.IsNullOrEmpty(txtappId.Text.ToString()))
            {
                dataView.RowFilter = "AppointmentID LIKE '%" + txtappId.Text.ToString() + "%'";
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

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientDashboard.aspx", false);
        }

        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(constr);
            dt = new DataTable();
            sda = new SqlDataAdapter();
            conn.Open();
            String query = "Update Appointments set AppDate='" + txtDate.Text.ToString() + "' , Time='" + txtTime.Text.ToString() + "' where AppointmentID = '" + appId + "'";
            cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conn;
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            conn.Close();
            String msgbody = "Dear " + Session["PatFname"].ToString() + " your Appointment have been successfully updated and your new appointment date is : " + txtDate.Text.ToString() + " at time : " + txtTime.Text.ToString();
            SendSuccess(msgbody);
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert", "alert('Submited successfully');", true);
            lblMsg.Text = "Appointment Changed Successfully. Check your Email";
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
            mail.Subject = "Appointment Changed for CEHRMS";
            mail.Body = msgBody;
            smtp_Client.Port = Convert.ToInt32(System.Configuration.ConfigurationSettings.AppSettings["smtpPort"]);
            smtp_Client.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
            smtp_Client.EnableSsl = Convert.ToBoolean(System.Configuration.ConfigurationSettings.AppSettings["enableSSL"]);
            smtp_Client.Send(mail);

        }

        protected void lnkEdit_Click(object sender, EventArgs e)
        {
            btnCancel.Visible = true;
            btnSaveChanges.Visible = true;
            GridViewRow gvr = (GridViewRow)(((Control)sender).NamingContainer);
            int RowIndex = gvr.RowIndex;
            Label lblTime = (Label)gvr.FindControl("lblTime");
            Label lblAppID = (Label)gvr.FindControl("lblAppId");
            Label lblDate = (Label)gvr.FindControl("lblDate");
            hdnAppID.Value = lblAppID.Text;
            appId = lblAppID.Text.ToString();
            txtDate.Visible = true;
            txtTime.Visible = true;
            //string dm = lblTime.Text;
            ModifyApp(lblTime.Text, lblDate.Text);
        }
        public void ModifyApp(string time, string date)
        {
            time = txtTime.Text.ToString();
            apptm = txtTime.Text.ToString();
            date = txtDate.Text.ToString();
            appdt = txtDate.Text.ToString();
        }

        protected void gridUser_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridUser.PageIndex = e.NewPageIndex;
            GetUser();
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            GetUser();
        }
    }
}