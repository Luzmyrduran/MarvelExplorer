using MARV.Core.DTO.Usuario;
using MARV.Core.Model;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace MARV.Core.Repositories
{
    public interface IUsuarioLikeRepository
    {
        /// <summary>
        /// Registra un Like realizado por el usuario
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        Task RegistrarLikeAsync(UsuarioLike data);

        /// <summary>
        /// Obtiene la lista de Likes realizados por un usuario
        /// </summary>
        /// <param name="idUsuario"></param>
        /// <returns></returns>
        Task<List<UsuarioLike>> GetLikesByIdUser(string idUsuario);

        /// <summary>
        /// Extrae la cantidad de like agrupados por personaje
        /// </summary>
        /// <returns></returns>
        Task<List<GrupoLikeDto>> GetGruposLike(int top = 5);

        /// <summary>
        /// Aplica los cambios realizados en la base de datos
        /// </summary>
        /// <returns></returns>
        Task SaveChangesAsync();
    }
}
