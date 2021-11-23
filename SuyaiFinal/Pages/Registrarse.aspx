<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="SuyaiFinal.Pages.Registrarse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style type="text/css">
    .auto-style1 {
      width: 187px;
    }

    .auto-style2 {
    width: 241px;
  }
    .auto-style3 {
      width: 187px;
      height: 27px;
    }
    .auto-style4 {
      width: 241px;
      height: 27px;
    }
    .auto-style5 {
      width: 246px;
    }
    .auto-style6 {
      width: 246px;
      height: 27px;
    }
    .auto-style8 {
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
      margin: 40px 20px;
      padding: 20px;
      width: 700px;
      height: 600px;
      background-color: green;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <!--Inicio del banner para crear cuenta -->
  <section class="banner-pequeño">
    <div>
      <h3 class="titulo-dos">Crea tu propia cuenta</h3>
    </div>
  </section>
  <section class="fondo-banner">
    <div class="auto-style8">
      <form class="row g-8">
        <%--<div class="col-md-4">
          <label for="TxtRut" class="form-label">Rut</label>
          <asp:TextBox ID="TxtRut" runat="server" type="text" class="form-control" placeholder="Ingrese su rut"></asp:TextBox>
        </div>
        <div class="col-md-6">
          <label for="TxtNombre" class="form-label">Nombre</label>
          <asp:TextBox ID="TxtNombre" runat="server" type="text" class="form-control" placeholder="Ingrese su nombre"></asp:TextBox>
        </div>
        <div class="col-md-6">
          <label for="TxtApellido" class="form-label">Apellido</label>
          <asp:TextBox ID="TxtApellido" runat="server" type="text" class="form-control" placeholder="Ingrese su apellido"></asp:TextBox>
        </div>
        <div class="col-md-6">
          <label for="TxtTelefono" class="form-label">Telefono</label>
          <asp:TextBox ID="TxtTelefono" runat="server" type="number" class="form-control" placeholder="Ingrese su telefono"></asp:TextBox>
        </div>
        <div class="col-md-6">
          <label for="TxtCorreo" class="form-label">Correo</label>
          <asp:TextBox ID="TxtCorreo" runat="server" type="email" class="form-control" placeholder="Ingrese su correo"></asp:TextBox>
        </div>
        <div class="col-md-6">
          <label for="TxtDireccion" class="form-label">Dirección</label>
          <asp:TextBox ID="TxtDireccion" runat="server" type="text" class="form-control" placeholder="Ingrese su dirección"></asp:TextBox>
        </div>
        <div class="col-md-6">
          <label for="TxtCiudad" class="form-label">Ciudad</label>
          <asp:TextBox ID="TxtCiudad" runat="server" type="text" class="form-control" placeholder="Ingrese su Ciudad"></asp:TextBox>
        </div>
        <div class="col-md-6">
          <label for="TxtUser" class="form-label">Usuario</label>
          <asp:TextBox ID="TxtUser" runat="server" type="text" class="form-control" placeholder="Ingrese su usuario"></asp:TextBox>
        </div>
        <div class="col-md-6">
          <label for="TxtPass" class="form-label">Password</label>
          <asp:TextBox ID="TxtPass" runat="server" type="password" class="form-control" placeholder="Ingrese su contraseña"></asp:TextBox>
        </div>
        <div class="col-md-6">
          <label for="TxtComunidad" class="form-label">Comunidad</label>
          <asp:DropDownList ID="DropComunidad" runat="server"></asp:DropDownList>
        </div>
        <br />
        <div class="col-12">
          <asp:Button ID="BtnAgregar" runat="server" Text="Registrar" CssClass="btn btn-primary" />
          <asp:Label ID="LbRegistro" runat="server" Text="Aqui dira si se registro bien"></asp:Label><br />
          <a href="ListaUsuarios.aspx">ver listas de usuarios</a>
        </div>--%>
        <h4>nuevo formulario</h4>
        <table class="w-100">
          <tr>
            <td colspan="3">Formulario de Registro 2</td>
          </tr>
          <tr>
            <td class="auto-style1">Nombre</td>
            <td class="auto-style2">
              <asp:TextBox ID="TxtNom" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" runat="server" ErrorMessage="Campo Requerido" ForeColor="Red" ControlToValidate="TxtNom"></asp:RequiredFieldValidator>
            </td>
          </tr>
          <tr>
            <td class="auto-style1">Correo</td>
            <td class="auto-style2">
              <asp:TextBox ID="TxtCorr" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red" ControlToValidate="TxtCorr"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ControlToValidate="TxtCorr" ForeColor="Red" ErrorMessage="Correo invalido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
          </tr>
          <tr>
            <td class="auto-style3">Edad:</td>
            <td class="auto-style4">
              <asp:TextBox ID="TxtEdad" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td class="auto-style6">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red" ControlToValidate="TxtEdad"></asp:RequiredFieldValidator>
              <asp:CompareValidator ID="CompareValidator1" runat="server" Type="Integer" Display="Dynamic" ValueToCompare="12" Operator="GreaterThan" ControlToValidate="TxtEdad" ForeColor="Red" ErrorMessage="Edad incorrecta"></asp:CompareValidator>
            </td>
          </tr>
          <tr>
            <td class="auto-style1">Contraseña</td>
            <td class="auto-style2">
              <asp:TextBox ID="TxtContraseña" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style5">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo Requerido" Display="Dynamic" ForeColor="Red" ControlToValidate="TxtContraseña"></asp:RequiredFieldValidator>
              <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TxtContraseña" ControlToCompare="TxtReContraseña" Operator="Equal" ErrorMessage="Contraseña no coincide" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
            </td>
          </tr>
          <tr>
            <td class="auto-style1">Repetir Contraseña</td>
            <td class="auto-style2">
              <asp:TextBox ID="TxtReContraseña" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style5">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red" ControlToValidate="TxtReContraseña"></asp:RequiredFieldValidator>
              <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TxtReContraseña" ControlToCompare="TxtContraseña" Operator="Equal" ErrorMessage="Contraseña no coincide" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
            </td>
          </tr>
          <tr>
            <td class="auto-style1">
              <asp:Button ID="BtnRegistro" runat="server" Text="Registrar" />
            </td>
            <td colspan="2">
              <asp:LinkButton ID="LinkVolver" CausesValidation="false" runat="server" OnClick="LinkVolver_Click">volver</asp:LinkButton>
            </td>
          </tr>
        </table>
        <br />
      </form>
    </div>
    <br />
  </section>
</asp:Content>
