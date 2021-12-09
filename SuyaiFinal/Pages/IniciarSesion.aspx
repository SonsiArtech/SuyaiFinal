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
        <%--USUARIO Y CONTRASEÑA--%>
        <div class="mb-6">
          <label for="TxtUser" class="form-label">Usuario</label>
          <asp:TextBox ID="TxtUser" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="mb-3">
          <label for="TxtPass" class="form-label">Contraseña</label>
          <asp:TextBox ID="TxtPass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
        </div>
        <%--BOTON E IMAGEN DE CARGA--%>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
          <ContentTemplate>
            <asp:Button ID="BtnIngresar" class="btn" runat="server" Text="Ingresar" OnClick="BtnIngresar_Click" />
            <asp:Label ID="lbMensaje" runat="server" Text=""></asp:Label>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
          </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
          <ProgressTemplate>
            <div id="gatito">
            </div>
          </ProgressTemplate>
        </asp:UpdateProgress>
      </form>
      <br />
      <br />
      <asp:LinkButton ID="LnkRegistrarse" runat="server" ForeColor="White" OnClick="LnkRegistrarse_Click">Registrarse</asp:LinkButton>
      <br />
    </div>
  </section>
</asp:Content>
