using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresAppDato.DAL
{
    public interface IEstacionesServicios
    {
        void Save(EstacionServicio e);
        List<EstacionServicio> GetAll();
        void Remove(int id);
    }
}
