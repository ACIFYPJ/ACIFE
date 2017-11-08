using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinessLogicLayer.A.Courses
{
    public class CoursesBLL
    {
        CoursesDAL DAL = new CoursesDAL();

        public DataTable getCertCourse()
        {
            DataTable dt;
            dt = DAL.getCourse(4);
            return dt;
        }
        public DataTable getDipCourse()
        {
            DataTable dt;
            dt = DAL.getCourse(5);
            return dt;
        }
        public DataTable getSpecDipCourse()
        {
            DataTable dt;
            dt = DAL.getCourse(6);
            return dt;
        }
        public DataTable getShortCourse()
        {
            DataTable dt;
            dt = DAL.getCourse(2);
            return dt;
        }
        public DataTable getCusCourse()
        {
            DataTable dt;
            dt = DAL.getCourse(3);
            return dt;
        }
    }
}
