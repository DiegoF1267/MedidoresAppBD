using MedidoresAppDato;
using MedidoresAppDato.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedidoresWeb
{
    public partial class EliminarPunto : System.Web.UI.Page
    {
        
        IPuntosCargas dal = PuntosCargasFactory.Create();
        protected void Page_Load(object sender, EventArgs e)
        {
    
        }

        protected void BtnPuntoCarga_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string idTxt = Request.QueryString.Get("idActualizar");
                int idEliminar = Convert.ToInt32(idTxt);
                int capacidad = Int32.Parse(capTxt.Text.Trim());
                DateTime fecha = vcTxt.SelectedDate;
                string tipo = tipoRbl.SelectedItem.Value.ToString();

                PuntoCarga pc = new PuntoCarga();
                pc.Id = idEliminar;
                pc.CapMaxVehiculos = capacidad;
                pc.TerminoVidaUtil = fecha;
                pc.Tipo = tipo;

                dal.Update(pc, idEliminar);
                Response.Redirect("VerPunto.aspx");
            }
        }
    }
}