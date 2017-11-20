using BussinessLogicLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACI_FrontEndWeb_Development
{
    public partial class HomePage : System.Web.UI.Page
    {
        HomeBLL BLL = new HomeBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                getimage();
                getfirstimage();
                getfeaturedevent();
                getfeaturedCourse();
            }
        }

        private void getimage()
        {
            DataTable dt;            
            dt = BLL.getcarouselimages();
            carorpt.DataSource = dt;
            carorpt.DataBind();
        }
        private void getfirstimage()
        {
            DataTable dt;
            dt = BLL.getfirstcarouselimages();
            caroHeadrpt.DataSource = dt;
            caroHeadrpt.DataBind();
        }

        private void getfeaturedevent()
        {
            DataTable dt;
            dt = BLL.getFeaturedEventsData();
            EventFeaturedRPT.DataSource = dt;
            EventFeaturedRPT.DataBind();
        }

        private void getfeaturedCourse()
        {
            DataTable dt;
            dt = BLL.getFeaturedCoursesData();
            CoursesFeaturedRPT.DataSource = dt;
            CoursesFeaturedRPT.DataBind();
            
        }
    }
}