using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Alvarez
{
    public partial class Calcular : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = Conexion.Conectar();

            try
            {
                string rut = txtRut.Text;
                string nombre = txtNombre.Text;
                decimal nota1 = decimal.Parse(txtNota1.Text.Replace(",", "."));
                decimal nota2 = decimal.Parse(txtNota2.Text.Replace(",", "."));
                decimal nota3 = decimal.Parse(txtNota3.Text.Replace(",", "."));

                decimal promedio = (nota1 + nota2 + nota3) / 3;
                promedio = Math.Round(promedio, 1);

                conexion.Open();
                string consulta = "INSERT INTO Alumno (Rut, Nombre, Nota1, Nota2, Nota3, Promedio) VALUES (@Rut, @Nombre, @Nota1, @Nota2, @Nota3, @Promedio)";
                SqlCommand cmd = new SqlCommand(consulta, conexion);

                cmd.Parameters.AddWithValue("@Rut", rut);
                cmd.Parameters.AddWithValue("@Nombre", nombre);
                cmd.Parameters.AddWithValue("@Nota1", nota1);
                cmd.Parameters.AddWithValue("@Nota2", nota2);
                cmd.Parameters.AddWithValue("@Nota3", nota3);
                cmd.Parameters.AddWithValue("@Promedio", promedio);

                cmd.ExecuteNonQuery();

                lblMensaje.ForeColor = Color.LightGreen;
                lblMensaje.Text = "<i class='bi bi-check-circle-fill'></i> ¡Guardado! Promedio: " + promedio;

                txtRut.Text = "";
                txtNombre.Text = "";
                txtNota1.Text = "";
                txtNota2.Text = "";
                txtNota3.Text = "";
            }
            catch (Exception ex)
            {
                lblMensaje.ForeColor = Color.Red;
                lblMensaje.Text = "<i class='bi bi-exclamation-circle-fill'></i> Error: " + ex.Message;
            }
            finally
            {
                if (conexion.State == ConnectionState.Open)
                {
                    conexion.Close();
                }
            }
        }
    }
}