<%@ Page Title="Início" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!--Default head-->
    <!--End Default head-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--Default-->
    <h2>Dados do Proprietário e Veículo</h2>
    <p>
        <asp:Label ID="erroLabel" CssClass="erro" runat="server" />
    </p>
    <p>
        <asp:Label Text="Nome do Proprietário:" AssociatedControlID="nomeTB" runat="server" /><br />
        <asp:TextBox ID="nomeTB" Width="250px" runat="server" />
    </p>
    <p>
        <asp:Label Text="Placa:" AssociatedControlID="placaTB" runat="server" /><br />
        <asp:TextBox ID="placaTB" Width="90px" MaxLength="7"  runat="server" />
    </p>
    <p style="margin-top: 60px">
        <asp:LinkButton ID="continuarLinkButton" Text="Continuar" OnClick="continuarLinkButton_Click"  runat="server" />
    </p>
    <!--End Default-->
</asp:Content>

