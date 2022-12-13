using ProyectoFinal.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProyectoFinal
{
    public class ClsClientes
    {
        public static string Codigo { get; set; }
        public static string Nombre { get; set; }
        public static string Apellido { get; set; }
        public static string Telefono { get; set; }

        public static int Agregar(string Nombre, string Apellido, string Telefono)
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();

            try
            {
                using (Conn = DboConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("IngresarClientes", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@Nombre", Nombre));
                    cmd.Parameters.Add(new SqlParameter("@Apellido", Apellido));
                    cmd.Parameters.Add(new SqlParameter("@Telefono", Telefono));

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
                    SqlCommand cmd = new SqlCommand("BorrarClientes", Conn)
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



        public static int Modificar(string Codigo, string Nombre, string Apellido, string Telefono)
        {
            int retorno = 0;
            int tipo = 1;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DboConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("ModificarClientes", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("Codigo", Codigo));
                    cmd.Parameters.Add(new SqlParameter("@Nombre", Nombre));
                    cmd.Parameters.Add(new SqlParameter("@Apellido", Apellido));
                    cmd.Parameters.Add(new SqlParameter("@Telefono", Telefono));

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