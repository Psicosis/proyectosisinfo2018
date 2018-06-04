using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

public partial class pagebuscarpornombredoc : System.Web.UI.Page
{

    public SqlConnection buscar = new SqlConnection("workstation id = DBHistMedic.mssql.somee.com; packet size = 4096; user id = sisinfoproyh2018_SQLLogin_1; pwd=zks5rn6tqx;data source = DBHistMedic.mssql.somee.com; persist security info=False;initial catalog = DBHistMedic"); //providerName="System.Data.SqlClient");


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        buscar.Open();
        lblestado.Text = "";

        try{

            string ciusuario = Convert.ToString(Request.QueryString["parametro"]);
            //int intciusuario = Convert.ToInt32(Request.QueryString["parametro"]);
            //sql muestra hora
            //SqlDataAdapter da = new SqlDataAdapter("select nombre,doctor,descripcion,fecha from tbl_historialmedico where doctor like '" + txtbuscar.Text +"'and id_usuario like'"+ Convert.ToDecimal(ciusuario) + "%'", buscar);
            //sql sin hora
            SqlDataAdapter da = new SqlDataAdapter("select nombre AS TITULO,doctor AS DOCTOR,descripcion AS DESCRIPCION,CONVERT (VARCHAR(10) ,fecha,23) AS FECHA from tbl_historialmedico where doctor like '" + txtbuscar.Text + "'and id_usuario like'" + Convert.ToDecimal(ciusuario) + "%'", buscar);
            DataTable dt = new DataTable();

            da.Fill(dt);
            if (dt.Rows.Count==0) {
                dt.Clear();
                this.GridViewBuscar.DataSource = dt;
                GridViewBuscar.DataBind();
                lblestado.Text = "No existe un historial con el doctor que ingreso";
            }
            else { 
            this.GridViewBuscar.DataSource = dt;
            GridViewBuscar.DataBind();
            txtbuscar.Text = "";
            }
        }
        catch {

            lblestado.Text = "No puede dejar espacios vacios";


        }
        buscar.Close();  
    }

    protected void btnbuscarfecha_Click(object sender, EventArgs e)
    {

        lblestado.Text = "";

        try
        {
            string ciusuario = Convert.ToString(Request.QueryString["parametro"]);


            //CONVERT (VARCHAR(10) ,fecha,23) AS FECHA
            //sql con hora
            //SqlDataAdapter da = new SqlDataAdapter("select nombre,doctor,descripcion,fecha from tbl_historialmedico where fecha like '" + txtfecha.Text + "'and id_usuario like'" + Convert.ToDecimal(ciusuario) + "%'", buscar);
            //sql sin hora
            SqlDataAdapter da = new SqlDataAdapter("select nombre AS TITULO,doctor AS DOCTOR,descripcion AS DESCRIPCION,CONVERT (VARCHAR(10) ,fecha,23) AS FECHA from tbl_historialmedico where fecha like '" + txtfecha.Text + "'and id_usuario like'" + Convert.ToDecimal(ciusuario) + "%'", buscar);
            DataTable dt = new DataTable();

            da.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                dt.Clear();
                this.GridViewBuscar.DataSource = dt;
                GridViewBuscar.DataBind();
                lblestado.Text = "No Existe Historial con la fecha introducida";
            }
            else
            {
                this.GridViewBuscar.DataSource = dt;
                GridViewBuscar.DataBind();
                txtfecha.Text = "";
            }
        }
        catch
        {

            lblestado.Text = "No puede dejar espacios vacios";


        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pagehistoriales.aspx?parametro=" + Request.Params["parametro"]);
    }

    protected void btnbusqtitulo_Click(object sender, EventArgs e)
    {
        buscar.Open();
        lblestado.Text = "";

        try
        {

            string ciusuario = Convert.ToString(Request.QueryString["parametro"]);
            //int intciusuario = Convert.ToInt32(Request.QueryString["parametro"]);
            //CONVERT (VARCHAR(10) ,fecha,23) AS FECHA
            //sql con hora
            //SqlDataAdapter da = new SqlDataAdapter("select nombre,doctor,descripcion,fecha from tbl_historialmedico where nombre like '" + txtbusqtitulo.Text + "'and id_usuario like'" + Convert.ToDecimal(ciusuario) + "%'", buscar);
            //sql sin hora
            SqlDataAdapter da = new SqlDataAdapter("select nombre AS TITULO,doctor AS DOCTOR,descripcion AS DESCRIPCION,CONVERT (VARCHAR(10) ,fecha,23) AS FECHA from tbl_historialmedico where nombre like '" + txtbusqtitulo.Text + "'and id_usuario like'" + Convert.ToDecimal(ciusuario) + "%'", buscar);
            DataTable dt = new DataTable();

            da.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                dt.Clear();
                this.GridViewBuscar.DataSource = dt;
                GridViewBuscar.DataBind();
                lblestado.Text = "El Historial con el titulo introducido no existe";
            }
            else
            {
                this.GridViewBuscar.DataSource = dt;
                GridViewBuscar.DataBind();
                txtbusqtitulo.Text = "";
            }
        }
        catch(Exception ex)
        {
            lblestado.Text = "Error = "+ ex;
            //lblestado.Text = "No puede dejar espacios vacios";


        }
        buscar.Close();
    }
}