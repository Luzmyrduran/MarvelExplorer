using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MARV.Web.Models.Cuenta
{
    public class RegistroVm
    {
        [Required(ErrorMessage = "Email requerido")]
        [EmailAddress(ErrorMessage = "Email ingresado no es valido")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Password requerido")]
        public string Password { get; set; }

        [Required(ErrorMessage = "Favor repetir password")]
        [Compare(nameof(Password), ErrorMessage = "Los passwords no coindicen")]
        public string RepetirPassword { get; set; }
    }
}
