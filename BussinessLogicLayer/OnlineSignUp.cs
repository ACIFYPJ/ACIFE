using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinessLogicLayer
{
    public class OnlineSignUp
    {
        OnlineSignUp_DAL DAL = new OnlineSignUp_DAL();
        public string InsertCourseApplication(string FullName, string ContactNumber, string Email, string Address, string PostalCode, string NRIC, string Nationality, string NRICtype, string Gender, string Race, string DOB, string ProgramID, string ClassCode, string Sponsorship, string HighestEdu, string SpokenEnglish, string SpokenChinese, string SpokenOthers, string WrittenEnglish, string WrittenChinese, string WrittenOthers, string gettoknow, string Companyname, string Employmentstatus, string Position, string Salary, string JobStartDate, string JobEndDate, string CurrentEmployment,string ProgramTitle)
        {
            string message = DAL.InsertCourseApplication(FullName, ContactNumber, Email, Address, PostalCode, NRIC, Nationality, NRICtype, Gender, Race, DOB, ProgramID, ClassCode, Sponsorship, HighestEdu, SpokenEnglish, SpokenChinese, SpokenOthers, WrittenEnglish, WrittenChinese, WrittenOthers, gettoknow, Companyname, Employmentstatus, Position, Salary, JobStartDate, JobEndDate, CurrentEmployment, ProgramTitle);
           return message;
        } 

    }
}
