using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Alvarez
{
    public class Conexion
    {
        public static SqlConnection Conectar()
        {
            SqlConnection conexion = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\PRUEBA4.mdf;Integrated Security=True");

            return conexion;
        }
    }
}
