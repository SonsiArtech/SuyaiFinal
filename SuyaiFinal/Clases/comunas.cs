using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuyaiFinal.Clases
{
  public class Comunas
  {
    private string id;
    private string nombre;

    public Comunas()
    {
    }

    public Comunas(string id, string nombre)
    {
      this.id = id;
      this.nombre = nombre;
    }

    public string Nombre
    {
      get { return nombre; }
      set { nombre = value; }
    }


    public string Id
    {
      get { return id; }
      set { id = value; }
    }

  }
}