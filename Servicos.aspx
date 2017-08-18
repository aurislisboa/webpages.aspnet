<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Servicos.aspx.cs" Inherits="Servicos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!--Servicos head-->
    <!--End Servicos head-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--Servicos-->
    <h2>Serviços</h2>
    <p>
        Bem-vindo, Sr(a) <strong><asp:Label ID="nomeLabel" runat="server" /></strong>
    </p>
    <p>
        Clique <asp:HyperLink Text="AQUI" NavigateUrl="~/Licenciamento.aspx" runat="server" />
        para mais informações sobre o veículo de placa
        <strong><asp:Label ID="placaLabel" runat="server" /></strong>
    </p>
    <p style="margin-top: 60px">
        <asp:HyperLink Text="VOLTAR" NavigateUrl="~/Default.aspx" runat="server" />
    </p>
    <!--End Servicos-->
</asp:Content>

