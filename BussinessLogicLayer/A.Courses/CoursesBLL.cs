using DataAccessLayer;
using System;
using System.Collections;
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
        public DataTable getAllCoursesAvailableToSignUp()
        {
            DataTable dt = new DataTable();
            string xmldt = client.getAllCoursesAvailableToSignUp();
            StringReader xr = new StringReader(xmldt);
            dt.ReadXml(xr);
            return dt;
            //dt = DAL.getAllCoursesAvailableToSignUp();
            //dt = RemoveDuplicateRows(dt, "CourseID");
            //return dt;
        }
        public DataTable getSpecificClassesAvailableToSignUp(int CourseID)
        {
            DataTable dt = new DataTable();
            string xmldt = client.getSpecificClassesAvailableToSignUp(CourseID);
            StringReader xr = new StringReader(xmldt);
            dt.ReadXml(xr);
            return dt;
            //dt = DAL.getSpecificClassesAvailableToSignUp(CourseID);
            //return dt;

        }

        public DataTable RemoveDuplicateRows(DataTable dTable, string colName)
        {
            Hashtable hTable = new Hashtable();
            ArrayList duplicateList = new ArrayList();

            //Add list of all the unique item value to hashtable, which stores combination of key, value pair.
            //And add duplicate item value in arraylist.
            foreach (DataRow drow in dTable.Rows)
            {
                if (hTable.Contains(drow[colName]))
                    duplicateList.Add(drow);
                else
                    hTable.Add(drow[colName], string.Empty);
            }

            //Removing a list of duplicate items from datatable.
            foreach (DataRow dRow in duplicateList)
                dTable.Rows.Remove(dRow);

            //Datatable which contains unique records will be return as output.
            return dTable;
        }


    }
}
