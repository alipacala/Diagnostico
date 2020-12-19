using Personal.Domain;
using Microsoft.EntityFrameworkCore;
using Personal.Persistence.Database.Configuration;

namespace Personal.Persistence.Database
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

            builder.HasDefaultSchema("Personal");

            ModelConfig(builder);
        }

        public DbSet<Empleado> Empleados { get; set; }

        private void ModelConfig(ModelBuilder modelBuilder)
        {
            new EmpleadoConfiguration(modelBuilder.Entity<Empleado>());
        }
    }
}
