using MARV.Core.DTO.Usuario;
using MARV.Core.Model;
using MARV.Core.Repositories;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MARV.Data.Repositories
{
    public class UsuarioLikeRepository : IUsuarioLikeRepository
    {

        protected MarvelContext _db;

        public UsuarioLikeRepository(DbContext db)
        {
            _db = db as MarvelContext;
        }

        public async Task<List<UsuarioLike>> GetLikesByIdUser(string idUsuario)
        {
            

            return await _db.UsuarioLike.Where(x => x.IdUsuario == idUsuario).ToListAsync();
        }

        public async Task RegistrarLikeAsync(UsuarioLike data)
        {
            await _db.UsuarioLike.AddAsync(data);
        }

        public async Task SaveChangesAsync()
        {
            await _db.SaveChangesAsync();
        }

        public async Task<List<GrupoLikeDto>> GetGruposLike(int top = 5)
        {
            var grupos = await _db.UsuarioLike.GroupBy(p => p.IdCharacter)
                   .Select(g => new { IdCharacter = g.Key, count = g.Count() }).ToListAsync();

            List<GrupoLikeDto> lista = new List<GrupoLikeDto>();
            foreach(var grupo in grupos)
            {
                lista.Add(new GrupoLikeDto()
                {
                    IdCharacter = grupo.IdCharacter,
                    Cantidad = grupo.count 
                });
            }

            return lista.Take(top).OrderByDescending(x => x.Cantidad).ToList();
        }
    }
}
