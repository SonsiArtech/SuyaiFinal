using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuyaiFinal.Clases
{
    public class Usuario : Comunidad
    {
   
        private string rut;
        private string nombre;
        private string apellido;
        private int telefono;
        private string correo;
        private string direccion;
        private string ciudad;
        private string user;
        private string pass;
        private string comunidad;

        public Usuario()
        {

        }

        public Usuario(string rut, string nombre, string apellido, int telefono, string correo, string direccion, string ciudad, string user, string pass, string comunidad)
        {
            this.rut = rut;
            this.nombre = nombre;
            this.apellido = apellido;
            this.telefono = telefono;
            this.correo = correo;
            this.direccion = direccion;
            this.ciudad = ciudad;
            this.user = user;
            this.pass = pass;
            this.comunidad = comunidad;
        }

        public string Comunidad
        {
            get { return comunidad; }
            set { comunidad = value; }
        }


        public string Pass
        {
            get { return pass; }
            set { pass = value; }
        }


        public string User
        {
            get { return user; }
            set { user = value; }
        }


        public string Ciudad
        {
            get { return ciudad; }
            set { ciudad = value; }
        }


        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }


        public string Correo
        {
            get { return correo; }
            set { correo = value; }
        }


        public int Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }


        public string Apellido
        {
            get { return apellido; }
            set { apellido = value; }
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