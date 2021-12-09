using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SuyaiFinal.Clases;
using SuyaiFinal.Controller;

namespace SuyaiFinal.Pages
{
  public partial class Bienvenido : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      //Control DE ACCESO
      if (Session["login"] == null)
      {
        Response.Write("Acceso no permitido");
        System.Threading.Thread.Sleep(2000);
        Response.Redirect("IniciarSesion.aspx");
      }
      //Fin DE CONTROL DE USUARIO

      //Control DE USUARIO
      Usuario usr = (Usuario)Session["login"];
      if (usr.UserRol.Codigo != 1)
      {
        Response.Write("Rol no valido");
        System.Threading.Thread.Sleep(2000);
        Response.Redirect("Registrarse.aspx");
      }

    }
  }
}