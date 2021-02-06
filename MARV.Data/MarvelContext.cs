using MARV.Core.Model;
using MARV.Data.Mapping;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace MARV.Data
{
    public class MarvelContext : IdentityDbContext
    {
        public MarvelContext(DbContextOptions<MarvelContext> options) : base(options)
        {

        }

        public DbSet<UsuarioLike> UsuarioLike { get; set; }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            builder.ApplyConfiguration(new UsuarioMap());
            builder.ApplyConfiguration(new UsuarioLikeMap());
        }
    }
}
