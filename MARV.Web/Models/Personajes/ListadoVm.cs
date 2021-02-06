using MARV.Core.DTO.Marvel.Output;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MARV.Web.Models.Personajes
{
    public class ListadoVm
    {
        //public ListadoVm()
        //{
        //    Data = new DataOutputDto() { Results = new List<ResultOutputDto>() };
        //}

        /// <summary>
        /// Return characters with names that begin with the specified string (e.g. Sp)
        /// </summary>
        public string NameStartsWith { get; set; }

        /// <summary>
        /// Limit the result set to the specified number of resources.
        /// </summary>
        [Range(1, int.MaxValue, ErrorMessage = "La cantidad a consultar debe ser mayor a 0")]
        public int Limit { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public bool Ascendente { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public bool OrderByNombre { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public DataOutputDto Data { get; set; }
    }
}
