using BussinessLogicLayer.A.Courses;
using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACI_FrontEndWeb_Development.AllPages.A.CoursesFolder
{
    public partial class CoursesDetailed : System.Web.UI.Page
    {
        ServiceReference.Service1Client client = new ServiceReference.Service1Client();

        CoursesDAL DAL = new CoursesDAL();
        CoursesBLL BLL = new CoursesBLL();
        private static int courseID = -1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                courseID = int.Parse(Request.QueryString["CourseID"].ToString());
                //load table
                loadtabledata();
                loadcoursedetails();
                loadclasses();
            }

        }
        private void loadclasses()
        {
            string xmldt = client.getClasses(courseID);
            StringReader xr = new StringReader(xmldt);
            DataTable dt = new DataTable();
            dt.ReadXml(xr);
            //DataTable dt = DAL.getClasses(courseID);
            bool hasRows = dt.Rows.GetEnumerator().MoveNext();
            if (hasRows == false)
            {
                ClassesRPT.Visible = false;
                lblclassesT.Visible = false;
            }
            ClassesRPT.DataSource = dt;
            ClassesRPT.DataBind();
        }
        private void loadtabledata()
        {
            DataTable dtcert, dtdip, dtspecdip, dtshort, dtcus;
            dtcert = BLL.getCertCourse();
            dtdip = BLL.getDipCourse();
            dtshort = BLL.getShortCourse();
            dtspecdip = BLL.getSpecDipCourse();
            dtcus = BLL.getSpecDipCourse();

            certRPT.DataSource = dtcert;
            certRPT.DataBind();

            dipRPT.DataSource = dtdip;
            dipRPT.DataBind();

            specRPT.DataSource = dtspecdip;
            specRPT.DataBind();

            shortRPT.DataSource = dtshort;
            shortRPT.DataBind();

            custoRPT.DataSource = dtcus;
            custoRPT.DataBind();
        }

        private void loadcoursedetails()
        {
            string xmldt = client.getcourseDetails(courseID);
            StringReader xr = new StringReader(xmldt);
            DataTable dt = new DataTable();
            dt.ReadXml(xr);
            //dt = DAL.getcourseDetails(courseID);
            string title = "";
            string overview = "";
            string targetaudience = "";
            string core = "";
            string elective = "";
            string coursefee = "";
            string refund = "";
            string entryreq = "";
            string otherinfo = "";
            //string classes = "";

            foreach (DataRow row in dt.Rows)
            {
                title = row["CourseName"].ToString();
                overview = row["Overview"].ToString();
                targetaudience = row["TargetAudience"].ToString();
                core = row["CoreModules"].ToString();
                elective = row["ElectiveModules"].ToString();
                coursefee = row["CourseFees"].ToString();
                refund = row["RefundPolicy"].ToString();
                entryreq = row["EntryRequirements"].ToString();
                otherinfo = row["OtherInfo"].ToString();
            }

            if (title != "")
            {
                lblTitle.Text = title;
            }
            if (overview != "")
            {
                lblOverviewT.Visible = true;
                lblOverview.Text = overview;
            }
            else
            {
                lblOverviewT.Visible = false;
                lblOverview.Visible = false;
            }
            if (targetaudience != "")
            {

                lblTargetAudienceT.Visible = true;
                lblTargetAudience.Text = targetaudience;
            }
            else
            {
                lblTargetAudienceT.Visible = false;
                lblTargetAudience.Visible = false;
            }
            if (core != "")
            {
                lblCoreT.Visible = true;
                string[] arr = core.Split(new string[] { ";" }, StringSplitOptions.None);
                string displaycore = "";

                for (int i = 0; i < arr.Length; i++)
                {
                    displaycore += "<li>" + arr[i].ToString() + "</li>";
                }
                displaycore = "<ul>" + displaycore + "</ul>";

                lblCore.Text = displaycore;
            }
            else
            {
                lblCoreT.Visible = false;
                lblCore.Visible = false;
            }
            if (elective != "")
            {
                lblElectiveT.Visible = true;

                string[] arr = elective.Split(new string[] { ";" }, StringSplitOptions.None);
                string displayelective = "";

                for (int i = 0; i < arr.Length; i++)
                {
                    displayelective += "<li>" + arr[i].ToString() + "</li>";
                }
                displayelective = "<ul>" + displayelective + "</ul>";


                lblElective.Text = displayelective;
            }
            else
            {
                lblElectiveT.Visible = false;
                lblElective.Visible = false;
            }
            if (coursefee != "")
            {
                lblCourseFeeT.Visible = true;
                lblCourseFee.Text = coursefee;
            }
            else
            {
                lblCourseFeeT.Visible = false;
                lblCourseFee.Visible = false;
            }
            if (refund != "")
            {
                lblRefundT.Visible = true;
                lblRefund.Text = refund;
            }
            else
            {
                lblRefundT.Visible = false;
                lblRefund.Visible = false;
            }
            if (entryreq != "")
            {
                lblentryreqT.Visible = true;
                lblentryreq.Text = entryreq;
            }
            else
            {
                lblentryreqT.Visible = false;
                lblentryreq.Visible = false;
            }
            if (otherinfo != "")
            {
                lblotherinfoT.Visible = true;
                lblotherinfo.Text = otherinfo;
            }
            else
            {
                lblotherinfoT.Visible = false;
                lblotherinfo.Visible = false;
            }
        }
    }
}