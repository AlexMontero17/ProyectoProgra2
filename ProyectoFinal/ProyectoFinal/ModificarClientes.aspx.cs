using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinal
{
    public partial class ModificarClientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClsClientes.Nombre = Tnombre.Text;
            ClsClientes.Apellido = Tapellido.Text;
            ClsClientes.Telefono = Ttelefono.Text.ToString();

            if (ClsClientes.Agregar(ClsClientes.Nombre, ClsClientes.Apellido, ClsClientes.Telefono) > 0)
            {
                Response.Redirect("ModificarClientes.aspx");
            }
            else
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('No ingreso los datos requeridos');", true);
            }
        }

        protected void Bborrar_Click(object sender, EventArgs e)
        {
            ClsClientes.Codigo = Tcodigo.Text.ToString();

            if (ClsClientes.Eliminar(ClsClientes.Codigo) > 0)
            {
                Response.Redirect("ModificarClientes.aspx");
            }
            else
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('No ingreso los datos requeridos');", true);
            }
        }

        protected void BModificar_Click(object sender, EventArgs e)
        {
            ClsClientes.Codigo = Tcodigo.Text.ToString();
            ClsClientes.Nombre = Tnombre.Text;
            ClsClientes.Apellido = Tapellido.Text;
            ClsClientes.Telefono = Ttelefono.Text.ToString();

            if (ClsClientes.Modificar(ClsClientes.Codigo, ClsClientes.Nombre, ClsClientes.Apellido, ClsClientes.Telefono) > 0)
            {
                Response.Redirect("ModificarClientes.aspx");
            }
            else
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('No ingreso los datos requeridos');", true);
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}