using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuyaiFinal.Clases
{
    public class Provincias
    {
        private int id;
        private string nombre;

        public string MyProperty
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