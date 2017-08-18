using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void continuarLinkButton_Click(object sender, EventArgs e)
    {

        this.erroLabel.Text = string.Empty;

        if (string.IsNullOrWhiteSpace(this.nomeTB.Text))
        {
            this.erroLabel.Text = "&bull; Digite o nome";
            return;
        }

        /*
        if (string.IsNullOrEmpty(this.placaTB.Text))
        {
            this.erroLabel.Text = "&bull; Digite a placa";
            return;
        }
        */
        if (this.placaTB.Text.Trim().Length != 7)
        {
            this.erroLabel.Text = "&bull; Placa inválida";
            return;
        }

        Session["nome"] = this.nomeTB.Text;
        Session["placa"] = this.placaTB.Text;
        Session.Timeout = 1;
        Response.Redirect("~/Servicos.aspx");
    }
}