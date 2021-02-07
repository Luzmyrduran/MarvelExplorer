using System;
using System.Collections.Generic;
using System.Text;

namespace MARV.Core.DTO.Usuario
{
    public class UsuarioLikeInputDto
    {
        /// <summary>
        /// Idenfiticador del usuario que efectua el Like
        /// </summary>
        public string Idusuario { get; set; }

        /// <summary>
        /// Identificador del personaje
        /// </summary>
        public string IdCharacter { get; set; }
    }
}
