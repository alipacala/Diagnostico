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
using Prolog;

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
            entry.Enfermedad = DetermineEnfermedad(notification);
            entry.Fecha = DateTime.UtcNow;
            entry.Paciente_Id = notification.Paciente_Id;
            entry.Empleado_Id = notification.Empleado_Id;
        }

        private string DetermineEnfermedad(DiagnosticoCreateCommand notification)
        {
            var prolog = new PrologEngine(persistentCommandHistory: false);
            
            var enfermedades = new List<Enfermedad>
            {
                new Enfermedad { Nombre = "gripe", Cantidad = 0, Porcentaje = 0, CantSintomas = 5d },
                new Enfermedad { Nombre = "gripeA", Cantidad = 0, Porcentaje = 0, CantSintomas = 6d },
                new Enfermedad { Nombre = "anemia", Cantidad = 0, Porcentaje = 0, CantSintomas = 5d },
                new Enfermedad { Nombre = "rubeola", Cantidad = 0, Porcentaje = 0, CantSintomas = 4d },
                new Enfermedad { Nombre = "dengue", Cantidad = 0, Porcentaje = 0, CantSintomas = 5d },
                new Enfermedad { Nombre = "neumonia", Cantidad = 0, Porcentaje = 0, CantSintomas = 4d },
                new Enfermedad { Nombre = "covid", Cantidad = 0, Porcentaje = 0, CantSintomas = 7d }
            };

            foreach (var detalle in notification.DetallesDiagnostico)
            {
                var solution = prolog
                    .GetAllSolutions(@"D:/Escritorio/enfermedad.pl", $"enfermedadde(Z, {detalle.Sintoma})")
                    .NextSolution;

                foreach (var variable in solution)
                {
                    var coincidencia = variable.NextVariable.First().Value;

                    if (enfermedades.Select(x => x.Nombre).Contains(coincidencia))
                        enfermedades.Single(x => x.Nombre == coincidencia).Cantidad++;
                }
            }

            foreach (var enfermedad in enfermedades)
                enfermedad.Porcentaje = enfermedad.Cantidad * 100 / enfermedad.CantSintomas;

            var maxPorc = enfermedades.Max(x => x.Porcentaje);

            return enfermedades.First(x => x.Porcentaje == maxPorc).Nombre;
        }

        class Enfermedad
        {
            public string Nombre;
            public int Cantidad;
            public double Porcentaje;
            public double CantSintomas;
        }
    }
}
