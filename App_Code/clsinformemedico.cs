using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Descripción breve de clsinformemedico
/// </summary>
public class clsinformemedico : clsconexion
{

    string tabla = "tbl_historialmedico";
    protected string id_usuario, nombre, doctor, descripcion;
    protected int id;
    private DateTime fecha;

    public clsinformemedico(int id, string id_usuario, string nombre, string doctor, string descripcion, DateTime fecha)
    {
        this.id = id;
        this.id_usuario = id_usuario;
        this.nombre = nombre;
        this.doctor = doctor;
        this.descripcion = descripcion;
        this.fecha = fecha;
    }


    public int Id
    {
        set { id = value; }
        get { return id; }
    }

    public string Idusuario
    {
        set { id_usuario = value; }
        get { return id_usuario; }

    }

    public string Nombre
    {
        set { nombre = value; }
        get { return nombre; }

    }

    public string Doctor
    {
        set { doctor = value; }
        get { return doctor;}
    }

    public string Descripcion
    {
        set { descripcion = value; }
        get { return descripcion; }
    }
    public DateTime Fecha
    {
        set { fecha = value; }
        get { return fecha; }
    }


    public void agregar()
    {
        conectar(tabla);
        DataRow fila;
        fila = Data.Tables[tabla].NewRow();

        fila["id"] = Id;
        fila["id_usuario"] = Idusuario;
        fila["nombre"] = Nombre;
        fila["doctor"] = Doctor;
        fila["descripcion"] = Descripcion;
        fila["fecha"] = Fecha;

        Data.Tables[tabla].Rows.Add(fila);
        AdaptadorDatos.Update(Data, tabla);
    }


    public void modificar()
    {
        conectar(tabla);
        DataRow fila;
        int x = Data.Tables[tabla].Rows.Count - 1;
        for (int i = 0; i <= x; i++)
        {
            fila = Data.Tables[tabla].Rows[i];

            if (int.Parse(fila["id_usuario"].ToString().Trim()) == Id)
            {
                fila["id"] = Id;
                fila["id_usuario"] = Idusuario;
                fila["nombre"] = Nombre;
                fila["doctor"] = Doctor;
                fila["descripcion"] = Descripcion;

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

            if (int.Parse(fila["id_usuario"].ToString().Trim()) == valor)
            {
                

                Id = int.Parse(fila["id"].ToString());
                Idusuario = fila["id_usuario"].ToString();
                Nombre = fila["nombre"].ToString();
                Doctor = fila["doctor"].ToString();
                Descripcion = fila["descripcion"].ToString();
                
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

            if (int.Parse(fila["id_usuario"].ToString().Trim()) == valor)
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

        
}