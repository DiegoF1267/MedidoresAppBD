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
    public partial class RegistrarPunto : System.Web.UI.Page
    {

        IEstacionesServicios dal = EstacionesServiciosFactory.Create();

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void BtnEstacion_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int id = Int32.Parse(idTxt.Text.Trim());
                int capacidad = Int32.Parse(capTxt.Text.Trim());
                string direccion = diTxt.Text.Trim();
                string horario = HrTxt.Text.Trim();
                string region = RegionRbl.SelectedItem.Value.ToString();

                EstacionServicio es = new EstacionServicio();
                es.Id = id;
                es.CapMaxEstacion = capacidad;
                es.Direccion = direccion;
                es.HorarioAtencion = horario;
                es.Region = region;
                dal.Save(es);
                Response.Redirect("VerEstacion.aspx");
            }
        }


    }
}