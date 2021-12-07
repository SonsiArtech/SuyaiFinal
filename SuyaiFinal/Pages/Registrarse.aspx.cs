using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SuyaiFinal.Controller;

namespace SuyaiFinal.Pages
{
  public partial class Registrarse : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      ComunidadController.precargarComunidades();
      if (!IsPostBack)
      {
        cargarComunidad();
      }
      ComunaController.precargarComunas();
      if (!IsPostBack)
      {
        cargarComunas();
      }
    }
    public void cargarComunidad()
    {
      DropComunidad.DataSource = from c in ComunidadController.getListado()
                                 select new
                                 {
                                   id = c.Id,
                                   nombre = c.NombreComunidad
                                 };
      DropComunidad.DataValueField = "id";
      DropComunidad.DataTextField = "nombre";
      DropComunidad.DataBind();

    }
    public void cargarComunas()
    {
      DropComunas.DataSource = from comuna in ComunaController.getListado()
                                 select new
                                 {
                                   id = comuna.Id,
                                   nombre = comuna.Nombre
                                 };
      DropComunas.DataValueField = "id";
      DropComunas.DataTextField = "nombre";
      DropComunas.DataBind();

    }

    protected void LinkVolver_Click(object sender, EventArgs e)
    {
      Response.Redirect("IniciarSesion.aspx");
    }

    protected void LnkCrearComunidad_Click(object sender, EventArgs e)
    {
      Response.Redirect("CrearComunidad.aspx");
    }

    protected void BtnAgregar_Click(object sender, EventArgs e)
    {
      LbRegistro.Text = UsuarioController.AddUsuario(TxtRut.Text, TxtNombre.Text, TxtApellido.Text, TxtEdad.Text, TxtTelefono.Text, TxtCorreo.Text,
        TxtDireccion.Text, DropComunas.SelectedValue, TxtUser.Text, TxtPass.Text, DropComunidad.SelectedValue);

    }

  }
}