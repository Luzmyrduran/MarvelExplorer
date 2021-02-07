using MARV.Core.DTO.Marvel.Input;
using MARV.Core.DTO.Marvel.Output;
using MARV.Core.DTO.Usuario;
using MARV.Core.Model;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace MARV.Core.Services
{
    public interface IMarvelService
    {
        /// <summary>
        /// Obtiene el registro de un character en especifico
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        ResultOutputDto GetCharacterById(string id);

        /// <summary>
        /// Obtiene un listado de characters segun los parametros de busqueda
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        DataOutputDto GetListado(ListadoInputDto input);

        /// <summary>
        /// Registra un Like realizado por el usuario
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        Task RegistrarLikeAsync(UsuarioLike data);

        /// <summary>
        /// Obtiene un top de los personajes mas votados
        /// </summary>
        /// <param name="top"></param>
        /// <returns></returns>
        Task<List<GrupoLikeDto>> GetTop(int top = 5);

        /// <summary>
        /// Obtiene la lista de Likes realizados por un usuario
        /// </summary>
        /// <param name="idUsuario"></param>
        /// <returns></returns>
        Task<List<UsuarioLike>> GetLikesByIdUser(string idUsuario);

        /// <summary>
        /// Remueve un like de la base de datos
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        Task QuitarLikeAsync(UsuarioLike data);
    }
}
