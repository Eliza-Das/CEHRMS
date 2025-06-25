using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;

namespace CEHMS_PROJECT
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data source=.\\SQLEXPRESS; initial catalog=CEHRMS; integrated security=True");
        DataTable dt;
        SqlDataAdapter sda;
        SqlCommand cmd;
        static String patid;
        static String fname;
        static String pass;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtEmail.Text))
            {
                lblMsg.Text = "Please enter your Registered email ID ";
            }
            else
            {
                if (ddlType.SelectedIndex == 1)
                {
                    conn.Open();
                    sda = new SqlDataAdapter();
                    dt = new DataTable();
                    string query = "select * from Patient where Email='" + txtEmail.Text.ToString() + "'";
                    cmd = new SqlCommand(query, conn);
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = conn;
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                    patid = dt.Rows[0]["PatientId"].ToString();
                    fname = dt.Rows[0]["FirstName"].ToString();
                    pass = Decrypt(dt.Rows[0]["Password"].ToString());
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    if (dt.Rows.Count > 0)
                    {
                        String[] OTPSChar = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" };
                        String RanOTP = GenerateOTP(6, OTPSChar);
                        hdnOTP.Value = RanOTP;
                        txtOTP.Visible = true;
                        String msgBody = "Dear User,OTP is:" + RanOTP;
                        SendSuccess(msgBody);
                        btnSubmit.Visible = false;
                        btnValidateOTP.Visible = true;
                    }
                    else
                    {
                        lblMsg.Text = "Please enter valid Email ID.";
                    }
                }
            }

        }

        protected void btnValidateOTP_Click(object sender, EventArgs e)
        {
            if (hdnOTP.Value == txtOTP.Text.Trim())
            {
                try
                {
                    String msgBody1 = "Dear " + fname + " Your HealthID is: " + patid + " & Password is: " + pass;
                    SendSuccess(msgBody1);
                    lblMsg.Text = "OTP Validated succesfully! Your Credentials has been sent to your mail ID";
                }
                catch (Exception ex)
                {
                    lblMsg.Text = ex.Message;
                }
            }
            else
            {
                lblMsg.Text = "Invalid OTP!!!";
            }

        }
        private String GenerateOTP(int OTPLen, String[] OTPSChar)
        {
            String OTP = String.Empty;
            String TempChar = String.Empty;
            Random ran = new Random();
            for (int i = 0; i < OTPLen; i++)
            {
                TempChar = OTPSChar[ran.Next(0, OTPSChar.Length)];
                OTP += TempChar;
            }
            return OTP;
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
            mail.To.Add(txtEmail.Text.Trim());
            mail.Subject = "Registration Success for CEHRMS";
            mail.Body = msgBody;
            smtp_Client.Port = Convert.ToInt32(System.Configuration.ConfigurationSettings.AppSettings["smtpPort"]);
            smtp_Client.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
            smtp_Client.EnableSsl = Convert.ToBoolean(System.Configuration.ConfigurationSettings.AppSettings["enableSSL"]);
            smtp_Client.Send(mail);

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