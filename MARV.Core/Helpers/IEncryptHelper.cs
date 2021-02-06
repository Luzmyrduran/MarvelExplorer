using System;
using System.Collections.Generic;
using System.Text;

namespace MARV.Core.Helpers
{
    public interface IEncryptHelper
    {
        public string GetHash(string contenido);
    }
}
