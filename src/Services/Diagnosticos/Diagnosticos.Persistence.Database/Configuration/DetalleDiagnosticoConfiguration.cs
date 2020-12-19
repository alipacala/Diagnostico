using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Diagnosticos.Domain;

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
