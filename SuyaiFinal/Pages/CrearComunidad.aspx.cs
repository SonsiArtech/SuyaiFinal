using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SuyaiFinal.Controller;

namespace SuyaiFinal.Pages
{
  public partial class CrearComunidad : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LnkVolver_Click(object sender, EventArgs e)
    {
      Response.Redirect("Registrarse.aspx");
    }

    protected void BtnRegistrarComunidad_Click(object sender, EventArgs e)
    {
      LbResultado.Text = ComunidadController.AddComunidad(TxtId.Text, TxtNombre.Text);
    }
  }
}