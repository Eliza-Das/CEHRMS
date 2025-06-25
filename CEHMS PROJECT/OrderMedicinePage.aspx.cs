using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CEHMS_PROJECT
{
    public partial class OrderMedicinePage : System.Web.UI.Page
    {
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
                UserPhoto.ImageUrl = @"..\\DAssets\\img\\UserAvtar.png";
            }
        }
    }
}