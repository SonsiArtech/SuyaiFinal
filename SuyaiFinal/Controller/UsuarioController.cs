using SuyaiFinal.Clases;
using System;
using System.Collections.Generic;

namespace SuyaiFinal.Controller
{
  public class UsuarioController
  {
    //lista de usuarios
    private static List<Usuario> listaUsuario = new List<Usuario>();


    //Metodos para agregar usuarios
    public static string AddUsuario(string rut, string nomb, string eda, string ape, string tele, string corr, string dire, string ciud,
      string user, string pass, string idComunidad, Rol rol)
    {

      try
      {
        

        Comunidad comunidad = ComunidadController.findComunidad(idComunidad);

        Usuario usuario = new Usuario()
        {
          Rut = rut,
          Nombre = nomb,
          Apellido = ape,
          Edad = int.Parse(eda),
          Telefono = int.Parse(tele),
          Correo = corr,
          Direccion = dire,
          Ciudad = ciud,
          User = user,
          Pass = pass,
          Comunidad = idComunidad,
          UserRol = rol
        };

        listaUsuario.Add(usuario);
        return "Usuario agregado correctamente";
      }
      catch (Exception e)
      {
        return "Error: " + e.Message;
      }
    }
    //Metodo agregar comunidad


    //se envia lista por medio de este metodo
    public static List<Usuario> getListado()
    {
      return listaUsuario;
    }

    // servira para precargar algunos datos en usuario
    public static void precargarUsuarios()
    {
      if (listaUsuario.Count < 1)
      {
        Rol.addRol();

        Rol r1 = Rol.findRol(1);
        Rol r2 = Rol.findRol(2);
        Rol r3 = Rol.findRol(3);

        listaUsuario.Add(new Usuario("1-1", "nicolas", "lara", 25, 987654321, "n@lara.com", "casita 123", "Maipu", "nico", "lara", "Mapu", r1));
        listaUsuario.Add(new Usuario("1-2", "raul", "mendez", 23, 987654322, "r@mendez.com", "casita 456", "Maipu", "raul", "mendez", "Mapu", r2));
        listaUsuario.Add(new Usuario("1-3", "sebastian", "pizarro", 30, 987654323, "s@pizarro.com", "casita 789", "Maipu", "nico", "pizarro", "Mapu", r3));
      }


    }
    //login usuario

    public static Usuario login(string u, string p)
    {
      foreach (Usuario item in listaUsuario)
      {
        if (item.User.Equals(u))
        {
          if (item.Pass.Equals(p))
          {
            return item;
          }
        }

      }
      return null;
    }
  }
}