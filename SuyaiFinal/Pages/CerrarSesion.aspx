<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CerrarSesion.aspx.cs" Inherits="SuyaiFinal.Pages.CerrarSesion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="fondo">
    <h2 class="titulo">Cerrar Sesión</h2>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
      <ContentTemplate>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
      </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
      <ProgressTemplate>
        <div id="gatito">
        </div>
      </ProgressTemplate>
    </asp:UpdateProgress>
  </div>
</asp:Content>
