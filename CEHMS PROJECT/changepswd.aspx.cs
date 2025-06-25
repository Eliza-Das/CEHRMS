using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Net.Mail;

namespace CEHMS_PROJECT
{
    public partial class changepswd : System.Web.UI.Page
    {
        
        SqlConnection constr = new SqlConnection("Data source=.\\SQLEXPRESS; initial catalog=CEHRMS; integrated security=True");
        DataTable dt;
        SqlDataAdapter sda;
        SqlCommand cmd;
       static String txtMail;
        protected void Page_Load(object sender, EventArgs e)
        {
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

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            constr.Open();
            sda = new SqlDataAdapter();
            dt = new DataTable();
            string query = "select Password ,Email from Patient where PatientId='" + Session["PatientId"].ToString() + "'";
            cmd = new SqlCommand(query, constr);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = constr;
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            String ActPass = Decrypt(dt.Rows[0]["Password"].ToString());
            txtMail = dt.Rows[0]["email"].ToString();
            String NewPass = txtNewPass.Text.ToString();
            String OldPass = txtOldPass.Text.ToString();
            String conPass = txtConfirmPass.Text.ToString();
            if (conPass != NewPass)
            {
                txtNewPass.Text = "";
                txtConfirmPass.Text = "";
                lblMsg.Text = "confirm password should be same as new password";
            }
            if (ActPass != OldPass)
            {
                lblMsg.Text = "Please enter correct previous Password";
            }
            if (ActPass == NewPass)
            {
                lblMsg.Text = "New Password cannot be the same as old Password";
            }
            if (ActPass != NewPass && ActPass == OldPass)
            {
                String query1 = "Update patient set Password='" + Encrypt(NewPass) + "' where PatientId = '" + Session["PatientId"].ToString() + "'";
                cmd = new SqlCommand(query1, constr);
                cmd.ExecuteNonQuery();
                constr.Close();
                String msgbody = "Dear " + Session["PatFName"].ToString() + " your new password is: " + txtNewPass.Text.ToString();
                SendSuccess(msgbody);
                BtnReset.Visible = false;
                BtnCancel.Visible = false;
                lblMsg.Text = "Password Changed.check your Email";
            }
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
        private void SendSuccess(String msgBody)
        {
            string smtpUserName;
            string smtpPassword;

            MailMessage mail = new MailMessage();
            SmtpClient smtp_Client = new SmtpClient(System.Configuration.ConfigurationSettings.AppSettings["smtpClient"]);

            smtpUserName = System.Configuration.ConfigurationSettings.AppSettings["smtpUserName"];
            smtpPassword = System.Configuration.ConfigurationSettings.AppSettings["smtpPassword"];
            mail.From = new MailAddress(smtpUserName);
            mail.To.Add(txtMail);
            mail.Subject = "Password Changed for CEHRMS";
            mail.Body = msgBody;
            smtp_Client.Port = Convert.ToInt32(System.Configuration.ConfigurationSettings.AppSettings["smtpPort"]);
            smtp_Client.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
            smtp_Client.EnableSsl = Convert.ToBoolean(System.Configuration.ConfigurationSettings.AppSettings["enableSSL"]);
            smtp_Client.Send(mail);

        }
        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("DASHBOARD.aspx");

        }

        private string Decrypt(string cipherText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }

    }
}