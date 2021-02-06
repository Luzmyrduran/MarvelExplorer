using System;
using System.Collections.Generic;
using System.Text;

namespace MARV.Core.DTO.Marvel.Input
{
    public class ListadoInputDto
    {
        /// <summary>
        /// Return characters with names that begin with the specified string (e.g. Sp)
        /// </summary>
        public string NameStartsWith { get; set; }

        /// <summary>
        /// Limit the result set to the specified number of resources.
        /// </summary>
        public int Limit { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public bool Ascendente { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public bool OrderByNombre { get; set; }
    }
}
