using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SuyaiFinal.Clases;

namespace SuyaiFinal.Controller
{
  public class UsuarioController
  {
    //lista de usuarios
    private static List<Usuario> listaUsuario = new List<Usuario>();
    
    
    //Metodos para agregar usuarios
    public static string AddUsuario(string rut, string nomb, string ape , string tele, string corr, string dire, string ciud, 
      string user,string pass, string idComunidad)
    {

      try
      {
        Comunidad comunidad = ComunidadController.findComunidad(idComunidad);
        //aqui me da error
        Usuario usuario = new Usuario()
        {
          Rut = rut,
          Nombre = nomb,
          Apellido = ape,
          Telefono = int.Parse(tele),
          Correo = corr,
          Direccion = dire,
          Ciudad = ciud,
          User = user,
          Pass = pass,
          Comunidad = idComunidad
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
  }
}