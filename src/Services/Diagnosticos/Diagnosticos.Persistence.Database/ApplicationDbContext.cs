using Microsoft.EntityFrameworkCore;
using Diagnosticos.Domain;
using Diagnosticos.Persistence.Database.Configuration;

namespace Diagnosticos.Persistence.Database
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

            // Database schema
            builder.HasDefaultSchema("Diagnosticos");

            // Model Contraints
            ModelConfig(builder);
        }

        public DbSet<Diagnostico> Diagnosticos { get; set; }
        public DbSet<DetalleDiagnostico> DetallesDiagnosticos { get; set; }

        private void ModelConfig(ModelBuilder modelBuilder)
        {
            DiagnosticoConfiguration.Configure(modelBuilder.Entity<Diagnostico>());
            DetalleDiagnosticoConfiguration.Configure(modelBuilder.Entity<DetalleDiagnostico>());
        }
    }
}
