<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="SuyaiFinal.Pages.Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="banner-pequeño">
    <div>
      <h3 class="titulo-dos">Ingrese sus datos</h3>
    </div>
  </section>
  <section class="fondo-banner">
    <form action="submeter-formulario.php" method="post">
      <p>
        <label for="nombre" class="colocar_nombre">
          Nombre<span class="obligatorio">*</span>
        </label>
        <input type="text" name="introducir_nombre" id="nombre" required="obligatorio" placeholder="Escribe tu nombre">
      </p>
      <p>
        <label for="email" class="colocar_email">
          Email<span class="obligatorio">*</span>
        </label>
        <input type="email" name="introducir_email" id="email" required="obligatorio" placeholder="Escribe tu Email">
      </p>
      <p>
        <label for="telefone" class="colocar_telefono">
          Teléfono
        </label>
        <input type="tel" name="introducir_telefono" id="telefono" placeholder="Escribe tu teléfono">
      </p>
      <p>
        <label for="mensaje" class="colocar_mensaje">
          Mensaje<span class="obligatorio">*</span>
        </label>
        <textarea name="introducir_mensaje" class="texto_mensaje" id="mensaje" required="obligatorio" placeholder="Deja aquí tu comentario..."></textarea>
      </p>
      <button type="submit" name="enviar_formulario" id="enviar">
        <p>Enviar</p>
      </button>
      <p class="aviso">
        <span class="obligatorio">* </span>los campos son obligatorios.
      </p>
    </form>
  </section>
</asp:Content>
