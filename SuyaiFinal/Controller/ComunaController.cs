using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SuyaiFinal.Clases;

namespace SuyaiFinal.Controller
{
  public class ComunaController
  {
    private static List<Comunas> listaComunas = new List<Comunas>();
    public static Comunas findComunas(string id)
    {
      foreach (Comunas c in listaComunas)
      {
        if (c.Id.Equals(id))
        {
          return c;
        }
      }
      return null;
    }

    public static List<Comunas> getListado()
    {
      return listaComunas;
    }
    public static void precargarComunas()
    {
      if (listaComunas.Count < 1)
      {
        listaComunas.Add(new Comunas("a", "Maipu"));
        listaComunas.Add(new Comunas("v", "santiago"));
        listaComunas.Add(new Comunas("c", "Cerrillos"));
        listaComunas.Add(new Comunas("w", "Valparaiso"));

      }
    }

  }

}