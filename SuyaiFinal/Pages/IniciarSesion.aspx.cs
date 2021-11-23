using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuyaiFinal.Pages
{
  public partial class IniciarSesion : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkRegistrate_Click(object sender, EventArgs e)
    {
      Response.Redirect("Registrarse.aspx");
    }

    protected void BtnIngresar_Click(object sender, EventArgs e)
    {
      Response.Redirect("Bienvenido.aspx");
    }
  }
}