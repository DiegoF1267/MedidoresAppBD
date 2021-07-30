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

        public bool Update(PuntoCarga p)
        {
            //SOLO FALTA ESTO EN TEORIA, NO HAY QUE TOCAR NADA MÁS DEL PROYECTO
            //ARREGLE LOS aspx.cs, TA TODO BIEN, SOLO FALTA EL ACTUALIZAR Y PROBAR SI FUNCA 
            throw new NotImplementedException();
        }
    }
}
