using ControlDocumentoFactura.Aplicacion.Dtos.Pagos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace ControlDocumentoFactura.Test.Aplicacion.Dtos
{
    public class FacturaDtoTest
    {
        [Fact]
        public void FacturaDto_CheckPropertiesValid()
        {
            var idFacturaTest = new Guid();
            var idReservaTest = new Guid();
            decimal montoTest = new(4.0);
            DateTime fechaTest = DateTime.Now;
            var nroFacturaTest = "2022-05-15";

            var objFactura = new FacturaDto();

            Assert.Equal(Guid.Empty,objFactura.Id);
            Assert.Equal(Guid.Empty, objFactura.ReservaId);
            Assert.Equal(new decimal(0.0), objFactura.Monto);
            Assert.Equal(DateTime.MinValue,objFactura.Fecha);
            Assert.Null(objFactura.NroFactura);

            objFactura.Id=idFacturaTest;
            objFactura.ReservaId = idReservaTest;
            objFactura.Monto= montoTest;
            objFactura.Fecha = fechaTest;
            objFactura.NroFactura = nroFacturaTest;

            Assert.Equal(idFacturaTest,objFactura.Id);
            Assert.Equal(idReservaTest,objFactura.ReservaId);
            Assert.Equal(montoTest,objFactura.Monto);
            Assert.Equal(fechaTest,objFactura.Fecha);
            Assert.Equal(nroFacturaTest,objFactura.NroFactura);

        }
    }
}
