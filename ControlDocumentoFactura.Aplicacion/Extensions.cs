using MediatR;
using Microsoft.Extensions.DependencyInjection;
using ControlDocumentoFactura.Aplicacion.Services.Reservas;
using ControlDocumentoFactura.Dominio.Factories.Pagos;
using ControlDocumentoFactura.Dominio.Factories.Reservas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace ControlDocumentoFactura.Aplicacion
{
    public static class Extensions
    {
        public static IServiceCollection AddApplication(this IServiceCollection services)
        {
            services.AddMediatR(Assembly.GetExecutingAssembly());
            services.AddTransient<IReservaService, ReservaService>();
            services.AddTransient<IReservaFactory, ReservaFactory>();

            services.AddTransient<IPagoService, PagoService>();
            services.AddTransient<IPagoFactory, PagoFactory>();

            services.AddTransient<IFacturaService, FacturaService>();
            services.AddTransient<IFacturaFactory, FacturaFactory>();

            return services;
        }

    }
}
