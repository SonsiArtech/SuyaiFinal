<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="SuyaiFinal.Pages.Registrarse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <!--Inicio del banner para crear cuenta -->
  <section class="banner-pequeño">
    <div>
      <h3 class="titulo-dos">Crea tu propia cuenta</h3>
    </div>
  </section>
  <section class="fondo-banner">
    <div class="caja-iniciar-registro">
      <form class="row">
        <%--RUT--%>
        <div class="row">
          <label for="TxtRut" class="col-form-label">Rut</label>
          <div class="col-12">
            <asp:TextBox ID="TxtRut" runat="server" class="form-control" aria-describedby="TxtRut" type="text" placeholder="Ingrese su Rut"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo Requerido" ForeColor="Red" ControlToValidate="TxtRut"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" runat="server" ControlToValidate="TxtRut" ForeColor="Red" ErrorMessage="Formato de RUT invalido" ValidationExpression="^(\d{2}\.\d{3}\.\d{3}-)([a-zA-Z]{1}$|\d{1}$)"></asp:RegularExpressionValidator>
          </div>
        </div>
        <%--NOMBRE Y APELLIDO--%>
        <div class="row">
          <label class="form-label">Nombre y Apellido</label>
          <div class="col-6">
            <asp:TextBox ID="TxtNombre" runat="server" type="text" class="form-control" placeholder="Ingrese su Nombre"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="TxtNombre"></asp:RequiredFieldValidator>
          </div>
          <div class="col-6">
            <asp:TextBox ID="TxtApellido" runat="server" type="text" class="form-control" placeholder="Ingrese su Apellido"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="TxtApellido"></asp:RequiredFieldValidator>
          </div>
        </div>
        <%--EDAD--%>
        <div class="row">
          <label for="TxtEdad" class="col-form-label">Edad</label>
          <div class="col-12">
            <asp:TextBox ID="TxtEdad" runat="server" class="form-control" aria-describedby="TxtEdad" type="number" placeholder="Ingrese su Edad"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo Requerido" ForeColor="Red" Display="Dynamic" ControlToValidate="TxtEdad"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" Type="Integer" ValueToCompare="12" Operator="GreaterThanEqual" ControlToValidate="TxtEdad" ForeColor="Red" ErrorMessage="Edad incorrecta"></asp:CompareValidator>
          </div>
        </div>
        <%--TELEFONO Y CORREO--%>
        <div class="row">
          <label class="form-label">Telefono y Correo</label>
          <div class="col-6">
            <asp:TextBox ID="TxtTelefono" runat="server" type="number" class="form-control" placeholder="Ingrese su Telefono"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="TxtTelefono"></asp:RequiredFieldValidator>
          </div>
          <div class="col-6">
            <asp:TextBox ID="TxtCorreo" runat="server" type="mail" class="form-control" placeholder="Ingrese su Correo"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="TxtCorreo"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ControlToValidate="TxtCorreo" ForeColor="Red" ErrorMessage="Correo invalido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          </div>
        </div>
        <%--DIRECCION Y CIUDAD--%>
        <div class="row">
          <label class="form-label">Dirección y Ciudad</label>
          <div class="col-6">
            <asp:TextBox ID="TxtDireccion" runat="server" type="text" class="form-control" placeholder="Ingrese su Dirección"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="TxtDireccion"></asp:RequiredFieldValidator>
          </div>
          <div class="col-auto">
            <asp:DropDownList ID="DropComunas" runat="server" placeholder="Seleccione su Ciudad"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="Red" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="DropComunas"></asp:RequiredFieldValidator>
          </div>
        </div>
        <%--USUARIO, CONTRASEÑA--%>
        <div class="row">
          <label class="form-label">Usuario y Contraseña</label>
          <div class="col-6">
            <asp:TextBox ID="TxtUser" runat="server" type="text" class="form-control" placeholder="Ingrese su Usuario"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ForeColor="Red" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="TxtUser"></asp:RequiredFieldValidator>
          </div>
          <div class="col-6">
            <asp:TextBox ID="TxtPass" runat="server" type="password" class="form-control" placeholder="Ingrese su Contraseña"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="TxtPass"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TxtPass" ControlToCompare="TxtRePass" Operator="Equal" ErrorMessage="Contraseña no coincide" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
          </div>
        </div>
        <%--REPETIR CONTRASEÑA Y COMUNIDAD--%>
        <label class="form-label">Repetir Contraseña y Comunidad</label>
        <div class="row">
          <div class="col-6">
            <asp:TextBox ID="TxtRePass" runat="server" type="password" class="form-control" placeholder="Reingrese su Contraseña"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ForeColor="Red" runat="server" ErrorMessage="Campo Requerido" Display="Dynamic" ControlToValidate="TxtRePass"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TxtRePass" ControlToCompare="TxtPass" Operator="Equal" ErrorMessage="Contraseña no coincide" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
          </div>
          <div class="col-6">
            <asp:DropDownList ID="DropComunidad" runat="server"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ForeColor="Red" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="DropComunidad"></asp:RequiredFieldValidator>
          </div>
        </div>
        <br />
        <div class="row">
          <div class="col-12">
            <asp:Button ID="BtnAgregar" runat="server" Text="Registrar" CssClass="btn" OnClick="BtnAgregar_Click" /><br />
            <asp:Label ID="LbRegistro" runat="server" Text="Aqui dira si se registro bien"></asp:Label><br />
            <asp:LinkButton ID="LnkCrearComunidad" runat="server" CausesValidation="false" ForeColor="White" OnClick="LnkCrearComunidad_Click">Crear Nueva comunidad</asp:LinkButton>
          </div>
        </div>
        <br />
      </form>
    </div>
    <br />
  </section>
</asp:Content>
