using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace DataAccessLayer.E.Events
{
    public class EventsDAL
    {
        string constr = Properties.Settings.Default.DBconnect;
        public DataTable GetData()
        {

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT EventID, EventTitle,EventStart, Description FROM aci_event WHERE year(EventStart) = 2017"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }
        public DataTable getDetails(int eventID)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT EventTitle, EventStart, Location, Description FROM aci_event WHERE EventID = @eventID",con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@eventID", eventID);
                    SqlDataAdapter sda = new SqlDataAdapter();
                    sda.SelectCommand = cmd;
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    return dt;
                }
            }
        }
    }

}
