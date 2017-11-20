using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACI_FrontEndWeb_Development.AllPages.H.OnlineSignUpForm
{
    public partial class CoursesForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                try
                {
                    tbcompany.Text = Session["Company"].ToString();
                    ddlEmploymentStatus.SelectedValue = Session["EmploymentStatus"].ToString();
                    tbPosition.Text = Session["Position"].ToString();
                    tbSalary.Text = Session["Salary"].ToString();
                    tbStartDate.Text = Session["JobStartDate"].ToString();
                    tbEndDate.Text = Session["JobEndDate"].ToString();
                    if (Session["CurrentEmployment"].ToString() == "Y")
                    {
                        rdoYes.Checked = true;
                    }
                    else
                    {
                        rdoNo.Checked = true;
                    }
                }
                catch (Exception)
                {

                }
            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            if (checkstartandenddate() == true)
            {
                Session["Company"] = tbcompany.Text;
                Session["EmploymentStatus"] = ddlEmploymentStatus.SelectedValue.ToString();
                Session["EmploymentStatusT"] = ddlEmploymentStatus.SelectedItem.Text;

                Session["Position"] = tbPosition.Text;
                Session["Salary"] = tbSalary.Text;
                Session["JobStartDate"] = tbStartDate.Text;
                Session["JobEndDate"] = tbEndDate.Text;
                if (rdoYes.Checked)
                {
                    Session["CurrentEmployment"] = "Y";
                }
                else
                {
                    Session["CurrentEmployment"] = "N";
                }
                Response.Redirect("CoursesFormFinal.aspx");
            }
        }
        private bool checkstartandenddate()
        {
            if (tbStartDate.Text == "" || tbEndDate.Text == "")
            {
                return false;
            }
            else
            {
                DateTime start = DateTime.Parse(tbStartDate.Text);
                DateTime end = DateTime.Parse(tbEndDate.Text);

                if (end < start)
                {
                    lblendatevalid.Visible = true;
                    return false;
                }
                else
                {
                    lblendatevalid.Visible = false;
                    return true;
                }
            }

        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoursesForm4.aspx");
        }
    }
}