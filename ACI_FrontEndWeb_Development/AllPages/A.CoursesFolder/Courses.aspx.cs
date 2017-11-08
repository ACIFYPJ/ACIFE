using BussinessLogicLayer.A.Courses;
using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACI_FrontEndWeb_Development.AllPages.A.CoursesFolder
{
    public partial class Courses : System.Web.UI.Page
    {
        CoursesDAL DAL = new CoursesDAL();
        CoursesBLL BLL = new CoursesBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {               
                //load table
                loadtabledata();
                  }
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
    }
}