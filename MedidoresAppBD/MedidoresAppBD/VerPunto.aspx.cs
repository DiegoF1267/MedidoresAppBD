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
    public partial class VerPunto : System.Web.UI.Page
    {
        IPuntosCargas dal = PuntosCargasFactory.Create();

        private void CargarTabla(List<PuntoCarga> puntos)
        {
            puntosGrid.DataSource = puntos;
            puntosGrid.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTabla(dal.GetAll());
            }
        }

        protected void puntosGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Actualizar")
            {
                string idAActualizar = e.CommandArgument.ToString();
                int idActualizar = Convert.ToInt32(idAActualizar);
                Response.Redirect("ActualizarPunto.aspx?idActualizar=" + idActualizar);
            }
        }

        protected void TipoDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(2000);
            string tipo = TipoDdl.SelectedValue.ToString();
            List<PuntoCarga> filtrada = dal.GetAll(tipo);
            CargarTabla(filtrada);
        }

        protected void todosChx_CheckedChanged(object sender, EventArgs e)
        {
            TipoDdl.Enabled = !todosChx.Checked;
            if (todosChx.Checked)
            {
                CargarTabla(dal.GetAll());
            }
        }
    }
}