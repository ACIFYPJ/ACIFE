using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLogicLayer.E.Events;
using DataAccessLayer.E.Events;
using System.Data;
using System.IO;


namespace ACI_FrontEndWeb_Development.AllPages.E.EventsFolder
{

    public partial class Events : System.Web.UI.Page
    {
        ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                
                EventsBLL BLL = new EventsBLL();
                //Populating a DataTable from database.
                string xmldt = client.GetData();
                StringReader xr = new StringReader(xmldt);
                DataTable dt = new DataTable();
                dt.ReadXml(xr);
                //DataTable dt = BLL.GetData();
                EventRPT.DataSource = dt;
                EventRPT.DataBind();
                
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            //string RawDate = "1/9/2017 12:01:01 PM";
            //DateTime date = DateTime.ParseExact(RawDate, "M/d/yyyy h:mm:ss tt", System.Globalization.CultureInfo.InvariantCulture);
            //string ConvertDate = date.ToString("dd-MMMM");
            //Label1.Text = ConvertDate;
            //row.SetField("EventStart", ConvertDate);
            Response.Redirect("B_EventDetailed.aspx");
        }

        protected void EventRPT_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ClickEvent")
            {
                Response.Redirect("EventsDetailed.aspx?EventID=" + e.CommandArgument.ToString());
            }
        }
    }
}