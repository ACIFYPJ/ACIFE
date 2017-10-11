using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.E.Events
{
   public class LoadCountryList
    {

       public List<string> CountryList()
       {
           List<string> CultureList = new List<string>();
           CultureInfo[] getCultureInfo = CultureInfo.GetCultures(CultureTypes.SpecificCultures);
           foreach (CultureInfo getCulture in getCultureInfo)
           {
               RegionInfo GetRegionInfo = new RegionInfo(getCulture.LCID);

               if (!(CultureList.Contains(GetRegionInfo.EnglishName)))
               {
                   CultureList.Add(GetRegionInfo.EnglishName);
               }
           }
           CultureList.Sort();
           return CultureList;
       }
    }
}
