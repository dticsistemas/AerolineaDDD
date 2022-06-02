﻿using ControlDocumentoFactura.Dominio.Models.Reservas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ControlDocumentoFactura.Dominio.Factories.Reservas
{
    public class ReservaFactory : IReservaFactory
    {
        public Reserva Create(string nroReserva)
        {
            return new Reserva(nroReserva);
        }
    }
}
