<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="SuyaiFinal.Pages.Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="fondo">
    <h2 class="titulo">Perfil</h2>
  </div>
  <section class="banner-grande">
    <div class="caja-perfil">
      <div class="avatar">
      </div>
      <h3>Ana Maria Pedroso</h3>
      <p class="poema">
        <h5>19.567.243-k</h5>
        <h5>27años</h5>
        <h5>Chile, Maipú</h5>
        <h5>Almirante Barroso #101</h5>
        <h5>9 8765 4321</h5>
        <h5>anamaria@gmail.com</h5>
        <h5>Comunidad Valle Verde</h5>
        <h5>No binario</h5>
        <asp:LinkButton ID="LinkButton1" runat="server">Editar (aun no hace nada)</asp:LinkButton>
      </p>
  </section>
</asp:Content>
