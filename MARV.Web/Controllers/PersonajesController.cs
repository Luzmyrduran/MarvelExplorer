using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MARV.Core.DTO.Marvel.Output;
using MARV.Core.Model;
using MARV.Core.Services;
using MARV.Web.Models.Personajes;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace MARV.Web.Controllers
{
    public class PersonajesController : Controller
    {
        private readonly IMarvelService _marvelService;
        private readonly UserManager<Usuario> _userManager;

        public PersonajesController(IMarvelService marvelService, UserManager<Usuario> userManager)
        {
            _marvelService = marvelService;
            _userManager = userManager;
        }

        [HttpGet]
        public async Task<IActionResult> Index(ListadoVm listado)
        {
            listado.Likes = User.Identity.IsAuthenticated
                ? await _marvelService.GetLikesByIdUser(GetUserId())
                : new List<Core.Model.UsuarioLike>();

            if (listado.Limit == 0)
            {
                listado.Limit = 20;
                listado.OrderByNombre = true;
                listado.Ascendente = true;
                ModelState.Clear();
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
            try
            {
                ResultOutputDto result = _marvelService.GetCharacterById(id);
                return View(result);
            }
            catch (Exception)
            {
                return RedirectToAction(nameof(Index));
            }
        }

        [Authorize]
        public async Task<IActionResult> DarLike(string idCharacter)
        {
            try
            {
                await _marvelService.RegistrarLikeAsync(new UsuarioLike() { IdUsuario = GetUserId(), IdCharacter = idCharacter });
                return Json(new { success = true });
            }
            catch (Exception)
            {
                return Json(new { success = false });
            }
        }

        [Authorize]
        public async Task<IActionResult> QuitarLike(string idCharacter)
        {
            try
            {
                await _marvelService.QuitarLikeAsync(new UsuarioLike() { IdUsuario = GetUserId(), IdCharacter = idCharacter });
                return Json(new { success = true });
            }
            catch (Exception)
            {
                return Json(new { success = false });
            }
        }

        private string GetUserId()
        {
            if (User.Identity.IsAuthenticated)
            {
                System.Security.Claims.ClaimsPrincipal currentUser = this.User;
                string id = _userManager.GetUserId(User);
                return id;
            }

            return null;
        }
    }
}
