using System;
using Newtonsoft.Json;
using System.Windows.Forms;
using RestSharp;
using System.Data;

namespace SistemaDiagnostico.Negocio
{
    public class DiagnosticoNegocio
    {

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

        public static object Listar()
        {
            throw new NotImplementedException();
        }

        public static object Buscar(string buscar)
        {
            throw new NotImplementedException();
        }

        public static DataTable BuscarPD(string busqueda)
        {
            throw new NotImplementedException();
        }

        public static string Eliminar(int nro)
        {
            throw new NotImplementedException();
        }
    }
}
