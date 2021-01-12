using Diagnosticos.Persistence.Database;
using Microsoft.EntityFrameworkCore;

namespace Diagnosticos.Bdd.Tests
{
    public static class ApplicationDbContextInMemory
    {
        public static ApplicationDbContext Get() 
        {
            var options = new DbContextOptionsBuilder<ApplicationDbContext>()
                .UseInMemoryDatabase(databaseName: $"Diagnosticos.Db")
                .Options;

            return new ApplicationDbContext(options);
        }
    }
}
