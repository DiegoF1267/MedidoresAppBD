using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresAppDato.DAL
{
    public class EstacionDAL
    {
        public MedidoresAppBDEntities dbEntities = new MedidoresAppBDEntities();

        public void Add(EstacionServicio e)
        {
            dbEntities.EstacionServicio.Add(e);
            dbEntities.SaveChanges();
        }

        public void Remove(int Id)
        {
            EstacionServicio e = dbEntities.EstacionServicio.Find(Id);
            dbEntities.EstacionServicio.Remove(e);
            dbEntities.SaveChanges();

        }
        
        public List<EstacionServicio> GetAll()
        {
            return dbEntities.EstacionServicio.ToList();
        }
    }
}
