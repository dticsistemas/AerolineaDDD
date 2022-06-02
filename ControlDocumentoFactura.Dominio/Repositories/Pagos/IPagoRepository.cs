﻿using ControlDocumentoFactura.Dominio.Models.Pagos;
using ShareKernel.Cores;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ControlDocumentoFactura.Dominio.Repositories.Pagos
{
    public interface IPagoRepository : IRepository<Pago, Guid>
    {
        Task UpdateAsync(Pago obj);

    }
}
