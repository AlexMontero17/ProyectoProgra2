using ProyectoFinal.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProyectoFinal
{
    public class ClsProductos
    {
        public static string Codigo { get; set; }
        public static string Nombre { get; set; }
        public static string Precio { get; set; }



        public static int Agregar(string Nombre, string Precio)
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();

            try
            {
                using (Conn = DboConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("IngresarProducto", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@Nombre", Nombre));
                    cmd.Parameters.Add(new SqlParameter("@Precio", Precio));

                    retorno = cmd.ExecuteNonQuery();

                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;
        }




        public static int Eliminar(string Codigo)
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();

            try
            {
                using (Conn = DboConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("BorrarProducto", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("Codigo", Codigo));

                    retorno = cmd.ExecuteNonQuery();
                    string jscript = "<script>alert('YOUR BUTTON HAS BEEN CLICKED')</script>";

                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }
            return retorno;
        }



        public static int Modificar(string Codigo, string Nombre, string Precio)
        {
            int retorno = 0;
            int tipo = 1;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DboConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("ModificarProducto", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("Codigo", Codigo));
                    cmd.Parameters.Add(new SqlParameter("@Nombre", Nombre));
                    cmd.Parameters.Add(new SqlParameter("@Precio", Precio));

                    retorno = cmd.ExecuteNonQuery();
                }
            }
            catch (Exception)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;
        }





    }
}
