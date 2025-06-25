using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CEHMS_PROJECT
{
    public partial class DoctorFee : System.Web.UI.Page
    {
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
                UserPhoto.ImageUrl = @"..\\DAssets\\img\\UserAvtar.png";
            }
        }
    }
}