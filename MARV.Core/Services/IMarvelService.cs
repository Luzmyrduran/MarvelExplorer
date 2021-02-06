using MARV.Core.DTO.Marvel.Input;
using MARV.Core.DTO.Marvel.Output;
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
    }
}
