using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MARV.Core.DTO.Marvel.Output;
using MARV.Core.Services;
using MARV.Web.Models.Personajes;
using Microsoft.AspNetCore.Mvc;

namespace MARV.Web.Controllers
{
    public class PersonajesController : Controller
    {
        private readonly IMarvelService _marvelService;

        public PersonajesController(IMarvelService marvelService)
        {
            _marvelService = marvelService;
        }

        [HttpGet]
        public IActionResult Index(ListadoVm listado)
        {
            if (listado.Limit == 0)
            {
                listado.Limit = 20;
                listado.OrderByNombre = true;
                listado.Ascendente = true;
            }

            listado.Data = _marvelService.GetListado(new Core.DTO.Marvel.Input.ListadoInputDto() { 
                NameStartsWith = listado.NameStartsWith,
                Limit = listado.Limit,
                Ascendente = listado.Ascendente,
                OrderByNombre = listado.OrderByNombre
            });

            return View(listado);
        }

        [HttpGet]
        public IActionResult Detalle(string id)
        {
            return View();
        }
    }
}
