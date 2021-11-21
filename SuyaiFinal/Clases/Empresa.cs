using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuyaiFinal.Clases
{
    public class Empresa
    {
        private string rut;
        private string nombre;
        private string email;
        private string direccion;
        private int telefono;

        public int Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }


        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }


        public string Email
        {
            get { return email; }
            set { email = value; }
        }


        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }


        public string Rut
        {
            get { return rut; }
            set { rut = value; }
        }

    }
}