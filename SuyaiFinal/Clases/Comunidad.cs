using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuyaiFinal.Clases
{
  public class Comunidad
  {
    private string id;
    private string nombreComunidad;

    public Comunidad()
    {
    }

    public Comunidad(string id, string nombre)
    {
      this.id = id;
      this.nombreComunidad = nombre;
    }

    public string NombreComunidad
    {
      get { return nombreComunidad; }
      set { nombreComunidad = value; }
    }


    public string Id
    {
      get { return id; }
      set { id = value; }
    }

  }
}