using Microsoft.EntityFrameworkCore;
using Diagnosticos.Persistence.Database;
using Diagnosticos.Service.Queries.DTOs;
using Service.Common.Collection;
using Service.Common.Mapping;
using Service.Common.Paging;
using System.Linq;
using System.Threading.Tasks;

namespace Diagnosticos.Service.Queries
{
    public interface IDiagnosticoQueryService
    {
        Task<DataCollection<DiagnosticoDto>> GetAllAsync(int page, int take);
        Task<DiagnosticoDto> GetAsync(int id);
    }

    public class DiagnosticoQueryService : IDiagnosticoQueryService
    {
        private readonly ApplicationDbContext _context;

        public DiagnosticoQueryService(
            ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<DataCollection<DiagnosticoDto>> GetAllAsync(int page, int take) 
        {
            var collection = await _context.Diagnosticos
                .Include(x => x.DetallesDiagnostico)
                .OrderByDescending(x => x.Id)
                .GetPagedAsync(page, take);

            return collection.MapTo<DataCollection<DiagnosticoDto>>();
        }

        public async Task<DiagnosticoDto> GetAsync(int id)
        {
            return (await _context.Diagnosticos.Include(x => x.DetallesDiagnostico).SingleAsync(x => x.Id == id)).MapTo<DiagnosticoDto>();
        }
    }
}
