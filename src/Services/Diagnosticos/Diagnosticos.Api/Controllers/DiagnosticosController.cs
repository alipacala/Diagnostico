using Diagnosticos.Service.EventHandlers.Commands;
using Diagnosticos.Service.Queries.DTOs;
using Diagnosticos.Service.Queries;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Service.Common.Collection;

namespace Personal.Api.Controllers
{
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
        public async Task<DataCollection<DiagnosticoDto>> GetAll(int page = 1, int take = 10, string ids = null) 
        {
            IEnumerable<int> diagnosticosIds = null;

            if (!string.IsNullOrEmpty(ids)) 
            {
                diagnosticosIds = ids.Split(',').Select(x => Convert.ToInt32(x));
            }

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
