using ControlDocumentoFactura.Dominio.Models.Clientes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace ControlDocumentoFactura.Test.Dominio.Models
{
    public class Cliente_Test
    {
        [Fact]
        public void Cliente_CheckPropertiesValid()
        {
            var idCliente = Guid.NewGuid();
            var nombreCliente = "Juan Prueba Test";
            var objCliente = new Cliente(nombreCliente);
            Assert.NotEqual(Guid.Empty, objCliente.Id);
            Assert.Equal(nombreCliente,objCliente.NombreCompleto);

        }
        [Fact]
        public void TestConstructor_IsPrivate()
        {
            var cliente = new Cliente();
            Assert.Null(cliente.NombreCompleto);
            Assert.Equal(Guid.Empty, cliente.Id);
        }

    }
}
