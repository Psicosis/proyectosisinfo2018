using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;


public partial class pagehistoriales : System.Web.UI.Page 
{

    public SqlConnection buscar = new SqlConnection("workstation id = DBHistMedic.mssql.somee.com; packet size = 4096; user id = sisinfoproyh2018_SQLLogin_1; pwd=zks5rn6tqx;data source = DBHistMedic.mssql.somee.com; persist security info=False;initial catalog = DBHistMedic"); //providerName="System.Data.SqlClient");

    //public int ciusuario;

    //public void llenarci(int ci)
    //{
    //    ciusuario = ci;
    //}

    //public int devolverci()
    //{
    //    return ciusuario;
    //}

    protected void Page_Load(object sender, EventArgs e)
    {

        buscar.Open();
        try
        {
            if (Request.Params["parametro"] != null)
            {
                //lblusuario.Text = Request.Params["parametro"];
                
                //int ciusuario;
                //string nombreusuario = Request.Form["parametro"];
                string nombreusuario = Request.QueryString["parametro"];
                //lblcomprobando.Text = nombreusuario;
                //string obtenerci = "select nombre from tbl_usuario where usuario like'" + nombreusuario + "%'";
                string obtenerci = "select nombre from tbl_usuario where ci like'" + nombreusuario + "%'";
                SqlCommand cmci = new SqlCommand(obtenerci,buscar);

                //string nomusuar = cmci.ExecuteScalar


                //ciusuario = Convert.ToInt32(cmci.ExecuteScalar());

                //lblusuario.Text = Request.Params["parametro"];

                lblusuario.Text = Convert.ToString(cmci.ExecuteScalar());
                
            }

            //int ciusuario;
            //string nombreusuario = Request.Form["txtusuario"];
            //string obtenerci = "select ci from tbl_usuario where usuario like'" + nombreusuario + "%'";
            //SqlCommand cmci = new SqlCommand(obtenerci,buscar);

            //ciusuario = Convert.ToInt32(cmci.ExecuteScalar());


            string ciusuario = Convert.ToString(Request.QueryString["parametro"]);




            //SqlDataAdapter da = new SqlDataAdapter("select nombre,doctor,descripcion,tipo,fecha from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) +"%'", buscar);
            //SqlDataAdapter da = new SqlDataAdapter("select nombre,doctor,descripcion,tipo,fecha from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%' ORDER BY id DESC", buscar);

            //sql q muestra horas minutos
            //SqlDataAdapter da = new SqlDataAdapter("select id,fecha,tipo,nombre,doctor,descripcion from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%' ORDER BY id DESC", buscar);

            //sql solo fecha
            SqlDataAdapter da = new SqlDataAdapter("select id AS ID,CONVERT (VARCHAR(10) ,fecha,23) as FECHA,tipo as TIPO,nombre as TITULO,doctor as DOCTOR,descripcion as DESCRIPCION from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%' ORDER BY id DESC", buscar);
            DataTable dt = new DataTable();

            da.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                lblestado.Text = "El usuario no tiene Historiales";
            }
            else
            {
                this.gridviewhistoriales.DataSource = dt;
                //this.GridViewBuscar.DataSource = dt;
                //GridViewBuscar.DataBind();

                gridviewhistoriales.DataBind();
            }
        }
        catch { }

        buscar.Close();

   }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pagehistorialmedico.aspx?parametro=" + Request.Params["parametro"]);
    }

    protected void btnbuscar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pagebuscarpornombredoc.aspx?parametro=" + Request.Params["parametro"]);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pageeditarhistoriales.aspx?parametro=" + Request.Params["parametro"]);
    }

    protected void gridviewhistoriales_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onMouseOver", "this.style.cursor = 'pointer' ");
            e.Row.Attributes.Add("onclick", Page.ClientScript.GetPostBackEventReference(gridviewhistoriales, "select$" + e.Row.RowIndex.ToString()));
        }
    }

    protected void gridviewhistoriales_SelectedIndexChanged(object sender, EventArgs e)
    {
        buscar.Open();
        imgpreview.Visible = true;
        //txtnombre.Text=GridView2.Curre
        txtid.Text = gridviewhistoriales.SelectedRow.Cells[0].Text;
        lblestado.Text = "";

        string sql = "select imagen from tbl_historialmedico where id = " + txtid.Text;
        SqlCommand cargarimagen = new SqlCommand(sql, buscar);
        byte[] byteimagen = (byte[])cargarimagen.ExecuteScalar();
        string ImagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(byteimagen);
        imgpreview.ImageUrl = ImagenDataURL64;

        buscar.Close();
    }

    protected void btnfiltrar_Click(object sender, EventArgs e)
    {
        lblestado.Text = "";
        buscar.Open();
        string ciusuario = Convert.ToString(Request.QueryString["parametro"]);
        string tipo = "";
        string sqlconsulta = "";
        imgpreview.Visible = false;
        //tipo = drdfiltrar.SelectedItem.Text;

        txtfiltrar.Text = drdfiltrar.SelectedItem.Text;
        Label3.Text = tipo;

        //if (txtfiltrar.Text == "Consulta") {

            Label3.Text = tipo;
        //sql muestra hora
        //sqlconsulta = "select id, fecha, tipo, nombre, doctor, descripcion from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%' AND tipo = '"+ txtfiltrar.Text +"' ORDER BY id DESC";
        //sql solo fecha
        sqlconsulta = "select id AS ID, CONVERT (VARCHAR(10) ,fecha,23) as FECHA, tipo AS TIPO, nombre AS TITULO, doctor AS DOCTOR, descripcion AS DESCRIPCION from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%' AND tipo = '" + txtfiltrar.Text + "' ORDER BY id DESC";
        //sqlconsulta="select id,fecha,tipo,nombre,doctor,descripcion from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%' ORDER BY id DESC";
        //}


        //SqlDataAdapter da = new SqlDataAdapter("select nombre,doctor,descripcion,tipo,fecha from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) +"%'", buscar);
        //SqlDataAdapter da = new SqlDataAdapter("select nombre,doctor,descripcion,tipo,fecha from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%' ORDER BY id DESC", buscar);
        //SqlDataAdapter da = new SqlDataAdapter("select id,fecha,tipo,nombre,doctor,descripcion from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%' ORDER BY id DESC", buscar);
        SqlDataAdapter da = new SqlDataAdapter(sqlconsulta, buscar);
        DataTable dt = new DataTable();

        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            lblestado.Text = "El usuario no tiene historiales de tipo: "+ txtfiltrar.Text ;
        }
        else
        {
            this.gridviewhistoriales.DataSource = dt;
            //this.GridViewBuscar.DataSource = dt;
            //GridViewBuscar.DataBind();
            lblestado.Text = " ";
            gridviewhistoriales.DataBind();
        }



        buscar.Close();
    }
}