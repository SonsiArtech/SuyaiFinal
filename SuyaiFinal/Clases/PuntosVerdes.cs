using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuyaiFinal.Clases
{
    public class PuntosVerdes
    {
        private int id;
        private string nombre;
        private string direccion;


        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }


        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }


        public int Id
        {
            get { return id; }
            set { id = value; }
        }

    }
}