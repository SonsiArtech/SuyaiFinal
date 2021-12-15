using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SuyaiFinal.Clases;
using SuyaiFinal.Controller;
using System.Globalization;

namespace SuyaiFinal.Pages
{
  public partial class Perfil : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      Usuario usr = (Usuario)Session["login"];

      //cargar datos de usuario
      string nombre = usr.Nombre;
      string apellido = usr.Apellido;
      lbNombrePerfil.Text = CultureInfo.CurrentCulture.TextInfo.ToTitleCase(nombre + " " + apellido);
      lbRutPerfil.Text = usr.Rut;
      lbComunaPerfil.Text = "Chile, "+ usr.Ciudad;
      lbDireccionPerfil.Text = usr.Direccion;
      lbNumeroPerfil.Text = "+ 56 " + usr.Telefono;
      lbCorreoPerfil.Text = usr.Correo;
      lbComunidadPerfil.Text = usr.Comunidad;

    }
  }
}