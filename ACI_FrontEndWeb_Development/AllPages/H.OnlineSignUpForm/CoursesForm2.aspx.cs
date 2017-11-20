using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACI_FrontEndWeb_Development.AllPages.H.OnlineSignUpForm
{
    public partial class CoursesForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                try
                {
                    tbFullName.Text = Session["FullName"].ToString();
                    tbhandphone.Text = Session["HandPhone"].ToString();                    
                    tbEmail.Text  = Session["Email"].ToString();
                    tbAddress.Text = Session["Address"].ToString();
                    tbPostalCode.Text = Session["PostalCode"].ToString();
                }
                catch (Exception)
                {
                    
                }
            }
        }

        protected void BtnNext_Click(object sender, EventArgs e)
        {
            Session["FullName"] = tbFullName.Text;
            Session["HandPhone"] = tbhandphone.Text;
            Session["Email"] = tbEmail.Text;
            Session["Address"] = tbAddress.Text;
            Session["PostalCode"] = tbPostalCode.Text;
            Response.Redirect("CoursesForm3.aspx");
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoursesForm.aspx");
        }
    }
}