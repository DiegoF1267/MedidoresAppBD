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
    public partial class EliminarPunto : System.Web.UI.Page
    {
        
        IPuntosCargas dal = PuntosCargasFactory.Create();
        static int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string idTxt = Request.QueryString.Get("idActualizar");
                id = Convert.ToInt32(idTxt);
                PuntoCarga p = dal.FindById(id);
                capTxt.Text = p.CapcidadMaxVehiculos+"";
                vcTxt.SelectedDate = p.TerminoVidaUtil;
                tipoRbl.SelectedValue = p.Tipo;
            }



            
        }

        protected void BtnPuntoCarga_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                int capacidad = Int32.Parse(capTxt.Text.Trim());
                DateTime fecha = vcTxt.SelectedDate;
                string tipo = tipoRbl.SelectedItem.Value.ToString();

                PuntoCarga pc = new PuntoCarga();
                pc.Id = id;
                pc.CapcidadMaxVehiculos = capacidad;
                pc.TerminoVidaUtil = fecha;
                pc.Tipo = tipo;

                dal.Update(pc);
                Response.Redirect("VerPunto.aspx");
            }
        }
    }
}