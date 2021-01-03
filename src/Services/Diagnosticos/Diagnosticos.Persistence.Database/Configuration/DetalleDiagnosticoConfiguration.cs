using Diagnosticos.Domain;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Diagnosticos.Persistence.Database.Configuration
{
    public class DetalleDiagnosticoConfiguration
    {
        public DetalleDiagnosticoConfiguration(EntityTypeBuilder<DetalleDiagnostico> entityBuilder)
        {
            entityBuilder.HasKey(x => x.Id);
            entityBuilder.HasOne(x => x.Diagnostico)
                .WithMany(x => x.DetallesDiagnostico)
                .HasForeignKey(x => x.Diagnostico_Id)
                .IsRequired();
        }
    }
}
