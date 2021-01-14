using Newtonsoft.Json;
using System.Net;
using System.IO;

namespace SistemaDiagnostico.Negocio
{
    public static class UsuarioNegocio
    {
        //Metodo Login
        public static IdentityAccess Login(UsuarioLoginCommand usuario)
        {
            var data = JsonConvert.SerializeObject(usuario);
            var identityUrl = "http://localhost:10003/identity/authentication";
            // var identityUrl = "http://diag-desktop-client.azurewebsites.net/identity/authentication";

            var request = (HttpWebRequest)WebRequest.Create(identityUrl);

            request.Method = "POST";
            request.ContentType = "application/json";
            request.ContentLength = data.Length;

            using (var streamWriter = new StreamWriter(request.GetRequestStream()))
            {
                streamWriter.Write(data);
            }

            var response = (HttpWebResponse)request.GetResponse();
            var streamReader = new StreamReader(response.GetResponseStream());
            var result = streamReader.ReadToEnd();

            return JsonConvert.DeserializeObject<IdentityAccess>(result);
        }

        public static object Listar()
        {
            throw new System.NotImplementedException();
        }

        public static object Buscar(string buscar)
        {
            throw new System.NotImplementedException();
        }

        public static string Eliminar(int id)
        {
            throw new System.NotImplementedException();
        }

        public static string Actualizar(int v1, string v2, string v3, string v4, string v5)
        {
            throw new System.NotImplementedException();
        }

        public static string Activar(int codigo)
        {
            throw new System.NotImplementedException();
        }

        public static string Desactivar(int codigo)
        {
            throw new System.NotImplementedException();
        }
    }
}
