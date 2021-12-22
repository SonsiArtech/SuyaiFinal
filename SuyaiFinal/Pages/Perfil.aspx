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
      <h3><asp:Label ID="lbNombrePerfil" runat="server"></asp:Label></h3>
      <div class="poema">
        <h5>
          <asp:Label ID="lbRutPerfil" runat="server"></asp:Label>
        </h5>
        <h5>
          <asp:Label ID="lbEdadPerfil" runat="server"></asp:Label>
        </h5>
        <h5>
          <asp:Label ID="lbComunaPerfil" runat="server"></asp:Label>
        </h5>
        <h5>
          <asp:Label ID="lbDireccionPerfil" runat="server"></asp:Label>
        </h5>
        <h5>
          <asp:Label ID="lbNumeroPerfil" runat="server"></asp:Label>
        </h5>
        <h5>
          <asp:Label ID="lbCorreoPerfil" runat="server"></asp:Label>
        </h5>
        <h5>
          <asp:Label ID="lbComunidadPerfil" runat="server"></asp:Label>
        </h5>
        <h5>
          <asp:Label ID="lbGeneroPerfil" runat="server"></asp:Label>
        </h5>
        <asp:LinkButton ID="lnkEditar" runat="server">Editar (aun no hace nada)</asp:LinkButton>
      </div>
      </div>
  </section>
</asp:Content>
