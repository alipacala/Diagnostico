using Diagnosticos.Service.EventHandlers.Commands;
using Diagnosticos.Service.Queries.DTOs;
using Diagnosticos.Service.Queries;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Threading.Tasks;
using Service.Common.Collection;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Authentication.JwtBearer;

namespace Diagnosticos.Api.Controllers
{
    [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    [ApiController]
    [Route("diagnosticos")]
    public class DiagnosticosController : ControllerBase
    {
        private readonly IDiagnosticoQueryService _diagnosticoQueryService;
        private readonly ILogger<DiagnosticosController> _logger;
        private readonly IMediator _mediator;

        public DiagnosticosController(
            ILogger<DiagnosticosController> logger,
            IMediator mediator,
            IDiagnosticoQueryService diagnosticoQueryService)
        {
            _logger = logger;
            _mediator = mediator;
            _diagnosticoQueryService = diagnosticoQueryService;
        }

        [HttpGet]
        public async Task<DataCollection<DiagnosticoDto>> GetAll(int page = 1, int take = 10) 
        {
            return await _diagnosticoQueryService.GetAllAsync(page, take);
        }

        [HttpGet("{id}")]
        public async Task<DiagnosticoDto> Get(int id)
        {
            return await _diagnosticoQueryService.GetAsync(id);
        }

        [HttpPost]
        public async Task<IActionResult> Create(DiagnosticoCreateCommand notification)
        {
            await _mediator.Publish(notification);
            return Ok();
        }
    }
}
