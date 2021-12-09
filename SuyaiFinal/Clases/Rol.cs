using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuyaiFinal.Clases

{
  public class Rol
  {
    private int codigo;
    private string nombre;

    private static List<Rol> listaRol = new List<Rol>();

    public string Nombre
    {
      get { return nombre; }
      set { nombre = value; }
    }


    public int Codigo
    {
      get { return codigo; }
      set { codigo = value; }
    }

    public static List<Rol> getRoles()
    {
      return listaRol;
    }

    public static void addRol()
    {
      listaRol.Add(new Rol() { Codigo = 1, nombre="Rol Usuario" });
      listaRol.Add(new Rol() { Codigo = 2, nombre="Rol Empresa" });
      listaRol.Add(new Rol() { Codigo = 3, nombre="Rol Tienda" });
    }

    public static Rol findRol(int codigo)
    {
      foreach (Rol item in listaRol)
      {
        if (item.codigo == codigo)
        {
          return item;
        }
      }
      return null;
    }

  }
}