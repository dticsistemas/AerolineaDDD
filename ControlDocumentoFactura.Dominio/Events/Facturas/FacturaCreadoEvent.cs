using ShareKernel.Cores;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ControlDocumentoFactura.Dominio.Events.Reservas
{
     public record FacturaCreadoEvent : DomainEvent
    {
        public Guid ReservaId { get; }
        public decimal Monto { get; }
        public FacturaCreadoEvent(Guid reservaId, decimal monto
            ) : base(DateTime.Now)
        {
            ReservaId = reservaId;
            Monto = monto;

        }
    }
}
