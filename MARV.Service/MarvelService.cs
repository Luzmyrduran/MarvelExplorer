﻿using MARV.Core.DTO.Generales;
using MARV.Core.DTO.Marvel.Input;
using MARV.Core.DTO.Marvel.Output;
using MARV.Core.Helpers;
using MARV.Core.Services;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MARV.Service
{
    public class MarvelService : IMarvelService
    {
        private readonly IRequestHelper _requestHelper;
        private readonly IEncryptHelper _encryptHelper;
        private readonly CredencialesMarvelDto _credenciales;
        private readonly string _endpointCharacters;

        public MarvelService(IConfiguration configuration,
            CredencialesMarvelDto credenciales,
            IRequestHelper requestHelper,
            IEncryptHelper encryptHelper)
        {
            _credenciales = credenciales;
            _requestHelper = requestHelper;
            _encryptHelper = encryptHelper;
            _endpointCharacters = configuration["Endpoints:Characters"];
        }

        public DataOutputDto GetListado(ListadoInputDto input)
        {
            string idTransaccion = Guid.NewGuid().ToString();
            string contenido = $"{ idTransaccion }{ _credenciales.PrivateKey }{ _credenciales.PublicKey }";
            string hash = _encryptHelper.GetHash(contenido);
            string orderBy = input.OrderByNombre
                ? input.Ascendente ? "name" : "-name"
                : input.Ascendente ? "modified" : "-modified";

            string endpointFullData = $"{ _endpointCharacters }?apikey={ _credenciales.PublicKey }&hash={ hash }&ts={ idTransaccion }&limit={ input.Limit }&nameStartsWith={ input.NameStartsWith }&orderBy={ orderBy }";
            string stringJsonResult = _requestHelper.RequestGet(endpointFullData);

            BaseOutputDto response = JsonConvert.DeserializeObject<BaseOutputDto>(stringJsonResult);
            return response.Data;
        }

        public ResultOutputDto GetCharacterById(string id)
        {
            string idTransaccion = Guid.NewGuid().ToString();
            string contenido = $"{ idTransaccion }{ _credenciales.PrivateKey }{ _credenciales.PublicKey }";
            string hash = _encryptHelper.GetHash(contenido);

            string endpointFullData = $"{ _endpointCharacters }/{id}?apikey={ _credenciales.PublicKey }&hash={ hash }&ts={ idTransaccion }";
            string stringJsonResult = _requestHelper.RequestGet(endpointFullData);

            BaseOutputDto response = JsonConvert.DeserializeObject<BaseOutputDto>(stringJsonResult);
            return response.Data?.Results?.FirstOrDefault();
        }
    }
}