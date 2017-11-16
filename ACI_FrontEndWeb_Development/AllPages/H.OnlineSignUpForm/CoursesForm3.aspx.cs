using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACI_FrontEndWeb_Development.AllPages.H.OnlineSignUpForm
{
    public partial class CoursesForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                try
                {
                    DOBfillup();

                    ddlICFirstLetter.SelectedValue = Session["ICFirst"].ToString();
                    tbIdentification.Text = Session["ICNum"].ToString();
                    ddlICLastLetter.SelectedValue = Session["ICLast"].ToString();
                    ddlIdentificationType.SelectedValue = Session["ICType"].ToString();
                    ddlNationalityValue.SelectedValue = Session["Nationality"].ToString();
                    ddlday.SelectedValue = Session["DOBDay"].ToString();
                    ddlmonth.SelectedValue = Session["DOBMonth"].ToString();
                    ddlyear.SelectedValue = Session["DOBYear"].ToString();
                    ddlGenderValue.SelectedValue = Session["Gender"].ToString();
                    ddlRaceValue.SelectedValue = Session["Race"].ToString();

                }
                catch (Exception)
                {
                    DOBfillup();
                }

            }
        }
        protected void BtnNext_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                Session["ICFirst"] = ddlICFirstLetter.SelectedValue.ToString();
                Session["ICNum"] = tbIdentification.Text;
                Session["ICLast"] = ddlICLastLetter.SelectedValue.ToString();
                Session["ICType"] = ddlIdentificationType.SelectedValue.ToString();
                Session["Nationality"] = ddlNationalityValue.SelectedValue.ToString();
                Session["NationalityT"] = ddlNationalityValue.SelectedItem.Text;
                Session["DOBDay"] = ddlday.SelectedValue.ToString();
                Session["DOBMonth"] = ddlmonth.SelectedValue.ToString();
                Session["DOBYear"] = ddlyear.SelectedValue.ToString();
                Session["Gender"] = ddlGenderValue.SelectedValue.ToString();
                Session["Race"] = ddlRaceValue.SelectedValue.ToString();
                Session["RaceT"] = ddlRaceValue.SelectedItem.Text;

                Response.Redirect("CoursesForm4.aspx");
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
        protected void cvIdentificationNo_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string nric = tbIdentification.Text;
            string seven_digits_nric = "";

            try
            {
                seven_digits_nric = nric;
            }
            catch (Exception ex)
            {
            }

            //First characters of nric
            string firstChar_nric = null;
            if (ddlICFirstLetter.SelectedIndex > -1)
            {
                firstChar_nric = ddlICFirstLetter.SelectedItem.Text;
            }

            char fletter = Convert.ToChar(firstChar_nric);

            //last letter of nric
            string LChar_nric = null;
            if (ddlICLastLetter.SelectedIndex > -1)
            {
                LChar_nric = ddlICLastLetter.SelectedItem.Text;
            }

            char lletter = Convert.ToChar(LChar_nric);

            //Nric checker
            char last_char_check = generateCheckCode(fletter, seven_digits_nric);

            if (!string.IsNullOrEmpty(tbIdentification.Text) && lletter != last_char_check)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
        private char generateCheckCode(char letter, string num)
        {

            // Extract the digits
            int digit7 = Convert.ToInt32(num.Substring(6, 1));
            int digit6 = Convert.ToInt32(num.Substring(5, 1));
            int digit5 = Convert.ToInt32(num.Substring(4, 1));
            int digit4 = Convert.ToInt32(num.Substring(3, 1));
            int digit3 = Convert.ToInt32(num.Substring(2, 1));
            int digit2 = Convert.ToInt32(num.Substring(1, 1));
            int digit1 = Convert.ToInt32(num.Substring(0, 1));

            int step1 = 0;

            if (letter == 'T' || letter == 'G')
            {
                step1 = digit1 * 2 + digit2 * 7 + digit3 * 6 + digit4 * 5 +
                       digit5 * 4 + digit6 * 3 + digit7 * 2 + 4;
            }
            else
            {
                step1 = digit1 * 2 + digit2 * 7 + digit3 * 6 + digit4 * 5 +
                       digit5 * 4 + digit6 * 3 + digit7 * 2;
            }


            int step2 = step1 % 11;
            int step3 = 11 - step2;
            char code = ' ';

            if (letter == 'S' || letter == 'T')
            {


                switch (step3)
                {
                    case 1: code = 'A'; break;
                    case 2: code = 'B'; break;
                    case 3: code = 'C'; break;
                    case 4: code = 'D'; break;
                    case 5: code = 'E'; break;
                    case 6: code = 'F'; break;
                    case 7: code = 'G'; break;
                    case 8: code = 'H'; break;
                    case 9: code = 'I'; break;
                    case 10: code = 'Z'; break;
                    case 11: code = 'J'; break;
                }


                return code;

            }
            else
            {

                switch (step3)
                {
                    case 1: code = 'K'; break;
                    case 2: code = 'L'; break;
                    case 3: code = 'M'; break;
                    case 4: code = 'N'; break;
                    case 5: code = 'P'; break;
                    case 6: code = 'Q'; break;
                    case 7: code = 'R'; break;
                    case 8: code = 'T'; break;
                    case 9: code = 'U'; break;
                    case 10: code = 'W'; break;
                    case 11: code = 'X'; break;
                }

                return code;

            }// end generateCheckCode 

        }



        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoursesForm2.aspx");
        }
    }
}