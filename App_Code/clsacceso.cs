using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// clase del objeto acceso
/// </summary>
public class clsacceso : clsconexion
{
    //declarar las variables glovales
    string tabla = "tbl_acceso";
    protected string usuario, contraseña;
    protected int id, idusuario, tipo;



    public clsacceso(int id, int idusuario,int tipo, string usuario, string contraseña)
    {
        this.id = id;
        this.idusuario = idusuario;
        this.usuario = usuario;
        this.contraseña = contraseña;
        this.tipo = tipo;
              
    }

    //metodos de la clase
    public int Idacceso
    {
        set { id = value; }
        get { return id; }
    }
    public int Idusuario
    {
        set { idusuario = value; }
        get { return idusuario; }
    }
    
    public string Usuario
    {
        set { usuario = value; }
        get { return usuario; }
    }
    public string Contraseña
    {
        set { contraseña = value; }
        get { return contraseña; }
    }

    public int Tipo
    {
        set { tipo = value; }
        get { return tipo; }
    }

    //metodos de manipulacion de datos
    //agrega un nuevo registro a la BD
    /*
    public void agregar()
    {
        conectar(tabla);
        DataRow fila;
        fila = Data.Tables[tabla].NewRow();
        fila["id"] = Idacceso;
        fila["id_usuario"] = Idusuario;
        fila["usuario"] = Usuario;
        fila["contraseña"] = Contraseña;
        fila["tipo"] = Tipo;

        Data.Tables[tabla].Rows.Add(fila);
        AdaptadorDatos.Update(Data, tabla);
    }
    */



}