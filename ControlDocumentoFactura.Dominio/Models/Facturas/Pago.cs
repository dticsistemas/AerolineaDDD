﻿using ControlDocumentoFactura.Dominio.Events.Reservas;
using ControlDocumentoFactura.Dominio.Models.Pagos.ValueObjetcs;
using ControlDocumentoFactura.Dominio.Models.ValueObjects;
using ShareKernel.Cores;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ControlDocumentoFactura.Dominio.Models.Pagos
{
    public class Pago : AggregateRoot<Guid>
    {
        public Guid ReservaId { get; private set; }
        public MontoValue Monto { get; private set; }
        public DateTime Fecha { get; private set; }
        public NitFacturaValue CodComprobante { get; private set; }

        public Pago() { }
        public Pago(String codComprobante)
        {
            Id = Guid.NewGuid();
            Monto = new MontoValue(0m);
            CodComprobante = codComprobante;

        }
        public void CrearPago(Guid reservaId, decimal monto)
        {
            Monto = monto;
            ReservaId = reservaId;
            Fecha = DateTime.Now;            

        }
        public void ConsolidarPago()
        {
            AddDomainEvent(new FacturaCreadoEvent(ReservaId,Monto));
        }

    }
}
