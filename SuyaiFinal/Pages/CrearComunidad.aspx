<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CrearComunidad.aspx.cs" Inherits="SuyaiFinal.Pages.CrearComunidad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h1>formulario para crear comunidad</h1>
    <asp:TextBox ID="TxtId" runat="server" placeholder="Ingrese id"></asp:TextBox><br />
    <asp:TextBox ID="TxtNombre" runat="server" placeholder="Ingrese nombre de comunidad"></asp:TextBox><br />
    <asp:Button ID="BtnRegistrarComunidad" runat="server" CssClass="btn" Text="Registrar comunidad" BackColor="#009933" OnClick="BtnRegistrarComunidad_Click" /><br />
    <asp:Label ID="LbResultado" runat="server" Text=""></asp:Label>
    <br />
    <asp:LinkButton ID="LnkVer" runat="server">Ver lista de comunidades</asp:LinkButton>
    <br />
    <asp:LinkButton ID="LnkVolver" runat="server" OnClick="LnkVolver_Click">volver</asp:LinkButton>
</asp:Content>
