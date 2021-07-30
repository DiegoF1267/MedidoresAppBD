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
    public partial class VerEstacion : System.Web.UI.Page
    {

        IEstacionesServicios dal = EstacionesServiciosFactory.Create();

        private void CargarTabla(List<EstacionServicio> estaciones)
        {
            estacionesGrid.DataSource = estaciones;
            estacionesGrid.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTabla(dal.GetAll());
            }
        }

        protected void estacionesGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "eliminar")
            {

                String idAEliminar = e.CommandArgument.ToString();

                //elimino el rut de la lista
                dal.Remove(Int32.Parse(idAEliminar));

                //actualizo la grilla
                CargarTabla(dal.GetAll());

            }
        }
        }
}