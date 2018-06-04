using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Descripción breve de clsusuario
/// </summary>
public class clsusuario : clsconexion
{

    string tabla = "tbl_usuario";
    protected string nombre, apellido, usuario, email, profesion , contraseña;
    protected int ci, idacceso, edad;


    public clsusuario(int ci, int idacceso, int edad, string nombre, string apellido ,string usuario, string email, string profesion, string contraseña)
    {
        
        this.ci = ci;
        this.idacceso = idacceso;
        this.edad = edad;
        this.usuario = usuario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
        this.profesion = profesion;
        this.contraseña = contraseña;
    }



    public int obtenerCi(){ return ci;  }

    public int Ci
    {
        set { ci = value;}
        get { return ci; }
    }

    public int Idacceso
    {
        set { idacceso = value; }
        get { return idacceso; }

    }

    public int Edad
    {
        set { edad = value; }
        get { return edad; }

    }

    public string Usuario
    {
        set { usuario = value; }
        get { return usuario; }
    }

    public string Nombre
    {
        set { nombre = value; }
        get { return nombre; }
    }

    public string Apellido
    {
        set { apellido = value; }
        get { return apellido; }
    }

    public string Email
    {
        set { email = value; }
        get { return email; }
    }


    public string Profesion
    {
        set { profesion = value; }
        get { return profesion; }
    }


    public string Contraseña
    {
        set { contraseña = value; }
        get { return contraseña; }
    }

    //metodos de manipulacion de datos
    //agrega un nuevo registro a la BD
    public void agregar()
    {
        conectar(tabla);
        DataRow fila;
        fila = Data.Tables[tabla].NewRow();
        
        fila["ci"] = Ci;
        fila["idacceso"] = Idacceso;
        fila["edad"] = Edad;
        fila["usuario"] = Usuario;
        fila["nombre"] = Nombre;
        fila["apellido"] = Apellido;
        fila["email"] = Email;
        fila["profesion"] = Profesion;
        fila["contraseña"] = Contraseña;

        Data.Tables[tabla].Rows.Add(fila);
        AdaptadorDatos.Update(Data, tabla);
    }

    //Actualiza el registro especificado
    public void modificar()
    {
        conectar(tabla);
        DataRow fila;
        int x = Data.Tables[tabla].Rows.Count - 1;
        for (int i = 0; i <= x; i++)
        {
            fila = Data.Tables[tabla].Rows[i];

            if (int.Parse(fila["ci"].ToString().Trim()) == Ci)
            {
                fila["ci"] = Ci;
                fila["idacceso"] = Idacceso;
                fila["edad"] = Edad;
                fila["usuario"] = Usuario;
                fila["nombre"] = Nombre;
                fila["apellido"] = Apellido;
                fila["email"] = Email;
                fila["profesion"] = Profesion;
                fila["contraseña"] = Contraseña;

                AdaptadorDatos.Update(Data, tabla);
            }
        }

    }



    //verifica si existe el registro
    public bool existe(int valor)
    {
        conectar(tabla);
        DataRow fila;

        int x = Data.Tables[tabla].Rows.Count - 1;
        for (int i = 0; i <= x; i++)
        {
            fila = Data.Tables[tabla].Rows[i];

            if (int.Parse(fila["ci"].ToString().Trim()) == valor)
            {
                Ci = int.Parse(fila["ci"].ToString());
                Idacceso = int.Parse(fila["idacceso"].ToString());
                Edad = int.Parse(fila["edad"].ToString());
                Usuario = fila["usuario"].ToString();
                Nombre = fila["nombre"].ToString();
                Apellido = fila["apellido"].ToString();
                Email = fila["email"].ToString();
                Profesion = fila["profesion"].ToString();
                Contraseña = fila["contraseña"].ToString();
                return true;
            }
        }
        //el objeto no existe
        return false;
    }


    //elimina un registro existente 
    public bool eliminar(int valor)
    {

        conectar(tabla);
        DataRow fila;

        int x = Data.Tables[tabla].Rows.Count - 1;
        for (int i = 0; i <= x; i++)
        {
            fila = Data.Tables[tabla].Rows[i];

            if (int.Parse(fila["ci"].ToString().Trim()) == valor)
            {
                fila = Data.Tables[tabla].Rows[i];
                fila.Delete();
                DataTable tablaborrados;

                tablaborrados = Data.Tables[tabla].GetChanges(DataRowState.Deleted);
                AdaptadorDatos.Update(tablaborrados);
                Data.Tables[tabla].AcceptChanges();
                return true;
            }
        }
        //el objeto no existe
        return false;
    }

    public bool login(string user, string pass)
    {
        conectar(tabla);
        DataRow fila;

        int x = Data.Tables[tabla].Rows.Count - 1;
        for (int i = 0; i <= x; i++)
        {
            fila = Data.Tables[tabla].Rows[i];
            //mayusculas y minusculas lo compara igual con Tolower
            if (fila["usuario"].ToString().Trim().ToLower() == user.Trim().ToLower() &&
                fila["contraseña"].ToString().Trim() == pass.Trim())
            {

                Ci = int.Parse(fila["ci"].ToString());
                Idacceso = int.Parse(fila["idacceso"].ToString());
                Edad = int.Parse(fila["edad"].ToString());
                Usuario = fila["usuario"].ToString();
                Nombre = fila["nombre"].ToString();
                Apellido = fila["apellido"].ToString();
                Email = fila["email"].ToString();
                Profesion = fila["profesion"].ToString();
                Contraseña = fila["contraseña"].ToString();
                return true;
            }

        }
        //el objeto no existe
        return false;
    }


}