using SuyaiFinal.Controller;
using System;
using SuyaiFinal.Clases;

namespace SuyaiFinal.Pages
{
  public partial class IniciarSesion : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      UsuarioController.precargarUsuarios();

      if (Session["error"] != null)
      {
        lbMensaje.Text = (string)Session["error"];
      }
    }

    protected void BtnIngresar_Click(object sender, EventArgs e)
    {
      Usuario usr = UsuarioController.login(TxtUser.Text, TxtPass.Text);
      System.Threading.Thread.Sleep(2000);
      if (usr != null)
      {
        Session["login"] = usr;
        Response.Redirect("Bienvenido.aspx");
      }
      else
      {
        lbMensaje.Text = "Usuario o contraseña invalidos";
        Session["login"] = null;
      }
    }

    protected void LnkRegistrarse_Click(object sender, EventArgs e)
    {
      Response.Redirect("Registrarse.aspx");
    }
  }
}