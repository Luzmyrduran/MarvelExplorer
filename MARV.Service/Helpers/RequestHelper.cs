using MARV.Core.DTO.Generales;
using MARV.Core.Helpers;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace MARV.Service.Helpers
{
    public class RequestHelper : IRequestHelper
    {
        private readonly IHttpClientFactory _httpClientFactory;
        private readonly string _httpClientProfile;

        public RequestHelper(IHttpClientFactory httpClientFactory, string httpClientProfile = null)
        {
            _httpClientFactory = httpClientFactory;
            _httpClientProfile = httpClientProfile;
        }

        public async Task<RequestResultDto> RequestGet(string endPoint)
        {
            HttpClient httpClient = GetHttpClient();
            HttpResponseMessage response = await httpClient.GetAsync(endPoint);
            httpClient.Dispose();

            bool readAsString = response.IsSuccessStatusCode;

            return await GetQueryResult(response, readAsString);
        }

        private HttpClient GetHttpClient(int timeOutMinutes = 30)
        {
            HttpClient client;

            if (_httpClientProfile == null)
                client = _httpClientFactory.CreateClient();
            else
                client = _httpClientFactory.CreateClient(_httpClientProfile);

            client.Timeout = TimeSpan.FromMinutes(timeOutMinutes);

            return client;
        }

        private async Task<RequestResultDto> GetQueryResult(HttpResponseMessage httpResponseMessage, bool readAsString = false)
        {
            if (httpResponseMessage.IsSuccessStatusCode == false && httpResponseMessage.StatusCode != HttpStatusCode.NotFound && httpResponseMessage.StatusCode != HttpStatusCode.BadRequest)
                throw new ArgumentException($"Error inesperado, Response Code: { httpResponseMessage.StatusCode }");

            string response = readAsString ? null : await httpResponseMessage.Content.ReadAsStringAsync();

            return new RequestResultDto()
            {
                JsonResponse = response,
                StatusCode = httpResponseMessage.StatusCode,
                IsSuccessStatusCode = httpResponseMessage.IsSuccessStatusCode
            };
        }
    }
}
