using MARV.Core.DTO.Generales;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace MARV.Core.Helpers
{
    public interface IRequestHelper
    {
        /// <summary>
        /// Metodo que realiza peticiones GET
        /// </summary>
        /// <param name="endPoint"></param>
        /// <returns></returns>
        string RequestGet(string endPoint);
    }
}
