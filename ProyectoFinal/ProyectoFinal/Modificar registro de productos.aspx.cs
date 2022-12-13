using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinal
{
    public partial class Modificar_registro_de_productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClsProductos.Nombre = Tnombre.Text;
            ClsProductos.Precio = Tprecio.Text.ToString();

            if (ClsProductos.Agregar(ClsProductos.Nombre, ClsProductos.Precio) > 0)
            {
                Response.Redirect("Modificar registro de productos.aspx");
            }
            else
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('No ingreso los datos requeridos');", true);
            }


        }

        protected void Bborrar_Click(object sender, EventArgs e)
        {
            ClsProductos.Codigo = TCodigo.Text.ToString();

            if (ClsProductos.Eliminar(ClsProductos.Codigo) > 0)
            {
                Response.Redirect("Modificar registro de productos.aspx");
            }
            else
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('No ingreso los datos requeridos');", true);
            }
        }

        protected void BModificar_Click(object sender, EventArgs e)
        {
            ClsProductos.Codigo = TCodigo.Text.ToString();
            ClsProductos.Nombre = Tnombre.Text;
            ClsProductos.Precio = Tprecio.Text.ToString();

            if (ClsProductos.Modificar(ClsProductos.Codigo, ClsProductos.Nombre, ClsProductos.Precio) > 0)
            {
                Response.Redirect("Modificar registro de productos.aspx");
            }
            else
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('No ingreso los datos requeridos');", true);
            }
        }
    }
}