using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pageLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btninicio_Click(object sender, EventArgs e)
    {

        /*
        try
        {
            clsusuario usuar = new clsusuario(0, 0, 0, "", "", "", "", "", "");
            if (usuar.login(txtusuario.Text, txtcontraseña.Text))
            {
                //lblestado.Text = "Validacion Exitosa";

                //cookies de inicio de sesion
                HttpCookie coologin = new HttpCookie("login");
                //coologin["idusuario"] = emp.Idempleado.ToString();
                Session["login"] = true;
                if (chkboxrecordad.Checked)
                {
                    coologin["idusuario"] = emp.Idempleado.ToString();
                    coologin["usuario"] = txtusuario.Text;
                    coologin["clave"] = txtcontraseña.Text;
                    coologin.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(coologin);
                }
                else
                {
                    coologin["usuario"] = "";
                    coologin["clave"] = "";
                    coologin.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(coologin);
                }

                //valida y redirecciona segun nivel de acceso
                if (emp.Idacceso == 1)
                {
                    //menu de administracion. todas las opciones programa
                    Response.Redirect("~/Default.aspx");
                }
                else if (emp.Idacceso == 2)
                {
                    //menu, opciones limitadas.
                    Response.Redirect("~/paginainicio");
                }

            }
            else
            {
                lblestado.Text = "Validacion fallida";
                txtusuario.Focus();
            }
        }
        catch
        {

        }*/

        try
        {
            clsusuario usuar = new clsusuario(0, 0, 0, "", "", "", "", "", "");
            if (usuar.login(txtusuario.Text, txtcontraseña.Text)){

                lblestado.Text = "Validacion exitosa";
                if (usuar.Idacceso == 1) {
                    int ciusuar = usuar.obtenerCi();

                    //clsinformemedico informe= 
                     

                    //lleva menu de administracion

                    Response.Redirect("~/pagehistoriales.aspx?parametro="+ciusuar);
                    //Response.Redirect("~/pagehistoriales.aspx");

                } else if (usuar.Idacceso == 2) {
                    //lleva a menu con opciones limitadas
                    Response.Redirect("~/Default.aspx");
                }

            }
            else{
                lblestado.Text = "Usuario y/o contraseña incorrectas";
                txtusuario.Focus();
            }


        }
        catch
        {

        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}