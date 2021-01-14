using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaDiagnostico.Negocio
{
    public class DiagnosticoCreateCommand
    {

        public int Empleado_Id { get; set; }
        public int Paciente_Id { get; set; }
        public ICollection<DetalleDiagnosticoCreate> DetallesDiagnostico { get; set; } = new List<DetalleDiagnosticoCreate>();

    }
}
