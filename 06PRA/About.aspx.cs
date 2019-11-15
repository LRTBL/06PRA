using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Practica
{
    public partial class About : Page
    {
        string connectionstring = "Data Source=LAPTOP-KEGBR6GV;Initial Catalog=VENTAS;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void btnbuscar_Click(object sender, EventArgs e)
        {
          
            Label1.Text = "";


            string selectSQL = "SELECT * FROM CLIENTES WHERE CODIGO='" + txtcodigo.Text + "';";

            SqlConnection con = new SqlConnection(connectionstring);

            SqlCommand cmd = new SqlCommand(selectSQL, con);

            SqlDataReader dr;
            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtdireccion.Text = dr[2].ToString();
                    txtedad.Text = dr[5].ToString();
                    txtemail.Text = dr[4].ToString();
                    txtnombre.Text = dr[1].ToString();
                    txttelefono.Text = dr[3].ToString();
                }
                con.Close();
                dr.Close();

            }
            catch (Exception err)
            {
                Label1.Text = "Error al registrar el cliente";
                Label1.Text += err.Message;
            }
        }

        protected void btngrabar_Click(object sender, EventArgs e)
        {
            string selectSQL = "SELECT * FROM CLIENTES ";
            SqlConnection con = new SqlConnection(connectionstring);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader dr;
            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                con.Close();
            }
            catch (Exception err)
            {
                Label1.Text = "Error al registrar el cliente";
                Label1.Text += err.Message;
            }
        }
    }
