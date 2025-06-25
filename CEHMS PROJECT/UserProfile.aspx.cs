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
using Microsoft.Ajax.Utilities;
using System.Net.Mail;
using System.Text.RegularExpressions;

namespace CEHMS_PROJECT
{
    public partial class UserProfile : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        SqlCommand cmd;
        DataTable dt;
        SqlDataAdapter sda;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                userProfile();
            }
        }
        public void userProfile()
        {

            SqlConnection conn = new SqlConnection(constr);
            lblMsg.Text = Session["PatientId"].ToString();
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
            string query = "select * from Patient where PatientId='" + lblMsg.Text.ToString() + "'";
            cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conn;
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            conn.Close();
            lblFname.Text = dt.Rows[0]["FirstName"].ToString();
            lblLname.Text = dt.Rows[0]["LastName"].ToString();
            DateTime dtt = DateTime.Parse(dt.Rows[0]["DOB"].ToString()).Date;
            lblDOB.Text = dtt.ToShortDateString();
            lblBL.Text = dt.Rows[0]["BloodGroup"].ToString();
            lblGen.Text = dt.Rows[0]["Gender"].ToString();
            lblAddress.Text = dt.Rows[0]["Address"].ToString();
            lblAdhar.Text = dt.Rows[0]["AdharNumber"].ToString();
            txtAdd.Attributes.Add("placeholder", dt.Rows[0]["Address"].ToString());
            lblMail.Text = dt.Rows[0]["Email"].ToString();
            txtMail.Attributes.Add("placeholder", dt.Rows[0]["Email"].ToString());
            lblMob.Text = dt.Rows[0]["Mobile"].ToString();
            txtMob.Attributes.Add("placeholder", dt.Rows[0]["Mobile"].ToString());
        }

        protected void btnSaveChange_Click(object sender, EventArgs e)
        {
            String column;
            if (!((txtMail.Text.ToString()).IsNullOrWhiteSpace()))
            {
                if (!(ValidateEmail(txtMail.ToString())))
                {
                    column = "Email";
                    if (!(DuplicateValueCheck(column, txtMail.Text.ToString())))
                    {
                        lblMsg.Text = "Value already exists";
                        return;
                    }
                }
                else
                {
                    lblMsg.Text = "Enter valid mail";
                    return;
                }
            }
            if (!((txtMob.Text.ToString()).IsNullOrWhiteSpace()))
            {
                if ((ValidateNumber(txtMob.ToString())))
                {
                    column = "Mobile";
                    if (!(DuplicateValueCheck(column, txtMob.Text.ToString())))
                    {
                        lblMsg.Text = "Value already exists";
                        return;
                    }
                }
                else
                {
                    lblMsg.Text = "Enter valid Phone Number";
                    return;
                }
            }
            //if (!(DuplicateValueCheck()))
            //{
            //    lblMsg.Text = "Data already exists";
            //    return;
            //}

            if (!((txtAdd.Text.ToString()).IsNullOrWhiteSpace()))
            {
                column = "Address";
                SqlQuerry(txtAdd.Text.ToString(), column);
            }
            else if (!((txtMail.Text.ToString()).IsNullOrWhiteSpace()))
            {
                column = "Email";
                SqlQuerry(txtMail.Text.ToString(), column);
            }
            else if (!((txtMob.Text.ToString()).IsNullOrWhiteSpace()))
            {
                column = "Mobile";
                SqlQuerry(txtMob.Text.ToString(), column);
            }
            else
            {
                lblMsg.Text = "You have yet to make any changes.Cancel if no changes are to be made";
            }

        }
        public void SqlQuerry(String para, String column)
        {
            try
            {
                SqlConnection conn = new SqlConnection(constr);
                conn.Open();
                dt = new DataTable();
                sda = new SqlDataAdapter();
                String query = "Update Patient set " + column + " ='" + para + "' where PatientId='" + lblMsg.Text.ToString() + "'";
                cmd = new SqlCommand(query, conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                String msgbody = "Dear " + lblFname + " your profile have been successfully updated !!!";
                //SendSuccess(msgbody);
                btnSaveChange.Visible = false;
                btnCnacel.Visible = false;
                btnEditProfile.Visible = true;
                lblMsg.Text = "Profile Updated Successfully.";
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }

        protected void btnCnacel_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx", false);
        }

        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            btnEditProfile.Visible = false;
            btnSaveChange.Visible = true;
            btnCnacel.Visible = true;
            lblAddress.Visible = false;
            txtAdd.Visible = true;
            lblMail.Visible = false;
            txtMail.Visible = true;
            lblMob.Visible = false;
            txtMob.Visible = true;
        }
        public bool ValidateNo(String num)
        {
            if (num.Any(char.IsLetter) || num.Length == 10 || !(num.IsNullOrWhiteSpace()))
            {
                return true;
            }
            else
            {
                lblMsg.Text = "Enter a valid Phone number";
                return false;
            }

        }
        public bool DuplicateValueCheck(String col, String Val)
        {
            SqlConnection conn = new SqlConnection(constr);
            conn.Open();
            sda = new SqlDataAdapter();
            dt = new DataTable();
            string query = "select * from Patient where " + col + " = '" + Val + "'";
            cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conn;
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            conn.Close();
            if (dt.Rows.Count > 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        private void SendSuccess(String msgBody)
        {
            string smtpUserName;
            string smtpPassword;

            MailMessage mail = new MailMessage();
            SmtpClient smtp_Client = new SmtpClient(System.Configuration.ConfigurationSettings.AppSettings["smtpClient"]);

            smtpUserName = System.Configuration.ConfigurationSettings.AppSettings["smtpUserName"];
            smtpPassword = System.Configuration.ConfigurationSettings.AppSettings["smtpPassword"];
            mail.From = new MailAddress(smtpUserName);
            mail.To.Add(txtMail.ToString());
            mail.Subject = "Profile Update for CEHRMS";
            mail.Body = msgBody;
            smtp_Client.Port = Convert.ToInt32(System.Configuration.ConfigurationSettings.AppSettings["smtpPort"]);
            smtp_Client.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
            smtp_Client.EnableSsl = Convert.ToBoolean(System.Configuration.ConfigurationSettings.AppSettings["enableSSL"]);
            smtp_Client.Send(mail);

        }
        public bool ValidateEmail(String em)
        {
            Regex rex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Match mtc = rex.Match(em);
            if (mtc.Success)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool ValidateNumber(String num)
        {
            if (num.Any(char.IsLetter) || num.Length != 10)
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