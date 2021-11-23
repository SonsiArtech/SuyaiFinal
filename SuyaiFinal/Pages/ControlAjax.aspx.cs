using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuyaiFinal.Pages
{
  public partial class ControlAjax : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnAccion_Click(object sender, EventArgs e)
    {
      System.Threading.Thread.Sleep(2000);
      LbMensaje.Text = DateTime.Now.ToLongDateString() + " " + DateTime.Now.ToShortTimeString();
    }
  }
}