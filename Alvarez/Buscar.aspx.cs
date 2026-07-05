using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Alvarez
{
    public partial class Buscar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDatos("");
            }
        }

        protected void btnVerTodos_Click(object sender, EventArgs e)
        {
            txtRutBuscar.Text = "";
            CargarDatos("");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            CargarDatos(txtRutBuscar.Text);
        }
        private void CargarDatos(string rut)
        {
            SqlConnection conexion = Conexion.Conectar();

            try
            {
                conexion.Open();

                string consulta = "SELECT * FROM Alumno";

                if (rut != "")
                {
                    consulta = "SELECT * FROM Alumno WHERE Rut = @Rut";
                }

                SqlCommand cmd = new SqlCommand(consulta, conexion);

                if (rut != "")
                {
                    cmd.Parameters.AddWithValue("@Rut", rut);
                }

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                gvAlumnos.DataSource = dt;
                gvAlumnos.DataBind();

                lblMensaje.Text = "";
            }
            catch (Exception ex)
            {
                lblMensaje.ForeColor = Color.Red;
                lblMensaje.Text = "<i class='bi bi-exclamation-circle-fill'></i> Error: " + ex.Message;
            }
            finally
            {
                conexion.Close();
            }
        }
    }
}