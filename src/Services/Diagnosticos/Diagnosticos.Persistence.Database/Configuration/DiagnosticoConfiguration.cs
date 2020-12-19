using Diagnosticos.Domain;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Diagnosticos.Persistence.Database.Configuration
{
    public class DiagnosticoConfiguration
    {
        public DiagnosticoConfiguration(EntityTypeBuilder<Diagnostico> entityBuilder)
        {
            entityBuilder.HasKey(x => x.Id);
        }
    }
}
