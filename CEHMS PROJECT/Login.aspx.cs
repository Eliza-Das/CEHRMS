using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Drawing;
using System.Configuration;

namespace CEHMS_PROJECT
{
    public partial class Login : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        DataTable dt;
        SqlDataAdapter sda;
        SqlCommand cmd;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

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
        protected void login_Click(object sender, EventArgs e)
        {
            try
            {
                DateTime mydt = DateTime.Now;
                string dat = mydt.ToString("yyyy-MM-dd HH:mm:ss.fff");
                string zero = "0";
                SqlConnection conn = new SqlConnection(constr);
                if (ddlList.SelectedValue == "1")//UserType is Patient
                   
                {
                    conn.Open();
                    sda = new SqlDataAdapter();
                    dt = new DataTable();
                    string query = "select * from Patient where PatientId='" + txtUser.Text.ToString() + "' and Password='" + Encrypt(TxtPass.Text.Trim()) + "'";
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
                        Session["photo"] = dt.Rows[0]["Photo"].ToString();
                        Session["Email"] = dt.Rows[0]["Email"];
                        Response.Redirect("PatientDashboard.aspx", false);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('invalid');", true);
                    }

                }
                if (ddlList.SelectedValue == "2")
                {
                    conn.Open();
                    sda = new SqlDataAdapter();
                    dt = new DataTable();
                    string query = "select * from EmployeeDetails where EmployeeId='" + txtUser.Text.ToString() + "'and Password='" + TxtPass.Text.Trim() + "'";
                    cmd = new SqlCommand(query, conn);
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = conn;
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    if (dt.Rows.Count > 0)
                    {
                        Session["DocId"] = dt.Rows[0]["EmployeeId"].ToString();
                        Session["DocName"] = dt.Rows[0]["EMPLOYEE_NAME"].ToString();
                        //   Session["photo"] = dt.Rows[0]["Photo"].ToString();
                        Session["HosId"] = dt.Rows[0]["Hospital_Id"];
                        Response.Redirect("DOC_Dashboard.aspx", false);

                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('invalid');", true);

                    }
                }
                if (ddlList.SelectedValue == "4")//UserType is Admin
                {
                    conn.Open();
                    sda = new SqlDataAdapter();
                    dt = new DataTable();
                    string query = "select * from EmployeeDetails where EmployeeId='" + txtUser.Text.ToString() + "' and Password='" + TxtPass.Text.ToString() + "'";
                    cmd = new SqlCommand(query, conn);
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = conn;
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    if (dt.Rows.Count > 0)
                    {
                        if ((dt.Rows[0]["ActiveStatus"].ToString()) == zero)
                        {
                            lblMsg.Text = "Account Inactive!!! Contact Admin for activation process and further detail";
                            lblMsg.ForeColor = Color.Red;
                            return;
                        }
                        Session["EmpId"] = dt.Rows[0]["EmployeeId"].ToString();
                        Session["EmpName"] = dt.Rows[0]["EMPLOYEE_NAME"].ToString();
                        Session["HospID"] = dt.Rows[0]["Hospital_Id"].ToString();
                        Session["HosName"] = dt.Rows[0]["HospitalName"].ToString();
                        Response.Redirect("AdminDashboard.aspx", false);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('Invalid Login Detail');", true);
                    }
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = "OOPS! Something went wrong.";
            }

        }


    }
}