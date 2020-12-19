using Clientes.Service.EventHandlers.Commands;
using Clientes.Service.Queries.DTOs;
using Clientes.Service.Queries;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Service.Common.Collection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Personal.Api.Controllers
{
    [ApiController]
    [Route("pacientes")]
    public class PacienteController : ControllerBase
    {
        private readonly IPacienteQueryService _pacienteQueryService;
        private readonly ILogger<PacienteController> _logger;
        private readonly IMediator _mediator;

        public PacienteController(
            ILogger<PacienteController> logger,
            IMediator mediator,
            IPacienteQueryService pacienteQueryService)
        {
            _logger = logger;
            _mediator = mediator;
            _pacienteQueryService = pacienteQueryService;
        }

        [HttpGet]
        public async Task<DataCollection<PacienteDto>> GetAll(int page = 1, int take = 10, string ids = null) 
        {
            IEnumerable<int> pacientesIds = null;

            if (!string.IsNullOrEmpty(ids)) 
            {
                pacientesIds = ids.Split(',').Select(x => Convert.ToInt32(x));
            }

            return await _pacienteQueryService.GetAllAsync(page, take, pacientesIds);
        }

        [HttpGet("{id}")]
        public async Task<PacienteDto> Get(int id)
        {
            return await _pacienteQueryService.GetAsync(id);
        }

        [HttpPost]
        public async Task<IActionResult> Create(PacienteCreateCommand notification)
        {
            await _mediator.Publish(notification);
            return Ok();
        }

        [HttpPatch]
        public async Task<IActionResult> UpdateContactInfo(PacienteUpdateContactInfoCommand notification)
        {
            await _mediator.Publish(notification);
            return Ok();
        }
    }
}
