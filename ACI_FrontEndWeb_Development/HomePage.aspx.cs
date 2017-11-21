using BussinessLogicLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACI_FrontEndWeb_Development
{
    public partial class HomePage : System.Web.UI.Page
    {
        ServiceReference.Service1Client client = new ServiceReference.Service1Client();
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
            string xmldt = client.getCarouselimages();
            StringReader xr = new StringReader(xmldt);
            DataTable dt = new DataTable();
            dt.ReadXml(xr);
            //DataTable dt;            
            //dt = BLL.getcarouselimages();
            carorpt.DataSource = dt;
            carorpt.DataBind();
        }
        private void getfirstimage()
        {
            //DataTable dt;
            //dt = BLL.getfirstcarouselimages();
            string xmldt = client.getfirstcarouselimages();
            StringReader xr = new StringReader(xmldt);
            DataTable dt = new DataTable();
            dt.ReadXml(xr);
            caroHeadrpt.DataSource = dt;
            caroHeadrpt.DataBind();
        }

        private void getfeaturedevent()
        {
            //DataTable dt;
            //dt = BLL.getFeaturedEventsData();
            string xmldt = client.getFeaturedEventsData();
            StringReader xr = new StringReader(xmldt);
            DataTable dt = new DataTable();
            dt.ReadXml(xr);
            EventFeaturedRPT.DataSource = dt;
            EventFeaturedRPT.DataBind();
        }

        private void getfeaturedCourse()
        {
            //DataTable dt;
            //dt = BLL.getFeaturedCoursesData();
            string xmldt = client.getFeaturedCoursesData();
            StringReader xr = new StringReader(xmldt);
            DataTable dt = new DataTable();
            dt.ReadXml(xr);
            CoursesFeaturedRPT.DataSource = dt;
            CoursesFeaturedRPT.DataBind();
            
        }
    }
}