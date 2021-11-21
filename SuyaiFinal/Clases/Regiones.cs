using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuyaiFinal.Clases
{
    public class Regiones
    {
        private int id;
        private string nombre;
        private string abreviatura;
        private string capital;

        public string Capital
        {
            get { return capital; }
            set { capital = value; }
        }


        public string Abreviatura
        {
            get { return abreviatura; }
            set { abreviatura = value; }
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