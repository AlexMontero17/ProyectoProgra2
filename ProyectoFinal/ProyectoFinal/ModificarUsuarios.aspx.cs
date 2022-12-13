using ProyectoFinal.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinal
{
    public partial class ModificarUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClsUsuarios.Email = Temail.Text;
            ClsUsuarios.Clave = Tclave.Text;
            ClsUsuarios.Nombre = Tnombre.Text;
            ClsUsuarios.Tipo = Ttipo.Text;


            if (ClsUsuarios.Agregar(ClsUsuarios.Email, ClsUsuarios.Clave, ClsUsuarios.Nombre, ClsUsuarios.Tipo) > 0)
            {
                Response.Redirect("ModificarUsuarios.aspx");
            }
            else
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('No ingreso los datos requeridos');", true);
            }
        }

        protected void Bborrar_Click(object sender, EventArgs e)
        {
            ClsUsuarios.Email = Temail.Text;

            if (ClsUsuarios.Eliminar(ClsUsuarios.Email) > 0)
            {
                Response.Redirect("ModificarUsuarios.aspx");
            }
            else
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('No ingreso los datos requeridos');", true);
            }
        }

        protected void BModificar_Click(object sender, EventArgs e)
        {
            ClsUsuarios.Email = Temail.Text;
            ClsUsuarios.Clave = Tclave.Text;
            ClsUsuarios.Nombre = Tnombre.Text;
            ClsUsuarios.Tipo = Ttipo.Text;

            if (ClsUsuarios.Modificar(ClsUsuarios.Email, ClsUsuarios.Clave, ClsUsuarios.Nombre, ClsUsuarios.Tipo) > 0)
            {
                Response.Redirect("ModificarUsuarios.aspx");
            }
            else
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('No ingreso los datos requeridos');", true);
            }
        }

        protected void Ttipo_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Tnombre_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Temail_TextChanged(object sender, EventArgs e)
        {

        }
    }
}