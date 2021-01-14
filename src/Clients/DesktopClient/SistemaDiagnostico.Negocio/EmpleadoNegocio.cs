using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Net.Http;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using System.Windows.Forms;
using RestSharp;
using System.Net.Http.Headers;

namespace SistemaDiagnostico.Negocio
{
    public class EmpleadoNegocio
    {
        public async static Task<List<EmpleadoDto>> Listar()
        {
            HttpClient client = new HttpClient();
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjYzdkZWFmZC0yOTc3LTRjMWItOTFhZC03YjhkMzdhMDFmZmUiLCJ1bmlxdWVfbmFtZSI6IkFicmFoYW0gTGlwYSBDYWxhYmlsbGEiLCJuYmYiOjE2MTA1NzUzMDUsImV4cCI6MTYxMDY2MTcwNSwiaWF0IjoxNjEwNTc1MzA1fQ.ctEaUEgrV2kp2DGbV5_m8b8DyICU_Sx7X9cikW88QMc");
            HttpResponseMessage response = await client.GetAsync("http://diag-desktop-client.azurewebsites.net/empleados");

            response.EnsureSuccessStatusCode();
            string responseBody = await response.Content.ReadAsStringAsync();
            var empleados = JsonConvert.DeserializeObject<DataCollection<EmpleadoDto>>(responseBody);

            return empleados.Items.ToList();
        }

        //public static async Task<string> Post(EmpleadoDto emp)
        //{




        //var inputData = new Dictionary<string, string>
        //{

        //    {"dni", dni},
        //    {"nombres", nombre},
        //    {"apellidos", apellido}

        //};

        //var input = new FormUrlEncodedContent(inputData);

        //HttpClient client = new HttpClient();


        //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjYzdkZWFmZC0yOTc3LTRjMWItOTFhZC03YjhkMzdhMDFmZmUiLCJ1bmlxdWVfbmFtZSI6IkFicmFoYW0gTGlwYSBDYWxhYmlsbGEiLCJuYmYiOjE2MTA1NzUzMDUsImV4cCI6MTYxMDY2MTcwNSwiaWF0IjoxNjEwNTc1MzA1fQ.ctEaUEgrV2kp2DGbV5_m8b8DyICU_Sx7X9cikW88QMc");

        //HttpResponseMessage res = await client.PostAsync("http://diag-desktop-client.azurewebsites.net/empleados", input);


        //HttpContent content = res.Content;


        //string data = await content.ReadAsStringAsync();

        //if (data != null)
        //{

        //    return data;

        //}
        //return string.Empty;
        //}


        public static string BeautifyJson(string json)
        {
            JToken parseJson = JToken.Parse(json);
            return parseJson.ToString(Formatting.Indented);
        }

        public static List<EmpleadoDto> Buscar(string dni, string url, string auth)
        {
            try
            {
                var client = new RestClient(url + "?dni=" + dni);
                var request = new RestRequest(Method.GET);

                request.AddHeader("content-type", "application/json");

                if (auth != null)
                {
                    request.AddHeader("Authorization", auth);
                }

                IRestResponse response = client.Execute(request);

                DataCollection<EmpleadoDto> empleados = JsonConvert.DeserializeObject<DataCollection<EmpleadoDto>>(response.Content);

                return empleados.Items.ToList();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return new List<EmpleadoDto>();
            }
        }

        public dynamic Post(string url, string json, string autorizacion)
        {
            try
            {
                var client = new RestClient(url);
                var request = new RestRequest(Method.POST);
                request.AddHeader("content-type", "application/json");
                request.AddParameter("application/json", json, ParameterType.RequestBody);

                if (autorizacion != null)
                {
                    request.AddHeader("Authorization", autorizacion);
                }

                IRestResponse response = client.Execute(request);

                dynamic datos = JsonConvert.DeserializeObject(response.Content);

                return datos;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return null;
            }
        }

        public static string Eliminar(string dni)
        {
            throw new NotImplementedException();
        }

        public static string Activar(string dni)
        {
            throw new NotImplementedException();
        }

        public static string Desactivar(string dni)
        {
            throw new NotImplementedException();
        }
    }
}
