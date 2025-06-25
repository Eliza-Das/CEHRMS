using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CEHMS_PROJECT
{
   
    public partial class Login1 : System.Web.UI.Page
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

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                if (ddlType.SelectedValue == "1")//UserType is Patient
                {
                    conn.Open();
                    sda = new SqlDataAdapter();
                    dt = new DataTable();
                    string query = "select * from Patients where PatientId='" + txtUser.Text.ToString() + "' and Password='" + Encrypt(TxtPass.Text.Trim()) + "'";
                    cmd = new SqlCommand(query, conn);
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = conn;
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    if (dt.Rows.Count > 0)
                    {
                        Session["PatientId"] = dt.Rows[0]["PatientId"].ToString();
                        Session["PatFname"] = dt.Rows[0]["FirstName"].ToString();
                        Response.Redirect("dashboard.aspx", false);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('invalid');", true);
                    }

                }
                if (ddlType.SelectedValue == "2")
                {
                    //doctor
                }
                else
                {
                    //admin
                }

            }
            catch (Exception ex)
            {
                lblMsg.Text = "OOPS!";
            }
        }
    }
}


   
        //private string Decrypt(string cipherText)
        //{
        //    string EncryptionKey = "MAKV2SPBNI99212";
        //    byte[] cipherBytes = Convert.FromBase64String(cipherText);
        //    using (Aes encryptor = Aes.Create())
        //    {
        //        Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
        //        encryptor.Key = pdb.GetBytes(32);
        //        encryptor.IV = pdb.GetBytes(16);
        //        using (MemoryStream ms = new MemoryStream())
        //        {
        //            using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
        //            {
        //                cs.Write(cipherBytes, 0, cipherBytes.Length);
        //                cs.Close();
        //            }
        //            cipherText = Encoding.Unicode.GetString(ms.ToArray());
        //        }
        //    }
        //    return cipherText;
        //}
        
       