using Identity.Service.Queries;
using Identity.Service.Queries.DTOs;
using MediatR;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Service.Common.Collection;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Identity.Api.Controllers
{
    [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    [ApiController]
    [Route("usuarios")]
    public class UsuarioController : ControllerBase
    {
        private readonly IUsuarioQueryService _usuarioQueryService;
        private readonly ILogger<UsuarioController> _logger;
        private readonly IMediator _mediator;

        public UsuarioController(
            ILogger<UsuarioController> logger,
            IMediator mediator,
            IUsuarioQueryService usuarioQueryService)
        {
            _logger = logger;
            _mediator = mediator;
            _usuarioQueryService = usuarioQueryService;
        }

        [HttpGet]
        public async Task<DataCollection<UsuarioDto>> GetAll(int page = 1, int take = 10, string ids = null)
        {
            IEnumerable<string> users = ids?.Split(',');
            return await _usuarioQueryService.GetAllAsync(page, take, users);
        }

        [HttpGet("{id}")]
        public async Task<UsuarioDto> Get(string id)
        {
            return await _usuarioQueryService.GetAsync(id);
        }
    }
}
