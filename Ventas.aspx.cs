using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen2
{
    public partial class Ventas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ingresar_Click(sender, e);
        }
        protected void ingresar_Click(object sender, EventArgs e)
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["Examen2ConnectionString2"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand(" INSERT INTO Venta (Codigo_Venta,Cajero,Producto,Maquina) VALUES(" + TextBox4 + ", " + TextBox1 + ", " + TextBox2 + "," +
                " " + TextBox3 + "  )", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();
            
        }
        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["Examen2ConnectionString2"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Select Cajeros.Nombre, Cajeros.Apellido, Productos.Nombre, Productos.Precio, Maquinas_Registradoras.Piso from Venta inner join Cajeros on Cajeros.Codigo = Venta.Cajero\r\ninner join Productos on Productos.Codigo = Venta.Producto inner join Maquinas_Registradoras on Maquinas_Registradoras.Codigo = Venta.Maquina"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }
    }
}