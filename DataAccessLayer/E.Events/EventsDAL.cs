using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;


namespace DataAccessLayer.E.Events
{
    public class EventsDAL
    {

        public SqlConnection GetConnection()
        {
            SqlConnection dbConn;
            String connString = Properties.Settings.Default.DBconnect;

            dbConn = new SqlConnection(connString);

            return dbConn;
        }


        //public DataTable getDetails(int eventID)
        //{
        //    using (SqlConnection con = GetConnection())
        //    {
        //        using (SqlCommand cmd = new SqlCommand("SELECT EventTitle, EventStart, Location, Description FROM aci_event WHERE EventID = @eventID", con))
        //        {
        //            con.Open();
        //            cmd.Parameters.AddWithValue("@eventID", eventID);
        //            SqlDataAdapter sda = new SqlDataAdapter();
        //            sda.SelectCommand = cmd;
        //            DataTable dt = new DataTable();
        //            sda.Fill(dt);
        //            return dt;
        //        }
        //    }
        //}


        //public DataTable GetData()
        //{
        //    using (SqlConnection con = GetConnection())
        //    {
        //        using (SqlCommand cmd = new SqlCommand("SELECT EventID, EventTitle,EventStart, Description FROM aci_event WHERE year(EventStart) = 2017"))
        //        {
        //            using (SqlDataAdapter sda = new SqlDataAdapter())
        //            {
        //                cmd.Connection = con;
        //                sda.SelectCommand = cmd;
        //                using (DataTable dt = new DataTable())
        //                {
        //                    sda.Fill(dt);
        //                    return dt;
        //                }
        //            }
        //        }
        //    }
        //}


        //public int InsertIntoEvents(int EventID, string EventTitle, string FullName, string NRIC, string Email, int Handphone, string ReferralSource, string reason, DateTime DOB, string nationality, string HighestEducation, string CurrentEmployment, DateTime RegistrationDate, int TnC, out string ex)
        //{
        //    ex = " ";
        //    StringBuilder sql;
        //    SqlCommand sqlCmd;
        //    int result;
        //    result = 0;
        //    sql = new StringBuilder();
        //    sql.AppendLine("INSERT INTO aci_eventregistration(EventID, Title, Name, DateOfBirth,Nationality,Handphone,Email,HighestEducation,CurrentEmployment,ReferralSource,SignupReason,AgreeTermsConditions,RegistrationDate,NRIC)");
        //    sql.AppendLine("VALUES (@EventID, @Title, @Name, @DateOfBirth,@Nationality,@Handphone,@Email,@HighestEducation,@CurrentEmployment,@ReferralSource,@SignupReason,@AgreeTermsConditions,@RegistrationDate,@NRIC)");
        //    SqlConnection conn = GetConnection();
        //    conn.Open();
        //    try
        //    {
        //        sqlCmd = new SqlCommand(sql.ToString(), conn);
        //        sqlCmd.Parameters.AddWithValue("@EventID", EventID);
        //        sqlCmd.Parameters.AddWithValue("@Title", EventTitle);
        //        sqlCmd.Parameters.AddWithValue("@Name", FullName);
        //        sqlCmd.Parameters.AddWithValue("@NRIC", NRIC);
        //        sqlCmd.Parameters.AddWithValue("@Email", Email);
        //        sqlCmd.Parameters.AddWithValue("@Handphone", Handphone);
        //        sqlCmd.Parameters.AddWithValue("@ReferralSource", ReferralSource);
        //        sqlCmd.Parameters.AddWithValue("@SignupReason", reason);
        //        sqlCmd.Parameters.AddWithValue("@DateOfBirth", DOB);
        //        sqlCmd.Parameters.AddWithValue("@Nationality", nationality);
        //        sqlCmd.Parameters.AddWithValue("@HighestEducation", HighestEducation);
        //        sqlCmd.Parameters.AddWithValue("@CurrentEmployment", CurrentEmployment);
        //        sqlCmd.Parameters.AddWithValue("@RegistrationDate", RegistrationDate);
        //        sqlCmd.Parameters.AddWithValue("@AgreeTermsConditions", TnC);
        //        result = sqlCmd.ExecuteNonQuery();
        //    }
        //    catch (Exception e)
        //    {
        //        ex = e.Message;
        //    }
        //    finally
        //    {
        //        conn.Close();
        //    }

        //    return result;
        //}
    }

}
