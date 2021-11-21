using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SuyaiFinal.Clases;

namespace SuyaiFinal.Controller
{
  public class ComunidadController
  {
    //lista de comunidad
    private static List<Comunidad> listaComunidad = new List<Comunidad>();
    //Metodos para la clase comunidad

    public static string AddComunidad(string id, string nombre)
    {

      try
      {
        Comunidad comunidad = new Comunidad()
        {
          Id = id,
          NombreComunidad = nombre
        };
        listaComunidad.Add(comunidad);
        return "Comunidad Agregada correctamente";
      }
      catch (Exception e)
      {
        return "Error: "+e.Message;
      }
    }


    //Metodo que busca y retorna la comunidad
    public static Comunidad findComunidad(string id)
    {
      foreach (Comunidad c in listaComunidad)
      {
        if (c.Id.Equals(id))
        {
          return c;
        }
      }
      return null;
    }


    //se envia lista por medio de este metodo
    public static List<Comunidad> getListado()
    {
      return listaComunidad;
    }
    // servira para precargar algunos datos en comunidad
    public static void precargarComunidades()
    {
      if (listaComunidad.Count < 1)
      {
        listaComunidad.Add(new Comunidad("A", "Mapu"));
        listaComunidad.Add(new Comunidad("B", "Libre Alvedrio"));
        listaComunidad.Add(new Comunidad("C", "Dignidad"));
        listaComunidad.Add(new Comunidad("D", "Tangananica"));

      }
    }
  }
}