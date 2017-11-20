using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class OnlineSignUp_DAL
    {
        public string InsertCourseApplication(string FullName, string ContactNumber, string Email, string Address, string PostalCode, string NRIC, string Nationality, string NRICtype, string Gender, string Race, string DOB, string ProgramID, string ClassCode, string Sponsorship, string HighestEdu, string SpokenEnglish, string SpokenChinese, string SpokenOthers, string WrittenEnglish, string WrittenChinese, string WrittenOthers, string gettoknow, string Companyname, string Employmentstatus, string Position, string Salary, string JobStartDate, string JobEndDate, string CurrentEmployment, string ProgramTitle)
        {
            string constr = Properties.Settings.Default.DBconnect;
            using (SqlConnection con = new SqlConnection(constr))
            {
                try
                {
                    string spokenLanguage = SpokenEnglish+";"+SpokenChinese+";"+SpokenOthers;
                    string writtenLanguage = WrittenEnglish+";"+WrittenChinese+";"+WrittenOthers;

                    con.Open();
                    string SQL = "INSERT INTO aci_online_applicant(FullName,NRIC,NRICType,Nationality,Gender,Race,HandPhone,Email,DOB,Address,PostalCode,HighestEducation,SpokenLanguage,WrittenLanguage,GetToKnow,SponsorShip, Company,EmploymentStatus,Position,Salary,JobStartDate,JobEndDate,ProgramID,ProjectCode,ProgramTitle,CurrentEmployment) ";
                    SQL += "VALUES (@FullName,@NRIC,@NRICType,@Nationality,@Gender,@Race,@HandPhone,@Email,@DOB,@Address,@PostalCode,@HighestEducation,@SpokenLanguage,@WrittenLanguage,@GetToKnow,@SponsorShip, @Company,@EmploymentStatus,@Position,@Salary,@JobStartDate,@JobEndDate,@ProgramID,@ProjectCode,@ProgramTitle,@CurrentEmployment)";
                  
                    SqlCommand cmd = new SqlCommand(SQL, con);
                    cmd.Parameters.AddWithValue("@FullName",FullName);
                    cmd.Parameters.AddWithValue("@NRIC",NRIC);
                    cmd.Parameters.AddWithValue("@NRICType",NRICtype);
                    cmd.Parameters.AddWithValue("@Nationality",Nationality);
                    cmd.Parameters.AddWithValue("@Gender",Gender);
                    cmd.Parameters.AddWithValue("@Race",Race);
                    cmd.Parameters.AddWithValue("@HandPhone",ContactNumber);
                    cmd.Parameters.AddWithValue("@Email",Email);
                    cmd.Parameters.AddWithValue("@DOB",DOB);
                    cmd.Parameters.AddWithValue("@Address",Address);
                    cmd.Parameters.AddWithValue("@PostalCode",PostalCode);
                    cmd.Parameters.AddWithValue("@HighestEducation",HighestEdu);
                    cmd.Parameters.AddWithValue("@SpokenLanguage",spokenLanguage);
                    cmd.Parameters.AddWithValue("@WrittenLanguage",writtenLanguage);
                    cmd.Parameters.AddWithValue("@GetToKnow",gettoknow);
                    cmd.Parameters.AddWithValue("@SponsorShip",Sponsorship);
                    cmd.Parameters.AddWithValue("@Company",Companyname);
                    cmd.Parameters.AddWithValue("@EmploymentStatus",Employmentstatus);
                    cmd.Parameters.AddWithValue("@Position",Position);
                    cmd.Parameters.AddWithValue("@Salary",Salary);
                    cmd.Parameters.AddWithValue("@JobStartDate",JobStartDate);
                    cmd.Parameters.AddWithValue("@JobEndDate",JobEndDate);
                    cmd.Parameters.AddWithValue("@ProgramID",ProgramID);
                    cmd.Parameters.AddWithValue("@ProjectCode",ClassCode);
                    cmd.Parameters.AddWithValue("@ProgramTitle", ProgramTitle);
                    cmd.Parameters.AddWithValue("@CurrentEmployment", CurrentEmployment);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    return "";
                }
                catch (Exception e)
                {
                    return e.Message.ToString();
                }
            }
         
        }
    }
}
