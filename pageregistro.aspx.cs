using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pageregistro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {

    }

    public void GUIEdicion() {
        txtbuscar.Enabled = true;

        txtci.Enabled = true;
        txtnombre.Enabled = true;
        txtapellido.Enabled = true;
        txtedad.Enabled = true;
        txtemail.Enabled = true;
        txtprofesion.Enabled = true;
        txtusuario.Enabled = true;
        txtcontraseña.Enabled = true;
        rdbacceso.Enabled = true;
        lblestado.Text = "";

        //Borrado para el registro
        //btnmodificar.Enabled = false;
        //btneliminar.Enabled = false;

    }

    public void GUILimpiar() {

        txtci.Text = "";
        txtnombre.Text = "";
        txtapellido.Text = "";
        txtedad.Text = "";
        txtemail.Text = "";
        txtprofesion.Text = "";
        txtusuario.Text = "";
        txtcontraseña.Text = "";
        txtcontraseña.Attributes.Add("Value", "");
        rdbacceso.ClearSelection();
    }

    public void GUIEdicionTerminada() {




        txtbuscar.Enabled = true;

        txtci.Enabled = false;
        txtnombre.Enabled = false;
        txtapellido.Enabled = false;
        txtedad.Enabled = false;
        txtemail.Enabled = false;
        txtprofesion.Enabled = false;
        txtusuario.Enabled = false;
        txtcontraseña.Enabled = false;
        rdbacceso.Enabled = false;
        lblestado.Text = "";

        btnnuevo.Text = "Nuevo";

        //borrado para el registro
        //btnmodificar.Enabled = true;
        //btneliminar.Enabled = true;
        
    }


    protected void btnnuevo_Click(object sender, EventArgs e)
    {

        if (btnnuevo.Text == "Nuevo") {

            GUIEdicion();
            GUILimpiar();
            btnnuevo.Text = "Guardar";

        } else if(btnnuevo.Text == "Guardar") {

            try{
                clsusuario usuar = new clsusuario(0, 0, 0, "", "", "", "", "", "");
                if (usuar.existe(int.Parse(txtci.Text.Trim())))
                {

                    usuar.Ci = int.Parse(txtci.Text);
                    usuar.Idacceso = int.Parse(rdbacceso.SelectedValue);
                    usuar.Edad = int.Parse(txtedad.Text);
                    usuar.Nombre = txtnombre.Text;
                    usuar.Apellido = txtapellido.Text;
                    usuar.Email = txtemail.Text;
                    usuar.Profesion = txtprofesion.Text;
                    usuar.Usuario = txtusuario.Text;
                    usuar.Contraseña = txtcontraseña.Text;

                    usuar.modificar();

                    GUIEdicionTerminada();
                    lblestado.Text = "Registro Actualizado";
                    btnnuevo.Text = "Nuevo";
                }
                else {

                    usuar.Ci = int.Parse(txtci.Text);
                    usuar.Idacceso = int.Parse(rdbacceso.SelectedValue);
                    usuar.Edad = int.Parse(txtedad.Text);
                    usuar.Nombre = txtnombre.Text;
                    usuar.Apellido = txtapellido.Text;
                    usuar.Email = txtemail.Text;
                    usuar.Profesion = txtprofesion.Text;
                    usuar.Usuario = txtusuario.Text;
                    usuar.Contraseña = txtcontraseña.Text;

                    usuar.agregar();
                    GUIEdicionTerminada();
                    lblestado.Text = "Nuevo Registro Guardado";
                    btnnuevo.Text = "Nuevo";

                }
            }
            catch {

                lblestado.Text = "No deben quedar espacios en blanco";
            }
                                   
        }
              

    }

    protected void btnmodificar_Click(object sender, EventArgs e)
    {
        /*
        clsusuario usuar = new clsusuario(0, 0, 0, "", "", "", "", "", "");
        usuar.Ci = int.Parse(txtci.Text);
        usuar.Idacceso = int.Parse(rdbacceso.SelectedValue);
        usuar.Edad = int.Parse(txtedad.Text);
        usuar.Nombre = txtnombre.Text;
        usuar.Apellido = txtapellido.Text;
        usuar.Email = txtemail.Text;
        usuar.Profesion = txtprofesion.Text;
        usuar.Usuario = txtusuario.Text;
        usuar.Contraseña = txtcontraseña.Text;

        usuar.modificar();
        lblestado.Text = "Registro modificado";
        */
        if (btnnuevo.Text=="Nuevo") {
            GUIEdicion();
            btnnuevo.Text = "Guardar";
        }


    }

        
    protected void btneliminar_Click(object sender, EventArgs e)
    {
        try
        {
            clsusuario usuar = new clsusuario(0, 0, 0, "", "", "", "", "", "");
            usuar.eliminar(int.Parse(txtci.Text));
            lblestado.Text = "Registro modificado";
        }
        catch {
            lblestado.Text = "No hay coneccion a la base de datos";
        }
    }

    protected void btnbuscar_Click(object sender, EventArgs e)
    {
        try {

            clsusuario usuar = new clsusuario(0, 0, 0, "", "", "", "", "", "");
            if (usuar.existe(int.Parse(txtbuscar.Text.Trim())))
            {
                txtci.Text = usuar.Ci.ToString();
                txtedad.Text = usuar.Edad.ToString();
                rdbacceso.SelectedIndex = rdbacceso.Items.IndexOf(rdbacceso.Items.FindByValue(usuar.Idacceso.ToString()));
                txtnombre.Text = usuar.Nombre;
                txtapellido.Text = usuar.Apellido;
                txtemail.Text = usuar.Email;
                txtprofesion.Text = usuar.Profesion;
                txtusuario.Text = usuar.Usuario;
                //txtcontraseña.Text = usuar.Contraseña;
                txtcontraseña.Attributes.Add("Value", usuar.Contraseña);
                lblestado.Text = "Registro Encontrado";

            }
            else
            {
                lblestado.Text = "No hubieron resultados";
            }
        }
        catch {
            lblestado.Text = "No existe patron de busqueda";
        }
        
    }

    protected void btncancelar_Click(object sender, EventArgs e)
    {
        GUIEdicionTerminada();
    }
}