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
  public partial class Bienvenido : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      //Control DE ACCESO
      if (Session["login"] == null)
      {
        Session["error"] = "Acceso no permiritdo";
        Response.Redirect("IniciarSesion.aspx");
      }
      //Fin DE CONTROL DE USUARIO

      //Control DE USUARIO
      Usuario usr = (Usuario)Session["login"];
      if (usr.UserRol.Codigo != 1)
      {
        Session["error"] = "Rol no valido";
        Response.Redirect("IniciarSesion.aspx");
      }
      //cargar datos de usuario
      string nombre = usr.Nombre;
      string apellido = usr.Apellido;
      lbNombreBienvenido.Text =  CultureInfo.CurrentCulture.TextInfo.ToTitleCase(nombre + " " +apellido) ;

    }
  }
}