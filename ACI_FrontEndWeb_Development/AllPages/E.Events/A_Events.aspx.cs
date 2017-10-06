using BussinessLogicLayer.E.Events;
using DataAccessLayer.E.Events;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACI_FrontEndWeb_Development.AllPages.E.Events
{
    public partial class A_Events : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                EventsBLL BLL = new EventsBLL();
                //Populating a DataTable from database.
                DataTable dt = BLL.GetData();
             
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
                Response.Redirect("B_EventDetailed.aspx?EventID=" + e.CommandArgument.ToString());
            }
        }




    }
}