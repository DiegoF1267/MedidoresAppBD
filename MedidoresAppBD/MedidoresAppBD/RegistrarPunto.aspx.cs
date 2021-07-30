using AdministracionModel.DAL;
using AdministracionModel.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedidoresWeb
{
    public partial class RegistrarEstacion : System.Web.UI.Page
    {

        IPuntosCargas dal = PuntosCargasFactory.Create();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnPuntoCarga_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int id = Int32.Parse(idTxt.Text.Trim());
                int capacidad = Int32.Parse(capTxt.Text.Trim());
                DateTime fecha = vcTxt.SelectedDate;
                string tipo = tipoRbl.SelectedItem.Value.ToString();

                PuntoCarga pc = new PuntoCarga();
                pc.Id = id;
                pc.CapcidadMaxVehiculos = capacidad;
                pc.TerminoVidaUtil = fecha;
                pc.Tipo = tipo;

                dal.Save(pc);
                Response.Redirect("VerPunto.aspx");
                

            }
        }




    }
}