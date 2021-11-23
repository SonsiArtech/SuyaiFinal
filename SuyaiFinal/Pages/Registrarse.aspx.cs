using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuyaiFinal.Pages
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

    protected void LinkVolver_Click(object sender, EventArgs e)
    {
      Response.Redirect("IniciarSesion.aspx");
    }

  }
}