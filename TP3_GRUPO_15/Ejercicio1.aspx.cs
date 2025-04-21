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

        protected void btnGuardarUsuario_Click(object sender, EventArgs e)
        {
            LBL_WelcomeUser.Font.Bold = true;
            LBL_WelcomeUser.Text = "Bienvenido " + txtNombre.Text;
        }

        protected void txtLocalidades_TextChanged(object sender, EventArgs e)
        {
            string texto = txtLocalidades.Text.ToLower();
            char[] caracteres = texto.ToCharArray();

            bool nuevaPalabra = true;

            for (int i = 0; i < caracteres.Length; i++)
            {
                if (nuevaPalabra && char.IsLetter(caracteres[i]))
                {
                    caracteres[i] = char.ToUpper(caracteres[i]);
                    nuevaPalabra = false;
                }
                else if (caracteres[i] == ' ')
                {
                    nuevaPalabra = true;
                }
            }

            txtLocalidades.Text = new string(caracteres);
        }

        private void AgregarLocalidad()
        {
            if (Page.IsValid)
            {
                string localidad = txtLocalidades.Text.Trim();

                bool LocalidadRepetida = ddlLocalidades.Items
                    .Cast<ListItem>()
                    .Any(item => item.Text.Equals(localidad, StringComparison.OrdinalIgnoreCase));

                if (!LocalidadRepetida && !string.IsNullOrEmpty(localidad))
                {
                    ddlLocalidades.Items.Add(new ListItem(localidad));
                    txtLocalidades.Text = "";
                }
            }
        }

        protected void Btn_Localidad_Click(object sender, EventArgs e)
        {
            AgregarLocalidad();
        }
    }
}