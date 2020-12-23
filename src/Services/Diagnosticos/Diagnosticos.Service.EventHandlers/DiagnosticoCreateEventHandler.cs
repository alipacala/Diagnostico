using MediatR;
using Microsoft.Extensions.Logging;
using Diagnosticos.Domain;
using Diagnosticos.Persistence.Database;
using Diagnosticos.Service.EventHandlers.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using SbsSW.SwiPlCs;

namespace Diagnosticos.Service.EventHandlers
{
    public class DiagnosticoCreateEventHandler :
        INotificationHandler<DiagnosticoCreateCommand>
    {
        private readonly ApplicationDbContext _context;
        private readonly ILogger<DiagnosticoCreateEventHandler> _logger;

        public DiagnosticoCreateEventHandler(
            ApplicationDbContext context,
            ILogger<DiagnosticoCreateEventHandler> logger)
        {
            _context = context;
            _logger = logger;
        }

        public async Task Handle(DiagnosticoCreateCommand notification, CancellationToken cancellationToken)
        {
            _logger.LogInformation("! Empezó la creación de un nuevo diagnóstico");
            var entry = new Diagnostico();

            using (var transaction = await _context.Database.BeginTransactionAsync()) 
            {
                _logger.LogInformation("! Preparando los detalles");
                PrepareDetail(entry, notification);

                _logger.LogInformation("! Preparando la cabecera");
                PrepareHeader(entry, notification);

                _logger.LogInformation("! Guardando el diagnóstico");
                await _context.AddAsync(entry);
                await _context.SaveChangesAsync();

                _logger.LogInformation($"! El diagnóstico ha sido creado");

                await transaction.CommitAsync();
            }

            _logger.LogInformation("! Terminó la creación de un nuevo diagnóstico");
        }

        private void PrepareDetail(Diagnostico entry, DiagnosticoCreateCommand notification) 
        {
            entry.DetallesDiagnostico = notification.DetallesDiagnostico.Select(x => new DetalleDiagnostico
            {
                Sintoma = x.Sintoma
            }).ToList();
        }

        private void PrepareHeader(Diagnostico entry, DiagnosticoCreateCommand notification)
        {
            // Header information
            entry.Enfermedad = DetermineEnfermedad(entry, notification);
            entry.Fecha = DateTime.UtcNow;
            entry.Paciente_Id = notification.Paciente_Id;
            entry.Empleado_Id = notification.Empleado_Id;
        }

        private string DetermineEnfermedad(Diagnostico entry, DiagnosticoCreateCommand notification)
        {
            Environment.SetEnvironmentVariable("Path", @"C:\\Program Files (x86)\\swipl\\bin");
            string[] p = { "-q", "-f", @"enfermedad.pl" };

            try
            {
                PlEngine.Initialize(p);
            }
            catch (Exception e)
            {
                throw e;
            }

            var listaEnfermedad = new List<string>();
            var listaEnfermedades = new List<ResultadoEnfermedad>
            {
                new ResultadoEnfermedad { NombreEnfermedad = "gripe", CantCoincidencias = 0, PorcCoincidencias = 0, ValorArbitrario = 5d },
                new ResultadoEnfermedad { NombreEnfermedad = "gripeA", CantCoincidencias = 0, PorcCoincidencias = 0, ValorArbitrario = 6d },
                new ResultadoEnfermedad { NombreEnfermedad = "anemia", CantCoincidencias = 0, PorcCoincidencias = 0, ValorArbitrario = 5d },
                new ResultadoEnfermedad { NombreEnfermedad = "rubeola", CantCoincidencias = 0, PorcCoincidencias = 0, ValorArbitrario = 4d },
                new ResultadoEnfermedad { NombreEnfermedad = "dengue", CantCoincidencias = 0, PorcCoincidencias = 0, ValorArbitrario = 5d },
                new ResultadoEnfermedad { NombreEnfermedad = "neumonia", CantCoincidencias = 0, PorcCoincidencias = 0, ValorArbitrario = 4d },
                new ResultadoEnfermedad { NombreEnfermedad = "covid", CantCoincidencias = 0, PorcCoincidencias = 0, ValorArbitrario = 7d }
            };
            var listaSintomas = notification.DetallesDiagnostico.Select(detalle => detalle.Sintoma).ToList();

            foreach (var sintoma in listaSintomas)
            {
                PlQuery query = new PlQuery($"enfermedadde(Z, {sintoma})");
                foreach (PlQueryVariables queryVariables in query.SolutionVariables)
                    listaEnfermedad.Add(queryVariables["Z"].ToString());
            }

            var resultado = from item in listaEnfermedad.Cast<string>()
                            group item by item into g
                            select new
                            {
                                enfermedad = g.Key,
                                cantidad = g.Count()
                            };

            foreach (var enfermedad in listaEnfermedades)
            {
                enfermedad.CantCoincidencias = resultado.Single(x => x.enfermedad == enfermedad.NombreEnfermedad).cantidad;
                enfermedad.PorcCoincidencias = enfermedad.CantCoincidencias * 100 / enfermedad.ValorArbitrario;
            }

            var maxPorc = listaEnfermedades.Max(x => x.PorcCoincidencias);

            return listaEnfermedades.First(x => x.PorcCoincidencias == maxPorc).NombreEnfermedad;
        }

        class ResultadoEnfermedad
        {
            public string NombreEnfermedad;
            public int CantCoincidencias;
            public double PorcCoincidencias;
            public double ValorArbitrario;
        }
    }
}
