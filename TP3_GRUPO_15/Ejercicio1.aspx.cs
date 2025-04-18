using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_GRUPO_15
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void txtNombre_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtNombre.Text))
            {
                txtNombre.Text = txtNombre.Text.Substring(0, 1).ToUpper() + txtNombre.Text.Substring(1).ToLower();
            }
        }

        protected void btnGuardarUsuario_Click(Object sender, EventArgs e)
        {
            LBL_WelcomeUser.Font.Bold = true;
            LBL_WelcomeUser.Text = "Bienvenido " + txtNombre.Text;
        }
    }
}