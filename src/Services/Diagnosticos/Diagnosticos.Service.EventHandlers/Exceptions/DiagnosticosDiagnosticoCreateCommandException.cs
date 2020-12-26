using System;
using System.Collections.Generic;
using System.Text;

namespace Diagnosticos.Service.EventHandlers.Exceptions
{
    public class DiagnosticosDiagnosticoCreateCommandException : Exception
    {
        public DiagnosticosDiagnosticoCreateCommandException(string message) : base(message)
        {

        }
    }
}
