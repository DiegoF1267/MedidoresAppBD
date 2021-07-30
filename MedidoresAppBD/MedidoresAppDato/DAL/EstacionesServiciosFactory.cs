using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresAppDato.DAL
{
    public class EstacionesServiciosFactory
    {
        public static IEstacionesServicios Create()
        {
            return EstacionesServiciosArchivos.GetInstancia();
        }
    }
}
