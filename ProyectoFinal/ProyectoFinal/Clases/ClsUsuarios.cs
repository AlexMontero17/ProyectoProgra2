using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProyectoFinal.Clases
{
    public class ClsUsuarios
    {
        public static string Email { get; set; }
        public static string Clave { get; set; }
        public static string Nombre { get; set; }
        public static string Tipo { get; set; }

        public static int ValidarLogin(string Email, string Clave)
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DboConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("ValidarUsuario", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@Email", Email));
                    cmd.Parameters.Add(new SqlParameter("@Clave", Clave));

                    // retorno = cmd.ExecuteNonQuery();
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.Read())
                        {
                            ClsUsuarios.Nombre = rdr["Nombre"].ToString();
                            ClsUsuarios.Tipo = rdr["Tipo"].ToString();
                            retorno = 1;
                        }

                    }


                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }

            return retorno;
        }



        public static int Agregar(string Email, string Clave, string Nombre, string Tipo)
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();

            try
            {
                using (Conn = DboConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("IngresarUsuarios", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@Email", Email));
                    cmd.Parameters.Add(new SqlParameter("@Clave", Clave));
                    cmd.Parameters.Add(new SqlParameter("@Nombre", Nombre));
                    cmd.Parameters.Add(new SqlParameter("@Tipo", Tipo));

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




        public static int Eliminar(string Email)
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();

            try
            {
                using (Conn = DboConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("BorrarUsuarios", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@Email", Email));
                    

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



        public static int Modificar(string Email, string Clave, string Nombre, string Tipo)
        {
            int retorno = 0;
            int tipo = 1;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DboConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("ActualizarUsuarios", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@Email", Email));
                    cmd.Parameters.Add(new SqlParameter("@Clave", Clave));
                    cmd.Parameters.Add(new SqlParameter("@Nombre", Nombre));
                    cmd.Parameters.Add(new SqlParameter("@Tipo", Tipo));

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





        public static DataTable Listar(string Email)
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();
            DataTable dt = new DataTable();

            try
            {
                using (Conn = DboConexion.obtenerConexion())
                {

                    using (SqlCommand cmd = new SqlCommand("ConsultaUsuarioFiltroCorreo", Conn))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            retorno = cmd.ExecuteNonQuery();
                            cmd.Connection = Conn;
                            sda.SelectCommand = cmd;
                            using (dt = new DataTable())
                            {
                                cmd.Parameters.Add(new SqlParameter("@Email", Email));
                                //cmd.CommandType = CommandType.StoredProcedure;
                                sda.Fill(dt);
                                return dt;
                            }
                        }
                    }
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                // Conn.Close();
            }
            return dt;
        }





    }





}
