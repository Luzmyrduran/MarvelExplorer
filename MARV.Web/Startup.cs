using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MARV.Core.DTO.Generales;
using MARV.Core.Helpers;
using MARV.Core.Model;
using MARV.Core.Repositories;
using MARV.Core.Services;
using MARV.Data;
using MARV.Data.Repositories;
using MARV.Service;
using MARV.Service.Helpers;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

namespace MARV.Web
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            string defaultConnection = Configuration["ConnectionStrings:DefaultConnection"];
            services.AddScoped<DbContext, MarvelContext>();
            services.AddDbContext<MarvelContext>(options => options.UseSqlServer(defaultConnection));

            services.AddIdentity<Usuario, IdentityRole>(options =>
            {
                options.Password.RequiredLength = 8;
                options.Password.RequireLowercase = false;
                options.Password.RequireUppercase = false;
                options.Password.RequireNonAlphanumeric = false;
                options.Password.RequireDigit = false;
            }).AddEntityFrameworkStores<MarvelContext>().AddDefaultTokenProviders();

            services.ConfigureApplicationCookie(options =>
            {
                options.LoginPath = "/Cuenta/Login";
                options.SlidingExpiration = true;
                options.ExpireTimeSpan = TimeSpan.FromHours(1);
            });

            services.AddTransient<CredencialesMarvelDto>(x => Configuration.GetSection("CredencialesMarvel").Get<CredencialesMarvelDto>());

            services.AddScoped<IRequestHelper, RequestHelper>();
            services.AddScoped<IEncryptHelper, EncryptHelper>();

            services.AddScoped<IUsuarioLikeRepository, UsuarioLikeRepository>();

            services.AddScoped<IMarvelService, MarvelService>();

            services.AddHttpClient();
            services.AddControllersWithViews();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
            }
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
