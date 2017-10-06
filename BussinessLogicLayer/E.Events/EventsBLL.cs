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

        public DataTable GetData()
        {
            EventsDAL Datatb = new EventsDAL();
            DataTable dt = Datatb.GetData();

            foreach (DataRow row in dt.Rows)
            {
                string RawDate = row["EventStart"].ToString();
            }


            return dt;
        }



    }
}
