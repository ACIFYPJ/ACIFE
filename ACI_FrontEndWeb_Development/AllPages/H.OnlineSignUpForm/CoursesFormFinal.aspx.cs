using BussinessLogicLayer;
using BussinessLogicLayer.A.Courses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACI_FrontEndWeb_Development.AllPages.H.OnlineSignUpForm
{
    public partial class CoursesFormFinal : System.Web.UI.Page
    {
        ServiceReference.Service1Client client = new ServiceReference.Service1Client();
        OnlineSignUp BLL = new OnlineSignUp();

        //personal particulars (Contact details)
        private static string FullName;
        private static string ContactNumber;
        private static string Email;
        private static string Address;
        private static string PostalCode;

        //personal particulars (personal details)
        private static string NRIC;
        private static string Nationality;
        private static string NRICtype;
        private static string Gender;
        private static string Race;
        private static string DOB;

        //program applicataion
        private static string ProgramID;
        private static string ProgramTitle;
        private static string ClassCode;
        private static string CourseDate;
        private static string Sponsorship;
        

        //education
        private static string HighestEdu;
        private static string SpokenEnglish;
        private static string WrittenEnglish;
        private static string SpokenChinese;
        private static string WrittenChinese;
        private static string SpokenOthers;
        private static string WrittenOthers;
        private static string gettoknow;


        //employment
        private static string Companyname;
        private static string Employmentstatus;
        private static string Position;
        private static string Salary;
        private static string JobStartDate;
        private static string JobEndDate;
        private static string CurrentEmployment;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                GetFromSessions();
                loadpage();
                StoreToDB();
                Session.Clear();
            }
        }
        private void GetFromSessions()
        {
            FullName = Session["FullName"].ToString();
            ContactNumber = Session["HandPhone"].ToString();
            Email = Session["Email"].ToString();
            Address = Session["Address"].ToString() ;
            PostalCode = Session["PostalCode"].ToString();
            //personal particulars (personal details)
            NRIC = Session["ICFirst"].ToString() + Session["ICNum"].ToString() + Session["ICLast"].ToString();
            Nationality = Session["Nationality"].ToString();
            NRICtype = Session["ICType"].ToString();
            Gender = Session["Gender"].ToString();
            Race = Session["Race"].ToString();
            DOB = Session["DOBDay"].ToString() + Session["DOBMonth"].ToString() + Session["DOBYear"].ToString();

            //program applicataion
            ProgramTitle = Session["CourseTitle"].ToString();
            ProgramID = Session["CourseID"].ToString();
            ClassCode = Session["ClassCode"].ToString();
            CourseDate = Session["CourseDate"].ToString();
            Sponsorship = Session["SponsorShip"].ToString();

            //education
            HighestEdu = Session["HighestEdu"].ToString();
            SpokenEnglish = Session["Senglish"].ToString();
            WrittenEnglish = Session["Wenglish"].ToString();
            SpokenChinese = Session["Schinese"].ToString();
            WrittenChinese = Session["Wchinese"].ToString();
            SpokenOthers = Session["Sothers"].ToString();
            WrittenOthers = Session["Wothers"].ToString();
            gettoknow = Session["Referral"].ToString();

            //employment
            Companyname = Session["Company"].ToString();
            Employmentstatus = Session["EmploymentStatus"].ToString();
            Position = Session["Position"].ToString();
            Salary = Session["Salary"].ToString();
            JobStartDate = Session["JobStartDate"].ToString();
            JobEndDate = Session["JobEndDate"].ToString();
            CurrentEmployment = Session["CurrentEmployment"].ToString();

        }

        private void loadpage()
        {
            //personal contact details
            lblfullname.Text = FullName;
            lblcontactnum.Text = ContactNumber;
            lblemail.Text = Email;
            lbladdress.Text = Address + ", Singapore " + PostalCode;

            //personal details
            lblNric.Text = NRIC;
            lblnationality.Text = Session["NationalityT"].ToString();
            lblgender.Text = Gender;
            lblrace.Text = Session["RaceT"].ToString();
            lbldob.Text = DOB;

            //pogram application
            lblcoursetitle.Text = ProgramTitle;
            lblcoursedate.Text = CourseDate;
            lblsponsorship.Text = Session["SponsorShipT"].ToString();

            //education
            lblhighestedu.Text = Session["HighestEduT"].ToString();
            lblSeng.Text = Session["SenglishT"].ToString();
            lblWend.Text = Session["WenglishT"].ToString();

            lblSchi.Text = Session["SchineseT"].ToString();
            lblWchi.Text = Session["WchineseT"].ToString();

            lblSothers.Text = Session["SothersT"].ToString();
            lblWothers.Text = Session["WothersT"].ToString();

            //employment
            lblcompany.Text = Companyname;
            lblemploystatus.Text = Session["EmploymentStatusT"].ToString();
            lblposition.Text = Position;
            lblsalary.Text = "SGD " + Salary + " / Month";
            lbljobfrom.Text = JobStartDate;
            lbljobto.Text = JobEndDate;
            if (CurrentEmployment == "N")
            {
                lblEmployment.Text = "Previous Employment";
            }
            else
            {
                lblEmployment.Text = "Current Employment";
            }


        }
        private void StoreToDB()
        {
            string message = client.InsertCourseApplication(FullName, ContactNumber, Email, Address, PostalCode, NRIC, Nationality, NRICtype, Gender, Race, DOB, ProgramID, ClassCode, Sponsorship, HighestEdu, SpokenEnglish, SpokenChinese, SpokenOthers, WrittenEnglish, WrittenChinese, WrittenOthers, gettoknow, Companyname, Employmentstatus, Position, Salary, JobStartDate, JobEndDate, CurrentEmployment, ProgramTitle);
            //string message = BLL.InsertCourseApplication(FullName, ContactNumber, Email, Address, PostalCode, NRIC, Nationality, NRICtype, Gender, Race, DOB, ProgramID, ClassCode, Sponsorship, HighestEdu, SpokenEnglish, SpokenChinese, SpokenOthers, WrittenEnglish, WrittenChinese, WrittenOthers, gettoknow, Companyname, Employmentstatus, Position, Salary, JobStartDate, JobEndDate, CurrentEmployment, ProgramTitle);
          // lblcoursetitle.Text = message;
        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoursesForm.aspx");
        }
    }
}