using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class CoursesDAL
    {
        //string constr = Properties.Settings.Default.DBconnect;
        //public DataTable getallprogram()
        //{
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("SELECT ProgramID,ProgramName,ParentID,ChildID FROM aci_program WHERE Display=1 ORDER BY DisplayOrder ASC"))
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

        //public DataTable getClasses(int courseID)
        //{
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("SELECT ClassStartTime, ClassEndTime,Language,Remarks,StartDate,EndDate FROM aci_class WHERE CourseID=@CourseID AND PublishMode=1"))
        //        {
        //            cmd.Parameters.AddWithValue("@CourseID", courseID);
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

        //public DataTable getcourseDetails(int CourseID)
        //{
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("Select * FROM aci_course WHERE CourseID=@CourseID"))
        //        {
        //            cmd.Parameters.AddWithValue("@CourseID", CourseID);
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

        //public DataTable getCourse(int ProgramID)
        //{
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("SELECT CourseID,CourseName FROM aci_course WHERE ProgramID=@ProgramID"))
        //        {
        //            cmd.Parameters.AddWithValue("@ProgramID", ProgramID);
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


    }
}
