using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresAppDato.DAL
{
    public class PuntosCargasArchivos : IPuntosCargas
    {

        private PuntosCargasArchivos()
        {

        }
        private static IPuntosCargas instancia;
        public static IPuntosCargas GetInstancia()
        {
            if (instancia == null)
            {
                instancia = new PuntosCargasArchivos();
            }
            return instancia;
        }

        public MedidoresAppBDEntities dbEntities = new MedidoresAppBDEntities();


        public List<PuntoCarga> GetAll()
        {
            return dbEntities.PuntoCarga.ToList();
        }

        public List<PuntoCarga> GetAll(string tipo)
        {
            var query = from p in dbEntities.PuntoCarga
                        where p.Tipo == tipo
                        select p;

            return query.ToList();
        }

        public void Save(PuntoCarga a)
        {
            dbEntities.PuntoCarga.Add(a);
            dbEntities.SaveChanges();
        }

        public void Update(PuntoCarga p,int idEliminar)
        {
            PuntoCarga e = dbEntities.PuntoCarga.Find(idEliminar);
            dbEntities.PuntoCarga.Remove(e);
            dbEntities.PuntoCarga.Add(p);
            dbEntities.SaveChanges();

        }
    }
}
