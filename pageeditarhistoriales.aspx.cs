using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class pageeditarhistoriales : System.Web.UI.Page
{
    public SqlConnection buscar = new SqlConnection("workstation id = DBHistMedic.mssql.somee.com; packet size = 4096; user id = sisinfoproyh2018_SQLLogin_1; pwd=zks5rn6tqx;data source = DBHistMedic.mssql.somee.com; persist security info=False;initial catalog = DBHistMedic");
    protected void Page_Load(object sender, EventArgs e)
    {
        //limpiarlbls();
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
                SqlCommand cmci = new SqlCommand(obtenerci, buscar);

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

            //SqlDataAdapter da = new SqlDataAdapter("select nombre,doctor,descripcion,fecha,tipo from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%'", buscar);
            //===consulta antes de editar
            //SqlDataAdapter da = new SqlDataAdapter("select * from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%'", buscar);
            //sql fecha con hora
            //SqlDataAdapter da = new SqlDataAdapter("select id, fecha, tipo, nombre, doctor, descripcion from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%' ORDER BY id DESC", buscar);

            //sql fecha sin hora
            //SqlDataAdapter da = new SqlDataAdapter("select id AS ID,CONVERT (VARCHAR(10) ,fecha,23) as FECHA,tipo as TIPO,nombre as TITULO,doctor as DOCTOR,descripcion as DESCRIPCION from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%' ORDER BY id DESC", buscar);
            SqlDataAdapter da = new SqlDataAdapter("select id AS ID, CONVERT (VARCHAR(10) ,fecha,23) AS FECHA, tipo AS TIPO, nombre AS TITULO, doctor AS DOCTOR, descripcion AS DESCRIPCION from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%' ORDER BY id DESC", buscar);
            DataTable dt = new DataTable();

            da.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                lblestado.Text = "El usuario no tiene historiales";
            }
            else
            {
                //this.dgridvieweditar.DataSource = dt;

                this.GridView2.DataSource = dt;


                //this.GridViewBuscar.DataSource = dt;
                //GridViewBuscar.DataBind();


                //dgridvieweditar.DataBind();
                GridView2.DataBind();
            }


        }
        catch { }

        buscar.Close();

    }

    public void mostrarlbls()
    {

        lblfecha.Visible = true;
        txtfecha.Text = "";
        txtfecha.Visible = true;

        lbltipo.Visible = true;
        drptipo.Visible = true;

        lblnombre.Visible = true;
        txtnombre.Text = "";
        txtnombre.Visible = true;

        lbldoctor.Visible = true;
        txtdoctor.Text = "";
        txtdoctor.Visible = true;

        lbldescripcion.Visible = true;
        txtdescripcion.Text = "";
        txtdescripcion.Visible = true;



        lblimagen.Visible = true;
        fileeditarimagen.Visible = true;
        btnmodificar.Visible = true;
        Button3.Visible = true;


    }

    public void limpiarlbls()
    {
        
        lblfecha.Visible = false;
        txtfecha.Text = "";
        txtfecha.Visible = false;

        lbltipo.Visible = false;
        drptipo.Visible = false;

        lblnombre.Visible = false;
        txtnombre.Text = "";
        txtnombre.Visible = false;

        lbldoctor.Visible = false;
        txtdoctor.Text = "";
        txtdoctor.Visible = false;

        lbldescripcion.Visible = false;
        txtdescripcion.Text = "";
        txtdescripcion.Visible = false;

        //lblmensaje.Text = "";
        //lblmensaje.Visible = false;

        lblimagen.Visible = false;
        fileeditarimagen.Visible = false;
        btnmodificar.Visible = false;
        Button3.Visible = false;


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pagehistoriales.aspx?parametro=" + Request.Params["parametro"]);
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //buscar.Open();
        //txtnombre.Text=GridView2.Curre
        //txtid.Text = GridView2.SelectedRow.Cells[0].Text;
        //txtidusuario.Text = GridView2.SelectedRow.Cells[1].Text;
        //txtnombre.Text = GridView2.SelectedRow.Cells[2].Text;
        //txtdoctor.Text = GridView2.SelectedRow.Cells[3].Text;
        //txtdescripcion.Text = GridView2.SelectedRow.Cells[4].Text;
        //txtfecha.Text = GridView2.SelectedRow.Cells[5].Text;
        //txttipo.Text = GridView2.SelectedRow.Cells[6].Text;

        //drptipo.SelectedItem.Text = GridView2.SelectedRow.Cells[6].Text;

        //txtimagen.Text = GridView2.SelectedRow.Cells[7].Text;

        //string sql = "select imagen from tbl_historialmedico where id = " + txtid.Text;
        //SqlCommand cargarimagen = new SqlCommand(sql, buscar);
        //byte[] byteimagen = (byte[])cargarimagen.ExecuteScalar();
        //string ImagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(byteimagen);
        //imgpreview.ImageUrl = ImagenDataURL64;

        //buscar.Close();
        //mostrarlbls();
        lblmensaje.Text = "";
        lblerror.Text = "";
        lblfechaerror.Text = "";
        imgpreview.Visible = true;
        buscar.Open();
        //txtnombre.Text=GridView2.Curre
        txtid.Text = GridView2.SelectedRow.Cells[0].Text;
        //txtidusuario.Text = GridView2.SelectedRow.Cells[1].Text;
        txtnombre.Text = GridView2.SelectedRow.Cells[3].Text;
        txtdoctor.Text = GridView2.SelectedRow.Cells[4].Text;
        txtdescripcion.Text = GridView2.SelectedRow.Cells[5].Text;
        txtfecha.Text = GridView2.SelectedRow.Cells[1].Text;
        txttipo.Text = GridView2.SelectedRow.Cells[2].Text;

        drptipo.SelectedItem.Text = GridView2.SelectedRow.Cells[2].Text;
        //txtimagen.Text = GridView2.SelectedRow.Cells[7].Text;

        string sql = "select imagen from tbl_historialmedico where id = " + txtid.Text;
        SqlCommand cargarimagen = new SqlCommand(sql, buscar);
        byte[] byteimagen = (byte[])cargarimagen.ExecuteScalar();
        string ImagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(byteimagen);
        imgpreview.ImageUrl = ImagenDataURL64;

        buscar.Close();



    }

    protected void GridView2_DataBound(object sender, EventArgs e)
    {




    }

    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onMouseOver", "this.style.cursor = 'pointer' ");
            e.Row.Attributes.Add("onclick", Page.ClientScript.GetPostBackEventReference(GridView2, "select$" + e.Row.RowIndex.ToString()));
        }


    }

    //public tbl_historialmedico

    protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void actualizarGridView()
    {

        //buscar.Open();
        string ciusuario = Convert.ToString(Request.QueryString["parametro"]);

        //SqlDataAdapter da = new SqlDataAdapter("select nombre,doctor,descripcion,fecha,tipo from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%'", buscar);
        //SqlDataAdapter da = new SqlDataAdapter("select * from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%'", buscar);
        //slq fecha con hora
        //SqlDataAdapter da = new SqlDataAdapter("select id, fecha, tipo, nombre, doctor, descripcion from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%' ORDER BY id DESC", buscar);

        //sqlfecha sin hora
        //SqlDataAdapter da = new SqlDataAdapter("select id AS ID, CONVERT (VARCHAR(10) ,fecha,23) AS FECHA, tipo AS TIPO, nombre AS TITULO, doctor AS DOCTOR, descripcion AS DESCRIPCION from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%' ORDER BY id DESC", buscar);
        SqlDataAdapter da = new SqlDataAdapter("select id AS ID, CONVERT (VARCHAR(10) ,fecha,23) AS FECHA, tipo AS TIPO, nombre AS TITULO, doctor AS DOCTOR, descripcion AS DESCRIPCION from tbl_historialmedico where id_usuario like '" + Convert.ToDecimal(ciusuario) + "%' ORDER BY id DESC", buscar);
        DataTable dt = new DataTable();

        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            lblestado.Text = "El usuario no tiene historiales";
        }
        else
        {
            //this.dgridvieweditar.DataSource = dt;

            this.GridView2.DataSource = dt;


            //this.GridViewBuscar.DataSource = dt;
            //GridViewBuscar.DataBind();


            //dgridvieweditar.DataBind();
            GridView2.DataBind();
        }

        //buscar.Close();
        //limpiarlbls();
    }
    protected void btnmodificar_Click(object sender, EventArgs e)
    {
        //=====================modificar funcionando==============================
        //lblerror.Text = "";
        //lblfechaerror.Text = "";
        //try
        //{
        //    buscar.Open();
        //    //string updatetablaalimentos = "update Alimentos set nombre= '" + textBox2.Text + "' ,cantidad = " + textBox3.Text + ",tipodealimento = '" + textBox4.Text + "', precio = " + textBoxprecio.Text + " where Id= " + textBoxID.Text;
        //    //string updatehistorial = "update tbl_historialmedico set nombre ='"+ txtnombre.Text +"',doctor = '" + txtdoctor.Text +"', descripcion = '"+ txtdescripcion.Text+"',fecha='"+txtfecha.Text+"',tipo='"+txttipo.Text+"' where Id = "+txtid.Text;
        //    string updatehistorial = "update tbl_historialmedico set nombre ='" + txtnombre.Text + "',doctor = '" + txtdoctor.Text + "', descripcion = '" + txtdescripcion.Text + "',fecha='" + txtfecha.Text + "',tipo='" + drptipo.SelectedItem.Text + "' where Id = " + txtid.Text;
        //    SqlCommand command = new SqlCommand(updatehistorial, buscar);
        //    command.ExecuteNonQuery();
        //    lblmensaje.Text = "Se modifico el historial";
        //    //GridView2.DataBind();
        //    actualizarGridView();
        //    buscar.Close();
        //}
        //catch //(Exception ex)
        //{
        //    //lblerror.Text = "ERROR = " + ex;
        //    lblerror.Text = "Historial dañado recomendar borrar";
        //    lblfechaerror.Text = "Formato Fecha incorrecto";
        //    //lblmensaje.Text = "Click en una fila";
        //}
        ////limpiarlbls();
        //==========================================================================


        lblerror.Text = "";
        lblfechaerror.Text = "";
        try
        {
            int Tamanioeditar = fileeditarimagen.PostedFile.ContentLength;
            byte[] ImagenOriginal = new byte[Tamanioeditar];

            //lbltamanio.Text ="Tamaño = " + Convert.ToString(Tamanio);

            fileeditarimagen.PostedFile.InputStream.Read(ImagenOriginal, 0, Tamanioeditar);

            //comentar si afecta el la carga
            if (ImagenOriginal.Length > 0)
            {
                Bitmap ImagenOriginalBinaria = new Bitmap(fileeditarimagen.PostedFile.InputStream);
                string ImagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(ImagenOriginal);
                //string ImagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(nodisponible);
                imgpreview.ImageUrl = ImagenDataURL64;
            }
            //else
            //{

            //    string ImagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(nodisponible);
            //    imgpreview.ImageUrl = ImagenDataURL64;
            //}



            buscar.Open();
            if (ImagenOriginal.Length > 0)
            {
                ////string updatetablaalimentos = "update Alimentos set nombre= '" + textBox2.Text + "' ,cantidad = " + textBox3.Text + ",tipodealimento = '" + textBox4.Text + "', precio = " + textBoxprecio.Text + " where Id= " + textBoxID.Text;
                ////string updatehistorial = "update tbl_historialmedico set nombre ='"+ txtnombre.Text +"',doctor = '" + txtdoctor.Text +"', descripcion = '"+ txtdescripcion.Text+"',fecha='"+txtfecha.Text+"',tipo='"+txttipo.Text+"' where Id = "+txtid.Text;
                //string updatehistorial = "update tbl_historialmedico set nombre ='" + txtnombre.Text + "',doctor = '" + txtdoctor.Text + "', descripcion = '" + txtdescripcion.Text + "',fecha='" + txtfecha.Text + "',tipo='" + drptipo.SelectedItem.Text + "' ,imagen='"+ImagenOriginal+"'where Id = " + txtid.Text;
                //SqlCommand command = new SqlCommand(updatehistorial, buscar);
                //command.ExecuteNonQuery();
                //lblmensaje.Text = "Se modifico el historial";
                ////GridView2.DataBind();




                string coneccion = "workstation id = DBHistMedic.mssql.somee.com; packet size = 4096; user id = sisinfoproyh2018_SQLLogin_1; pwd=zks5rn6tqx;data source = DBHistMedic.mssql.somee.com; persist security info=False;initial catalog = DBHistMedic";
                string sqlquery = "UPDATE tbl_historialmedico set imagen=@data where id=@txtid";


                try
                {
                    using (SqlConnection con = new SqlConnection(coneccion))
                    {
                        con.Open();
                        using (SqlCommand cmd = con.CreateCommand())
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.Parameters.Add(new SqlParameter("@data", ImagenOriginal));
                            cmd.Parameters.Add(new SqlParameter("@txtid", txtid.Text));
                            cmd.CommandText = sqlquery;
                            cmd.ExecuteNonQuery();

                        }
                        string updatehistorial = "update tbl_historialmedico set nombre ='" + txtnombre.Text + "',doctor = '" + txtdoctor.Text + "', descripcion = '" + txtdescripcion.Text + "',fecha='" + txtfecha.Text + "',tipo='" + drptipo.SelectedItem.Text + "' where Id = " + txtid.Text;
                        SqlCommand command = new SqlCommand(updatehistorial, buscar);
                        command.ExecuteNonQuery();
                        lblmensaje.Text = "Se modifico el historial";
                        //GridView2.DataBind();
                        actualizarGridView();
                        lblmensaje.Text = "Se modifico el historial";
                        con.Close();
                    }


                }
                catch (Exception ex)
                {

                    lblmensaje.Text = "error = " + ex;
                }


                //string updatehistorial = "update tbl_historialmedico set nombre ='" + txtnombre.Text + "',doctor = '" + txtdoctor.Text + "', descripcion = '" + txtdescripcion.Text + "',fecha='" + txtfecha.Text + "',tipo='" + drptipo.SelectedItem.Text + "' where Id = " + txtid.Text;
                //SqlCommand command = new SqlCommand(updatehistorial, buscar);
                //command.ExecuteNonQuery();
                //lblmensaje.Text = "Se modifico el historial";
                //GridView2.DataBind();



                actualizarGridView();




            }
            else
            {

                //string updatetablaalimentos = "update Alimentos set nombre= '" + textBox2.Text + "' ,cantidad = " + textBox3.Text + ",tipodealimento = '" + textBox4.Text + "', precio = " + textBoxprecio.Text + " where Id= " + textBoxID.Text;
                //string updatehistorial = "update tbl_historialmedico set nombre ='"+ txtnombre.Text +"',doctor = '" + txtdoctor.Text +"', descripcion = '"+ txtdescripcion.Text+"',fecha='"+txtfecha.Text+"',tipo='"+txttipo.Text+"' where Id = "+txtid.Text;
                string updatehistorial = "update tbl_historialmedico set nombre ='" + txtnombre.Text + "',doctor = '" + txtdoctor.Text + "', descripcion = '" + txtdescripcion.Text + "',fecha='" + txtfecha.Text + "',tipo='" + drptipo.SelectedItem.Text + "' where Id = " + txtid.Text;
                SqlCommand command = new SqlCommand(updatehistorial, buscar);
                command.ExecuteNonQuery();
                lblmensaje.Text = "Se modifico el historial";
                //GridView2.DataBind();
                actualizarGridView();
            }

            buscar.Close();
        }
        catch (Exception ex)
        {
            //lblmensaje.Text = "error" + ex;
            ////lblmensaje.Text = "Click en una fila"; 
            lblerror.Text = "ERROR = " + ex;
            lblerror.Text = "Historial dañado se recomienda borrar";
            lblfechaerror.Text = "Formato Fecha incorrecto";
            lblmensaje.Text = "";
            //lblmensaje.Text = "Click en una fila";
        }




    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            buscar.Open();
            string eliminarhistorial = "delete tbl_historialmedico where Id= " + txtid.Text;
            SqlCommand command = new SqlCommand(eliminarhistorial, buscar);
            command.ExecuteNonQuery();
            lblmensaje.Text = "Se elimino el Historial";

            actualizarGridView();
            buscar.Close();

            
            txtfecha.Text = "";
            txtnombre.Text = "";
            txtdoctor.Text = "";
            txtdescripcion.Text = "";
            lblerror.Text = "";
            lblfechaerror.Text = "";
            imgpreview.Visible = false;

            


        }
        catch { lblmensaje.Text = "Se elimino el Historial"; }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pagehistoriales.aspx?parametro=" + Request.Params["parametro"]);
    }
}