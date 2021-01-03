using Identity.Domain;
using Identity.Service.EventHandlers.Commands;
using MediatR;
using Microsoft.AspNetCore.Identity;
using System.Threading;
using System.Threading.Tasks;

namespace Identity.Service.EventHandlers
{
    public class UsuarioCreateEventHandler : IRequestHandler<UsuarioCreateCommand, IdentityResult>
    {
        private readonly UserManager<Usuario> _userManager;

        public UsuarioCreateEventHandler(
            UserManager<Usuario> userManager)
        {
            _userManager = userManager;
        }

        public async Task<IdentityResult> Handle(UsuarioCreateCommand notification, CancellationToken cancellationToken)
        {
            var entry = new Usuario
            {
                Empleado_Id = notification.Empleado_Id,
                NombreCompleto = notification.NombreCompleto,
                UserName = notification.UserName,
            };

            return await _userManager.CreateAsync(entry, notification.Password);
        }
    }
}
