using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer.E.Events;
using BussinessLogicLayer.E.Events;
namespace ACI_FrontEndWeb_Development.AllPages.E.Events
{
    public partial class B_EventForm : System.Web.UI.Page
    {
        private static int EventID;
        private static string EventTitle;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LoadCountryList countrys = new LoadCountryList();
                ddlnationality.DataSource = countrys.CountryList();
                ddlnationality.DataBind();
                ddlnationality.Items.FindByValue("Singapore").Selected = true;
                DOBfillup();
                EventID = int.Parse(Request.QueryString["EventID"]);
                EventTitle = Request.QueryString["EventTitle"];
               // EventID = 5;
               // EventTitle = "Testing Event";
            }
        }

        protected void chkOthers_CheckedChanged(object sender, EventArgs e)
        {
            if (chkOthers.Checked)
            {
                tbOthers.Visible = true;
                lblOthers.Visible = true;
                RequiredFieldValidator4.Enabled = true;
            }
            else
            {
                lblOthers.Visible = false;
                tbOthers.Visible = false;
                RequiredFieldValidator4.Enabled = false;
            }
        }

        protected void BtnSignUpEvent_Click(object sender, EventArgs e)
        {
            if (chkTermsAndConditions.Checked)
            {
                lblTermsAndConditions.Visible = false;
                if (ValidationForCheckBox() == false)
                {
                    lblchkboxerror.Visible = true;
                }
                else
                {
                    lblchkboxerror.Visible = false;
                    SendFormValueToSever();
                }
            }
            else
            {
                lblTermsAndConditions.Visible = true;
            }


        }


        private bool ValidationForCheckBox()
        {
            if (chkEvents.Checked || chkFacebook.Checked || chkMagazine.Checked || chkNewspaper.Checked || chkOthers.Checked || chkWordOfMouth.Checked)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        private void SendFormValueToSever()
        {
            string FullName = tbFullName.Text;
            string NRIC = tbNRIC.Text;
            string Email = tbEmail.Text;
            int Handphone = int.Parse(tbhandphone.Text);
            string reason = "";
            string ReferralSource = "";
            if (tbreason.Text != "")
            {
                reason = tbreason.Text;
            }
            if (chkEvents.Checked)
            {
                ReferralSource += "Events;";
            }
            if (chkFacebook.Checked)
            {
                ReferralSource += "Facebook;";
            }
            if (chkMagazine.Checked)
            {
                ReferralSource += "Magazine;";
            }
            if (chkNewspaper.Checked)
            {
                ReferralSource += "Newspaper;";
            }
            if (chkWordOfMouth.Checked)
            {
                ReferralSource += "Word Of Mouth;";
            }
            if (chkOthers.Checked)
            {
                ReferralSource += tbOthers.Text + ";";
            }
            string Day = ddlday.SelectedValue;
            string Month = ddlmonth.SelectedValue;
            string Year = ddlyear.SelectedValue;
            string dobcombined = Day + "/" + Month + "/" + Year;
            DateTime DOB = DateTime.ParseExact(dobcombined, "d/MMMM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
            string nationality = ddlnationality.SelectedValue;
            string HighestEducation = ddlhighesteducation.SelectedValue;
            string CurrentEmployment = ddlcurrentemployment.SelectedValue;
            DateTime RegistrationDate = DateTime.Now;
            int TnC = 1;
            PassToBLL(EventID, EventTitle, FullName, NRIC, Email, Handphone, ReferralSource, reason, DOB, nationality, HighestEducation, CurrentEmployment, RegistrationDate, TnC);
        }

        private void PassToBLL(int EventID, string EventTitle, string FullName, string NRIC, string Email, int Handphone, string ReferralSource, string reason, DateTime DOB, string nationality, string HighestEducation, string CurrentEmployment, DateTime RegistrationDate, int TnC)
        {
            EventsBLL InsertIntoEvents = new EventsBLL();
            string ex;
            int result = InsertIntoEvents.InsertEventForm(EventID, EventTitle, FullName, NRIC, Email, Handphone, ReferralSource, reason, DOB, nationality, HighestEducation, CurrentEmployment, RegistrationDate, TnC, out ex);

            if (result >= 1)
            {
                // Label1.Text = FullName + NRIC + Email + Handphone + ReferralSource + reason + DOB.ToString() + nationality + HighestEducation + CurrentEmployment;             
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "ShowPopup();", true);
                this.lblMessage.Text = "Your registration is done successfully! Our team will contact you shotly";
            }
            else
            {
                Label1.Text = ex.ToString();
            }
        }

        private void DOBfillup()
        {

            for (int i = 1900; i <= 2017; i++)
            {
                ddlyear.Items.Add(i.ToString());
            }
            for (int i = 1; i <= 31; i++)
            {
                ddlday.Items.Add(i.ToString());
            }
            ddlyear.Items.FindByValue(System.DateTime.Now.Year.ToString()).Selected = true;  //set current year as selected
        }
    }
}