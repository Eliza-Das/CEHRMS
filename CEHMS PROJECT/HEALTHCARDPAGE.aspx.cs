using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.text;
using System;
using System.Collections.Generic;
using System.Drawing.Imaging;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZXing;

namespace CEHMS_PROJECT
{
    public partial class HEALTHCARDPAGE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GenerateCode(Session["User"].ToString());
            ReadQRCode();

        }
        private void GenerateCode(string name)
        {
            var writer = new BarcodeWriter();
            writer.Format = BarcodeFormat.QR_CODE;
            var result = writer.Write(name);
            string path = Server.MapPath("~/Image/QRImage.jpg");
            var barCodeBitMap = new Bitmap(result);


            using (MemoryStream memory = new MemoryStream())
            {
                using (FileStream fs = new FileStream(path, FileMode.Create, FileAccess.ReadWrite))
                {
                    barCodeBitMap.Save(memory, ImageFormat.Jpeg);
                    byte[] bytes = memory.ToArray();
                    fs.Write(bytes, 0, bytes.Length);
                }
            }
            Image1.Visible = true;
            Image1.ImageUrl = "~/Image/QRImage.jpg";
        }
        protected void BtnPdf_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AddHeader("Content-Disposition", "attachment; filename = Healthcard.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            printDiv.RenderControl(hw);
            Document doc = new Document(PageSize.A4, 50f, 50f, 30f, 30f);
            HTMLWorker htw = new HTMLWorker(doc);
            PdfWriter.GetInstance(doc, Response.OutputStream);
            doc.Open();
            StringReader sr = new StringReader(sw.ToString());
            htw.Parse(sr);
            doc.Close();
            Response.Write(doc);
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ReadQRCode()
        {
            lblHealthId.Text = "HealthId: " + Session["PatID"].ToString();
            lblname.Text = "Name: " + Session["UName"].ToString();
            lblDOB.Text = "DOB: " + Session["dob"].ToString();
            lblGen.Text = "Gender: " + Session["Gender"].ToString();
            lblMob.Text = "Phone: " + Session["Phone"].ToString();
        }
        protected void BtnLogin_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx", false);
        }
    }
}