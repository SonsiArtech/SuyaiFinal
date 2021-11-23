<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="SuyaiFinal.Pages.IniciarSesion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <!--titulo de la vista-->
  <div class="fondo">
    <h2 class="titulo">Iniciar sesión</h2>
  </div>
  <!-- banner principal -->
  <section class="banner-pequeño">
    <div>
      <h3 class="titulo-dos">Ingresa tus datos</h3>
    </div>
  </section>
  <section class="fondo-banner">
    <div class="caja-iniciar-sesion">
      <form>
        <div class="mb-6">
          <label for="exampleInputEmail1" class="form-label">Email address</label>
          <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
        </div>
        <div class="mb-3">
          <label for="exampleInputPassword1" class="form-label">Password</label>
          <input type="password" class="form-control" id="exampleInputPassword1">
        </div>
        <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <button type="submit" class="btn btn-success">Submit</button>
      </form>
    </div>
    <a href="Registrarse.aspx" style="float: right">Registrate!</a>
    <a href="/CrearComunidad.aspx" style="float: right">Crear una comunidad</a>
  </section>
</asp:Content>
