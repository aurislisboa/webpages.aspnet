<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

protected void Page_Load(object sender, EventArgs e){
    //Validação: os dados devem estar na sessão
    if(Session["nome"] == null || Session["placa"] == null) {
            Response.Redirect("~/Default.aspx"); 
    }
    
    //Obtém os dados de entrada
    string nome = Session["nome"].ToString();
    string placa = Session["placa"].ToString();
    string final = placa.Substring(placa.Length - 1);
    string[] mes = { "Dezembro", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro" };    
    
    //Exibe
    this.nomeLabel.Text = nome;
    this.placaLabel.Text = placa;
    this.finalLabel.Text = final;
    this.mesLabel.Text = mes[int.Parse(final)] ;
    
}

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!--Licenciamento head-->
    <!--End Licenciamento head-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--Licenciamento-->
    <h2>Calendário do Licenciamento</h2>
    <p>
        Nome: <strong><asp:Label ID="nomeLabel" runat="server" /></strong>
    </p>
    <p>
        Placa: <strong><asp:Label ID="placaLabel" runat="server" /></strong>
    </p>
    <p>
        Final: <strong><asp:Label ID="finalLabel" runat="server" /></strong>
    </p>
    <p>
        Mês do Licenciamento: <strong><asp:Label ID="mesLabel" runat="server" /></strong>
    </p>
    <p style="margin-top: 60px">
        <asp:HyperLink NavigateUrl="~/Servicos.aspx" runat="server">
            Voltar para a página de Serviços
        </asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink NavigateUrl="~/Default.aspx" runat="server">
            Informar outro veículo
        </asp:HyperLink>    
    </p>
    <!--End Licenciamento-->
</asp:Content>

