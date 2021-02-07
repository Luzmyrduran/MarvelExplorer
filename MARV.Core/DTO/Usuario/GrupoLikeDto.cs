using MARV.Core.DTO.Marvel.Output;
using System;
using System.Collections.Generic;
using System.Text;

namespace MARV.Core.DTO.Usuario
{
    public class GrupoLikeDto
    {
        public string IdCharacter { get; set; }

        public int Cantidad { get; set; }

        public ResultOutputDto Detalle { get; set; }
    }
}
