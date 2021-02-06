using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MARV.Core.Model;
using MARV.Web.Models.Cuenta;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace MARV.Web.Controllers
{
    public class CuentaController : Controller
    {
        private readonly UserManager<Usuario> _userManager;
        private readonly SignInManager<Usuario> _signInManager;

        public CuentaController(UserManager<Usuario> userManager, SignInManager<Usuario> signInManager)
        {
            _userManager = userManager;
            _signInManager = signInManager;
        }

        [HttpGet]
        public IActionResult Registro()
        {
            if (User.Identity.IsAuthenticated)
                return RedirectToAction("Index", "Home");

            return View(new RegistroVm());
        }

        [HttpPost]
        public async Task<IActionResult> Registro(RegistroVm registroVm)
        {
            Usuario usuario = new Usuario()
            {
                Email = registroVm.Email,
                UserName = registroVm.Email
            };

            var result = await _userManager.CreateAsync(usuario, registroVm.Password);
            if (result.Succeeded)
                return RedirectToAction(nameof(Login));
            else
                return View(registroVm);
        }

        [HttpGet]
        public IActionResult Login()
        {
            if (User.Identity.IsAuthenticated)
                return RedirectToAction("Index", "Home");

            return View(new LoginVm());
        }

        [HttpPost]
        public async Task<IActionResult> Login(LoginVm loginVm)
        {
            var result = await _signInManager.PasswordSignInAsync(loginVm.Email, loginVm.Password, true, false);
            return result.Succeeded
                ? RedirectToAction("Index", "Home")
                : RedirectToAction(nameof(Login));
        }

        [HttpGet]
        public async Task<IActionResult> Logout()
        {
            await _signInManager.SignOutAsync();
            return RedirectToAction("Index", "Home");
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
