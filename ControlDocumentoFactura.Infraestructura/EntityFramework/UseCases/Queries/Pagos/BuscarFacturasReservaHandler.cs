using MediatR;
using Microsoft.EntityFrameworkCore;
using ControlDocumentoFactura.Aplicacion.Dtos.Pagos;
using ControlDocumentoFactura.Aplicacion.UsesCases.Queries.Pagos.BuscarFacturasReserva;
using ControlDocumentoFactura.Infraestructura.EntityFramework.Contexts;
using ControlDocumentoFactura.Infraestructura.EntityFramework.ReadModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace ControlDocumentoFactura.Infraestructura.EntityFramework.UseCases.Queries.Pagos
{
    public class BuscarFacturasReservaHandler :
        IRequestHandler<BuscarFacturasReservaQuery, ICollection<FacturaDto>>
    {
        private readonly DbSet<FacturaReadModel> _pagos;

        public BuscarFacturasReservaHandler(ReadDbContext context)
        {
            _pagos = context.Factura;
        }

        public async Task<ICollection<FacturaDto>> Handle(BuscarFacturasReservaQuery request, CancellationToken cancellationToken)
        {

            var pagosList = await _pagos
                            .AsNoTracking()
                            .Where(x => x.Reserva.Id.Equals(request.ReservaId))
                            .ToListAsync();

            var result = new List<FacturaDto>();

            foreach (var objPago in pagosList)
            {
                FacturaDto pagoDto = new();
                pagoDto.Id = objPago.Id;
                pagoDto.ReservaId = request.ReservaId;
                pagoDto.Monto = objPago.Monto;
                pagoDto.Fecha = objPago.Fecha;
                pagoDto.NroFactura = objPago.NroFactura;


                result.Add(pagoDto);
            }

            return result;
        }
    }
}
