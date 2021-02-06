using MARV.Core.DTO.Generales;
using MARV.Core.Helpers;
using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace MARV.Service.Helpers
{
    public class RequestHelper : IRequestHelper
    {
        public string RequestGet(string endPoint)
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(endPoint);
            request.Method = "GET";

            try
            {
                HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                string responseString = new StreamReader(response.GetResponseStream()).ReadToEnd();
                return responseString;
            }
            catch (WebException e)
            {
                throw new ArgumentException($"Ocurrio un error al realizar la consulta al endpoint. { e.Message }");
            }
        }
    }
}
