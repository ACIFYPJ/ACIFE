using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACI_FrontEndWeb_Development.AllPages.H.OnlineSignUpForm
{
    public partial class CoursesForm4 : System.Web.UI.Page
    {
        private static bool NewsBool = false;
        private static bool FBBool = false;
        private static bool WordOfMouthBool = false;
        private static bool MagazineBool = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                try
                {
                    ddlHighestEducationValue.SelectedValue = Session["HighestEdu"].ToString();
                    DDLSenglish.SelectedValue = Session["Senglish"].ToString();
                    DDLSchinese.SelectedValue = Session["Schinese"].ToString();
                    DDLSothers.SelectedValue = Session["Sothers"].ToString();
                    DDLWenglish.SelectedValue = Session["Senglish"].ToString();
                    DDLWchinese.SelectedValue = Session["Schinese"].ToString();
                    DDLWothers.SelectedValue = Session["Sothers"].ToString();
                    DDLSponsorship.SelectedValue = Session["SponsorShip"].ToString();
                    chkFacebook.Checked = FBBool;
                    chkMagazine.Checked = MagazineBool;
                    chkWordofMouth.Checked = WordOfMouthBool;
                    chkNewspaper.Checked = NewsBool;
                }
                catch (Exception)
                {

                }
            }
           
        }

        protected void BtnNext_Click(object sender, EventArgs e)
        {

            if (ValidationForCheckBox() == false)
            {
                lblchkboxerror.Visible = true;
            }
            else
            {
                lblchkboxerror.Visible = false;
                string referralsource = "";
                if (chkNewspaper.Checked)
                {
                    NewsBool = true;
                    if (referralsource != "")
                    {
                        referralsource = referralsource + ";" + "NEWSP";
                    }
                    else
                    {
                        referralsource = "NEWSP";
                    }
                }
                else
                {
                    NewsBool = false;
                }
                if (chkMagazine.Checked)
                {
                    MagazineBool = true;
                    if (referralsource != "")
                    {

                        referralsource = referralsource + ";" + "MAG";
                    }
                    else
                    {
                        referralsource = "MAG";
                    }
                }
                else
                {
                    MagazineBool = false;
                }
                if (chkFacebook.Checked)
                {
                    FBBool = true;
                    if (referralsource != "")
                    {
                        referralsource = referralsource + ";" + "FB";
                    }
                    else
                    {
                        referralsource = "FB";
                    }
                }
                else
                {
                    FBBool = false;
                }
                if (chkWordofMouth.Checked)
                {
                    WordOfMouthBool = true;
                    if (referralsource != "")
                    {
                        referralsource = referralsource + ";" + "WOM";
                    }
                    else
                    {
                        referralsource = "WOM";
                    }
                }
                else
                {
                    WordOfMouthBool = false;
                }
                //next page
                Session["HighestEdu"] = ddlHighestEducationValue.SelectedValue.ToString();
                Session["HighestEduT"] = ddlHighestEducationValue.SelectedItem.Text;

                Session["Senglish"] = DDLSenglish.SelectedValue.ToString();
                Session["Schinese"] = DDLSchinese.SelectedValue.ToString();
                Session["Sothers"] = DDLSothers.SelectedValue.ToString();
                Session["Wenglish"] = DDLWenglish.SelectedValue.ToString();
                Session["Wchinese"] = DDLWchinese.SelectedValue.ToString();
                Session["Wothers"] = DDLWothers.SelectedValue.ToString();

                Session["SenglishT"] = DDLSenglish.SelectedItem.Text;
                Session["SchineseT"] = DDLSchinese.SelectedItem.Text;
                Session["SothersT"] = DDLSothers.SelectedItem.Text;
                Session["WenglishT"] = DDLWenglish.SelectedItem.Text;
                Session["WchineseT"] = DDLWchinese.SelectedItem.Text;
                Session["WothersT"] = DDLWothers.SelectedItem.Text;

                Session["Referral"] = referralsource;
                Session["SponsorShip"] = DDLSponsorship.SelectedValue.ToString();
                Session["SponsorShipT"] = DDLSponsorship.SelectedItem.Text;
                Response.Redirect("CoursesForm5.aspx");
            }
        }

        private bool ValidationForCheckBox()
        {
            if (chkNewspaper.Checked || chkMagazine.Checked || chkFacebook.Checked || chkWordofMouth.Checked)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoursesForm3.aspx");
        }
    }
}