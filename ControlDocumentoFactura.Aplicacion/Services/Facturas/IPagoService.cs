using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ControlDocumentoFactura.Aplicacion.Services.Reservas
{
    public interface IPagoService
    {
        Task<string> GenerarNroComprobanteAsync();
    }
}
