using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresAppDato.DAL
{
    public interface IPuntosCargas
    {
        void Save(PuntoCarga a);
        List<PuntoCarga> GetAll();
        List<PuntoCarga> GetAll(string tipo);
        void Update(PuntoCarga p, int idEliminar);
    }
}
