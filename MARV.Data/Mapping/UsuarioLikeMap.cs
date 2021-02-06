using MARV.Core.Model;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace MARV.Data.Mapping
{
    public class UsuarioLikeMap : IEntityTypeConfiguration<UsuarioLike>
    {
        public void Configure(EntityTypeBuilder<UsuarioLike> builder)
        {
            builder.HasKey(x => new { x.IdUsuario, x.IdCharacter });

            builder.HasOne(x => x.Usuario).WithMany().HasForeignKey(x => x.IdUsuario).IsRequired().OnDelete(DeleteBehavior.Restrict);
        }
    }
}
