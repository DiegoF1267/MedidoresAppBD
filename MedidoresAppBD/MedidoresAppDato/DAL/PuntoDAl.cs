using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresAppDato.DAL
{
    class PuntoDAL
    {
        public MedidoresAppBDEntities dbEntities = new MedidoresAppBDEntities();

        public void Add(PuntoCarga p)
        {
            dbEntities.PuntoCarga.Add(p);
            dbEntities.SaveChanges();
        }

        public List<PuntoCarga> GetAll()
        {
            return dbEntities.PuntoCarga.ToList();
        }

        //filtro
        public List<PuntoCarga> GetAll(String tipo)
        {
            var query = from p in dbEntities.PuntoCarga
                        where p.Tipo == tipo
                        select p;

            return query.ToList();
        }

    }
}
