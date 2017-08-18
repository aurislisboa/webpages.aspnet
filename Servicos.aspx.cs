using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Servicos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["nome"] == null || Session["placa"] == null){

            Response.Redirect("~/Default.aspx");
        }
        
            this.nomeLabel.Text = Session["nome"].ToString();
            this.placaLabel.Text = Session["placa"].ToString();
        
    }
}