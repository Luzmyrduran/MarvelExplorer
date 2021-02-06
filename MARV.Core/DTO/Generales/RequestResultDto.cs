using System;
using System.Collections.Generic;
using System.Net;
using System.Text;

namespace MARV.Core.DTO.Generales
{
    public class RequestResultDto
    {
        public string JsonResponse { get; set; }
        public HttpStatusCode StatusCode { get; set; }
        public bool IsSuccessStatusCode { get; set; }
    }
}
