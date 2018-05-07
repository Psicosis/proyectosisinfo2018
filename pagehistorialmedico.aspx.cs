using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pagehistorialmedico : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    //public void GUIEdicion()
    //{
    //    txtbuscar.Enabled = true;

    //    txtid.Enabled = true;
    //    txtidnombreusua.Enabled = true;
    //    txtnombreinforme.Enabled = true;
    //    txtdoctor.Enabled = true;
    //    txtdescripcion.Enabled = true;

                
    //    lblestado.Text = "";


    //    btnmodificar.Enabled = false;
    //    btneliminar.Enabled = false;

    //}

    //public void GUILimpiar()
    //{

    //    txtid.Text = "";

    //    txtid.Text = "";


    //    txtidnombreusua.Text = "";
    //    txtapellido.Text = "";
    //    txtedad.Text = "";
    //    txtemail.Text = "";
    //    txtprofesion.Text = "";
    //    txtusuario.Text = "";
    //    txtcontraseña.Text = "";
    //    txtcontraseña.Attributes.Add("Value", "");
    //    rdbacceso.ClearSelection();
    //}

    //public void GUIEdicionTerminada()
    //{




    //    txtbuscar.Enabled = true;

    //    txtci.Enabled = false;
    //    txtidnombreusua.Enabled = false;
    //    txtapellido.Enabled = false;
    //    txtedad.Enabled = false;
    //    txtemail.Enabled = false;
    //    txtprofesion.Enabled = false;
    //    txtusuario.Enabled = false;
    //    txtcontraseña.Enabled = false;
    //    rdbacceso.Enabled = false;
    //    lblestado.Text = "";

    //    btnnuevo.Text = "Nuevo";

    //    btnmodificar.Enabled = true;
    //    btneliminar.Enabled = true;

    //}



    protected void btnnuevo_Click(object sender, EventArgs e)
    {
        if (btnnuevo.Text == "Nuevo")
        {
            //cambia el estado de los controles
            
            btnnuevo.Text = "Guardar";
            //txtid.Enabled = true;
            drpnombreusuario.Enabled = true;
            txtnombreinforme.Enabled = true;
            txtdoctor.Enabled = true;
            txtdescripcion.Enabled = true;

            
            //RadioButtonListCategoria.Enabled = true;
            //RadioButtonListCategoria.SelectedIndex = 0;
            btnmodificar.Enabled = false;
            btneliminar.Enabled = false;
            //limpia el formulario
            //txtid.Text = "";
            drpnombreusuario.SelectedIndex = drpnombreusuario.Items.IndexOf(drpnombreusuario.Items.FindByValue("0"));
            txtnombreinforme.Text = "";
            txtdescripcion.Text = "";
                    
            lblestado.Text = "";

        }
        else if (btnnuevo.Text == "Guardar")
        {
            try
            {
                clsinformemedico cinf = new clsinformemedico(0,"" , "", "", "");

                //instancia de clase cliente                
                //cambia el estado de los controles

                btnnuevo.Text = "Nuevo";
                btnmodificar.Enabled = true;
                btnnuevo.Enabled = true;
                btneliminar.Enabled = true;
                btncancelar.Enabled = true;

                //txtid.Enabled = false;
                drpnombreusuario.Enabled = false;
                txtnombreinforme.Enabled = false;
                txtdoctor.Enabled = false;
                txtdescripcion.Enabled = false;


            //RadioButtonListCategoria.Enabled = false;

            //int cedula;
            //cedula = int.Parse.(drpnombreusuario.SelectedItem.Text);

            //if (cinf.existe(int.Parse(drpnombreusuario.SelectedItem.Text)))




            //if (cinf.existe(int.Parse(drpnombreusuario.SelectedValue)))
            //    {
            //    //captura datos del formulario

            //    //cinf.Idusuario = drpnombreusuario.SelectedItem.Text;
            //        cinf.Idusuario = drpnombreusuario.SelectedItem.Value;
            //        cinf.Nombre = txtnombreinforme.Text;
            //        cinf.Doctor = txtdoctor.Text;
            //        cinf.Descripcion = txtdescripcion.Text;



            //        //clt.Categoria = int.Parse(RadioButtonListCategoria.SelectedValue);
            //        //clt.modificar();//actualiza el registro en la base de datos                   
            //        cinf.modificar();
            //        lblestado.Text = "Registro Actualizado";
            //    }
            //    else
            //    {
                    //captura datos del formulario

                    cinf.Idusuario = drpnombreusuario.SelectedItem.Value;
                    cinf.Nombre = txtnombreinforme.Text;
                    cinf.Doctor = txtdoctor.Text;
                    cinf.Descripcion = txtdescripcion.Text;

                    
                    //clt.Categoria = int.Parse(RadioButtonListCategoria.SelectedValue);
                    cinf.agregar();//agrega un nuevo registro a la base de datos                
                    lblestado.Text = "Nuevo Registro Guardado";
                //}
            }
           catch { lblestado.Text = "No puede dejar espacios vacidos"; }
        }
    }

    protected void btnmodificar_Click(object sender, EventArgs e)
    {

    }

    protected void btneliminar_Click(object sender, EventArgs e)
    {

    }

    protected void btncancelar_Click(object sender, EventArgs e)
    {

    }

    protected void btnbuscar_Click(object sender, EventArgs e)
    {

    }
}