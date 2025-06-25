using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Net.Mail;

namespace CEHMS_PROJECT
{
    public partial class Patient_Registration : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data source=.\\SQLEXPRESS; initial catalog=CEHRMS; integrated security=True");
        DataTable dt;
        SqlDataAdapter sda;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private string Encrypt(string clearText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }


        protected void btnPatientRegister_Click(object sender, EventArgs e)
        {
            Random psw = new Random();
            int pswd = psw.Next(0, 10);
            string passwd = Convert.ToString(psw.Next());
            try
            {
                bool f = ValidateName(txtFName.Text.ToString());
                bool l = ValidateName(txtLName.Text.ToString());
                bool adhaar = ValidateAdhaar(txtAdhaarno.Text.ToString());
                bool BoolEM = ValidateEmail(txtMail.Text.ToString());
                bool BoolNO = ValidateNo(txtMob.Text.ToString());
                if (!(f && l && adhaar && BoolEM && BoolNO))
                {
                    lblMsg.Text = " please Enter correct credentials";
                    return;
                }
                if (!BoolEM)
                {
                    lblMsg.Text = "Please enter valid Email";
                    return;
                }
                if (!BoolNO)
                {
                    lblMsg.Text = "PLease Enter Valid Phone number";
                    return;
                }
                if (!adhaar)
                {
                    lblMsg.Text = "Please Enter Valid Adhaar Number";
                    return;
                }
                if (!(f || l))
                {
                    lblMsg.Text = "Please Enter Valid Name";
                    return;
                }
                bool DVC = DuplicateValueCheck();
                if (!DVC)
                {
                    lblMsg.Text = "User already existing ";
                    return;
                }
                String PatientName = txtFName.Text.ToString();
                String Adhaarno = txtAdhaarno.Text.ToString();
                String PatientId = PatientName.Substring(0, 2) + Adhaarno.Substring(Adhaarno.Length - 4);
                Session["PatID"] = PatientId;
                String UserName = txtFName.Text.ToString() + " " + txtLName.Text.ToString();
                Session["UName"] = UserName;
                String photo = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UserPhoto/" + photo));
                String image = "../UserPhoto/" + photo;
                SqlCommand cmd = new SqlCommand("REGISTRATION", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Photo", image);
                cmd.Parameters.AddWithValue("@PATID", PatientId);
                cmd.Parameters.AddWithValue("@USERN", UserName);
                cmd.Parameters.AddWithValue("@FNAME", txtFName.Text.ToString());
                cmd.Parameters.AddWithValue("@LNAME", txtLName.Text.ToString());
                cmd.Parameters.AddWithValue("@DOB", txtDOB.Text.ToString());
                cmd.Parameters.AddWithValue("@TXTGEN", ddlGen.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@TXTBL", ddlBl.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@TXTADHAARNO", txtAdhaarno.Text.ToString());
                cmd.Parameters.AddWithValue("@TXTMAIL", txtMail.Text.ToString());
                cmd.Parameters.AddWithValue("@TXTMOB", txtMob.Text.ToString());
                cmd.Parameters.AddWithValue("@TXTADD", txtAdd.Text.ToString());
                cmd.Parameters.AddWithValue("@TXTPASS", Encrypt(passwd));
                conn.Open();
                int res = cmd.ExecuteNonQuery();
                if (res == 0)
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert", "alert('Your Data is not Saved!!!');", true);
                }
                else
                {

                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert", "alert('Registration Successful!!!');", true);

                }
                conn.Close();

                String msgBody = "Dear " + txtFName.Text.ToString() + " Your HealthId is: " + PatientId + " User Name is: " + UserName + " & Password is: " + txtPass.Text.ToString();
                SendSuccess(msgBody);
                Response.Redirect("Login.aspx", false);
                GenerateHealthCard();
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
                // lblMsg.Text = "Oops!! Something went wrong";
                lblMsg.Text = ex.Message;
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
            mail.To.Add(txtMail.Text.Trim());
            mail.Subject = "Registration Success for CEHRMS";
            mail.Body = msgBody;
            smtp_Client.Port = Convert.ToInt32(System.Configuration.ConfigurationSettings.AppSettings["smtpPort"]);
            smtp_Client.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
            smtp_Client.EnableSsl = Convert.ToBoolean(System.Configuration.ConfigurationSettings.AppSettings["enableSSL"]);
            smtp_Client.Send(mail);

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }
        public void GenerateHealthCard()
        {
            Session["User"] = $"Name:{Session["UName"].ToString()}, HealthId:{Session["PatID"].ToString()}, Date Of Birth:{txtDOB.Text.ToString()}, Gender:{ddlGen.SelectedValue.ToString()}, Phone:{txtMob.Text.ToString()}";
            Session["dob"] = txtDOB.Text.ToString();
            Session["Gender"] = ddlGen.SelectedValue.ToString();
            Session["Phone"] = txtMob.Text.ToString();
            Response.Redirect("HEALTHCARDPAGE.aspx", false);
           
        }
        public bool ValidateName(String name)
        {
            if (name.Any(char.IsDigit))
            {
                return false;
            }
            else
            {
                return true;
            }
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
                lblMsg.Text = "Enter valid Email";
                return false;
            }
        }
        public bool ValidateAdhaar(String ad)
        {
            if (ad.Length != 12 || ad.Any(char.IsLetter))
            {
                lblMsg.Text = "Enter valid Adhaar number";
                return false;
            }
            else
            {
                return true;
            }
        }
        public bool ValidateNo(String num)
        {
            if (num.Any(char.IsLetter) || num.Length != 10)
            {
                return false;
            }
            else
            {
                //lblMsg.Text = "Enter a valid Phone number";
                return true;
            }

        }
         public bool DuplicateValueCheck()
        {
            conn.Open();
            sda = new SqlDataAdapter();
            dt = new DataTable();
            string query = "select * from Patient where Adharnumber='" + txtAdhaarno.Text.ToString() + "' or email='" + txtMail.Text.ToString() + "' or mobile='" + txtMob.Text.ToString() + "'";
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

    }
}
