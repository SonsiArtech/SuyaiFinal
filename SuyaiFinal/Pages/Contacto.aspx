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
    <div class="caja-contacto">
      <%--NOMBRE DE CONTACTO--%>
      <div class="mb-12">
        <label for="TxtNombreContacto" class="form-label">Nombre</label>
        <asp:TextBox ID="TxtNombreContacto" CssClass="form-control" placeholder="Ej: Raul Mendez" runat="server"></asp:TextBox>
      </div>
      <%--CORREO DE CONTACTO--%>
      <div class="mb-12">
        <label for="TxtCorreoContacto" class="form-label">Correo</label>
        <asp:TextBox ID="TxtCorreoContacto" class="form-control" placeholder="Ej: nombre@gmail.com" runat="server"></asp:TextBox>
      </div>
      <%--ASUNTO DE CONTACTO--%>
      <div class="mb-12">
        <label for="TxtAsuntoContacto" class="form-label">Asunto</label>
        <asp:TextBox ID="TxtAsuntoContacto" class="form-control" placeholder="Ej: Importante" runat="server"></asp:TextBox>
      </div>
      <%--MENSAJE DE CONTACTO--%>
      <div class="mb-12">
        <label for="TxtContacto" class="form-label">Mensaje</label>
        <asp:TextBox ID="TextBox1" class="form-control" placeholder="Ej: Lorem Ipsum......" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
      </div>
      <br />
      <asp:Button ID="btnEnviarContacto" CssClass="btn" runat="server" Text="Enviar" />
    </div>
  </section>
</asp:Content>
