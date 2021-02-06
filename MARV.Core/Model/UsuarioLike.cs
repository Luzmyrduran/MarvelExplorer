using System;
using System.Collections.Generic;
using System.Text;

namespace MARV.Core.Model
{
    public class UsuarioLike
    {
        /// <summary>
        /// Identificador del usuario al que pertenece el Like
        /// </summary>
        public string IdUsuario { get; set; }

        /// <summary>
        /// Identificador del Character en sistema de Marvel
        /// </summary>
        public string IdCharacter { get; set; }

        /// <summary>
        /// Navegation property
        /// </summary>
        public Usuario Usuario { get; set; }
    }
}
