using Diagnosticos.Domain;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Diagnosticos.Persistence.Database.Configuration
{
    public class DetalleDiagnosticoConfiguration
    {
        public DetalleDiagnosticoConfiguration(EntityTypeBuilder<DetalleDiagnostico> entityBuilder)
        {
            entityBuilder.HasKey(x => x.Id);
        }
    }
}
