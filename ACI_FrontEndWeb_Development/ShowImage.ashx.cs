using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace ACI_FrontEndWeb_Development
{
    /// <summary>
    /// Summary description for ShowImage
    /// </summary>
    public class ShowImage : IHttpHandler
    {
        ServiceReference.Service1Client client = new ServiceReference.Service1Client();
        public void ProcessRequest(HttpContext context)
        {
            int eid;
            if (context.Request.QueryString["id"] != null)
                eid = Convert.ToInt32(context.Request.QueryString["id"]);
            else
                throw new ArgumentException("No parameter specified");
    
            context.Response.ContentType = "image/jpeg";
            Stream strm = client.getImage(eid);
            byte[] buffer = new byte[4096];
            int byteSeq = strm.Read(buffer, 0, 4096);
            while (byteSeq > 0)
            {
                context.Response.OutputStream.Write(buffer, 0, byteSeq);
                byteSeq = strm.Read(buffer, 0, 4096);
            }
            
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}