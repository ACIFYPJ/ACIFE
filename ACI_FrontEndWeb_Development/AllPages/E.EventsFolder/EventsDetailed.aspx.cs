﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DataAccessLayer.E.Events;
using BussinessLogicLayer.E.Events;
using ACI_FrontEndWeb_Development.ServiceReference;
using System.IO; 

namespace ACI_FrontEndWeb_Development.AllPages.E.EventsFolder
{
    public partial class EventsDetailed : System.Web.UI.Page
    {

        ServiceReference.Service1Client client = new ServiceReference.Service1Client();

        EventsDAL DAL = new EventsDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //Label1.Text = client.sayHello().ToString();
            //int EventID = 5;
            //Label1.Text = (xmldt);
            int EventID = int.Parse(Request.QueryString["EventID"]);
            if ((imgResult.ImageUrl = "~/ShowImage.ashx?id=" + EventID) != null)
            {
                imgResult.ImageUrl = "~/ShowImage.ashx?id=" + EventID;
            }
            else
                eventimg.Visible = false;
            
            string xmldt = client.getEventDetails(EventID);
            StringReader xr = new StringReader(xmldt);
            DataTable dt = new DataTable();
            dt.ReadXml(xr);
             
            //DataTable dt = DAL.getDetails(EventID);
            foreach (DataRow row in dt.Rows)
            {
                if (int.Parse(row["RegistrationStatus"].ToString()) == 0)
                {
                    signup.Visible = false;
                }
                eventTitle.InnerHtml = row["EventTitle"].ToString();
                date.InnerHtml = row["EventStart"].ToString();
                location.InnerHtml = row["Location"].ToString();
                description.InnerHtml = row["Description"].ToString();
            }
        }

        protected void signup_Click(object sender, EventArgs e)
        {
            Session["eid"] = int.Parse(Request.QueryString["EventID"]);
            Session["eventTitle"] = eventTitle.InnerText.ToString();

            Response.Redirect("../H.OnlineSignUpForm/EventForm.aspx");
           // Response.Redirect("../H.OnlineSignUpForm/EventForm.aspx?EventID=" + int.Parse(Request.QueryString["EventID"]) + "&EventTitle=" + eventTitle.InnerText.ToString());
        }
    }
}