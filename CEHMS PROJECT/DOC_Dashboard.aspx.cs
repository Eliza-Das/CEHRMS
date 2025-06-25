using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CEHMS_PROJECT
{
    public partial class DOC_Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDocId.Text = Session["DocId"].ToString();
            lblName.Text = Session["DocName"].ToString();
            String hospitalId=Session["HosId"].ToString();
            UserPhoto.ImageUrl = @"assetsdash/img/User%20Avtar.png";
        }
    }
}