using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace BussinessLogicLayer.A.Courses
{

    public class CoursesBLL
    {
        ServiceReference.Service1Client client = new ServiceReference.Service1Client();

        CoursesDAL DAL = new CoursesDAL();

        public DataTable getCertCourse()
        {
            DataTable dt = new DataTable();
            string xmldt = client.getCourse(4);
            StringReader xr = new StringReader(xmldt);
            dt.ReadXml(xr);
            return dt;
            //DataTable dt;
            //dt = DAL.getCourse(4);
            //return dt;
        }
        public DataTable getDipCourse()
        {
            DataTable dt = new DataTable();
            string xmldt = client.getCourse(5);
            StringReader xr = new StringReader(xmldt);
            dt.ReadXml(xr);
            return dt;
            //DataTable dt;
            //dt = DAL.getCourse(5);
            //return dt;
        }
        public DataTable getSpecDipCourse()
        {
            DataTable dt = new DataTable();
            string xmldt = client.getCourse(6);
            StringReader xr = new StringReader(xmldt);
            dt.ReadXml(xr);
            return dt;
            //DataTable dt;
            //dt = DAL.getCourse(6);
            //return dt;
        }
        public DataTable getShortCourse()
        {
            DataTable dt = new DataTable();
            string xmldt = client.getCourse(2);
            StringReader xr = new StringReader(xmldt);
            dt.ReadXml(xr);
            return dt;
            //DataTable dt;
            //dt = DAL.getCourse(2);
            //return dt;
        }
        public DataTable getCusCourse()
        {
            DataTable dt = new DataTable();
            string xmldt = client.getCourse(3);
            StringReader xr = new StringReader(xmldt);
            dt.ReadXml(xr);
            return dt;
            //DataTable dt;
            //dt = DAL.getCourse(3);
            //return dt;
        }
    }
}
