using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using MARV.Web.Models;
using MARV.Core.Services;
using MARV.Core.DTO.Marvel.Output;
using MARV.Core.DTO.Usuario;

namespace MARV.Web.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IMarvelService _marvelService;

        public HomeController(ILogger<HomeController> logger, IMarvelService marvelService)
        {
            _logger = logger;
            _marvelService = marvelService;
        }

        public async Task<IActionResult> Index()
        {
            List<GrupoLikeDto> resultados = await _marvelService.GetTop(5);
            return View(resultados);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
