using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using DataAccessLayer.E.Events;
using System.Data;

namespace ACI_FrontEndWeb_Development.AllPages.E.Events
{
    public partial class B_EventDetailed : System.Web.UI.Page
    {   
        EventsDAL DAL = new EventsDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            int EventID = 5;
            DataTable dt = DAL.getDetails(EventID);
            foreach (DataRow row in dt.Rows)
            { 
                eventTitle.InnerHtml = row["EventTitle"].ToString();
                date.InnerHtml = row["EventStart"].ToString();
                location.InnerHtml = row["Location"].ToString();
                description.InnerHtml = row["Description"].ToString();
            }
        }
    }
}