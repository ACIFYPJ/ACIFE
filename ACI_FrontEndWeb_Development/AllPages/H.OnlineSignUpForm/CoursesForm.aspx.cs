using BussinessLogicLayer.A.Courses;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACI_FrontEndWeb_Development.AllPages.H.OnlineSignUpForm
{
    public partial class CoursesForm : System.Web.UI.Page
    {        
        CoursesBLL BLL = new CoursesBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                try
                {
                    loadCoursesDDL();
                    DDLProgram.SelectedValue = Session["CourseID"].ToString();
                    DDLClass.SelectedValue = Session["ClassCode"].ToString();
                }
                catch (Exception)
                {
                    loadCoursesDDL();
                }
            }
        }

        protected void BtnNext_Click(object sender, EventArgs e)
        {
            Session["CourseID"] = DDLProgram.SelectedValue.ToString();
            Session["ClassCode"] = DDLClass.SelectedValue.ToString();
            Session["CourseTitle"] = DDLProgram.SelectedItem.Text;
            Session["CourseDate"] = DDLClass.SelectedItem.Text;
           
            Response.Redirect("CoursesForm2.aspx");
        }

        private void loadCoursesDDL()
        {
            //string[] courseData = new string[] { };
            //courseData = BLL.getAllCoursesAvailableToSignUp();

            DataTable dt = BLL.getAllCoursesAvailableToSignUp();
            DDLProgram.DataSource = dt;
            DDLProgram.DataValueField = "CourseID";
            DDLProgram.DataTextField = "CourseName";
            DDLProgram.DataBind();
          
          loadClassDDL(int.Parse(DDLProgram.SelectedValue.ToString()));
        }

        protected void DDLProgram_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadClassDDL(int.Parse(DDLProgram.SelectedValue.ToString()));
        }
        private void loadClassDDL(int CourseID)
        {
            DataTable dt = BLL.getSpecificClassesAvailableToSignUp(CourseID);
            DDLClass.DataSource = dt;
            dt.Columns.Add("CoursePeriod", typeof(string), "StartDate + ' To ' + EndDate");

            DDLClass.DataValueField = "ClassCode";
            DDLClass.DataTextField = "CoursePeriod";
            DDLClass.DataBind();
        }


    }
}