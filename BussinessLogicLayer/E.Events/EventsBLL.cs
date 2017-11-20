using DataAccessLayer.E.Events;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace BussinessLogicLayer.E.Events
{
    public class EventsBLL
    {

        //public DataTable GetData()
        //{
        //    EventsDAL Datatb = new EventsDAL();
        //    DataTable dt = Datatb.GetData();
        //    return dt;
        //}

        public int InsertEventForm(int EventID, string EventTitle, string FullName, string NRIC, string Email, int Handphone, string ReferralSource, string reason, DateTime DOB, string nationality, string HighestEducation, string CurrentEmployment, DateTime RegistrationDate, int TnC, out string ex)
        {
            EventsDAL InsertEvents = new EventsDAL();
            int result = InsertEvents.InsertIntoEvents(EventID, EventTitle, FullName, NRIC, Email, Handphone, ReferralSource, reason, DOB, nationality, HighestEducation, CurrentEmployment, RegistrationDate, TnC, out ex);
            return result;
        }



    }
}
