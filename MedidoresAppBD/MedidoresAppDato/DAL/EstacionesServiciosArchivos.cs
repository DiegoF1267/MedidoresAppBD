using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresAppDato.DAL
{
   public class EstacionesServiciosArchivos : IEstacionesServicios
    {

        private EstacionesServiciosArchivos()
        {

        }
        private static IEstacionesServicios instancia;
        public static IEstacionesServicios GetInstancia()
        {
            if (instancia == null)
                instancia = new EstacionesServiciosArchivos();
            return instancia;
        }

        public MedidoresAppBDEntities dbEntities = new MedidoresAppBDEntities();

        public List<EstacionServicio> GetAll()
        {
            return dbEntities.EstacionServicio.ToList();
        }

        public void Remove(int id)
        {
            EstacionServicio e = dbEntities.EstacionServicio.Find(id);
            dbEntities.EstacionServicio.Remove(e);
            dbEntities.SaveChanges();
        }

        public void Save(EstacionServicio e)
        {
            dbEntities.EstacionServicio.Add(e);
            dbEntities.SaveChanges();
        }
    }
}
