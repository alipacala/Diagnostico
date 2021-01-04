using Microsoft.EntityFrameworkCore;
using Clientes.Domain;
using Clientes.Persistence.Database.Configuration;

namespace Clientes.Persistence.Database
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(
            DbContextOptions<ApplicationDbContext> options
        )
            : base(options)
        {

        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            builder.HasDefaultSchema("Clientes");

            ModelConfig(builder);
        }

        public DbSet<Paciente> Pacientes { get; set; }

        private void ModelConfig(ModelBuilder modelBuilder)
        {
            PacienteConfiguration.Configure(modelBuilder.Entity<Paciente>());
        }
    }
}
