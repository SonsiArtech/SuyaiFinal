<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ControlAjax.aspx.cs" Inherits="SuyaiFinal.Pages.ControlAjax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style>
    /* PROXIMAMENTE SERVIRA PARA INICIAR SESION*/
    #gato{
      
    }
  </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
      <asp:Button ID="BtnAccion" runat="server" Text="Activar" OnClick="BtnAccion_Click" /><br />
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
      <asp:Label ID="LbMensaje" runat="server" Text="Mensaje"></asp:Label>
    </ContentTemplate>
  </asp:UpdatePanel>
  <asp:UpdateProgress ID="UpdateProgress1" runat="server">
    <ProgressTemplate>
      <div id="gatito">

      </div>
    </ProgressTemplate>
  </asp:UpdateProgress>
</asp:Content>
