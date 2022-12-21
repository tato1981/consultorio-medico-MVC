/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author duber
 */
public class Paciente {
    
     //variables globales del modelo usuario
    private int id;
     
    private String nombres,apellidos,d_identidad,fecha_nacimiento,email,telefono,servicio_medico;

    public Paciente(int id) {
        this.id = id;
    }

    public Paciente() {
    }
    
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getD_identidad() {
        return d_identidad;
    }

    public void setD_identidad(String d_identidad) {
        this.d_identidad = d_identidad;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }
    
    

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getServicio_medico() {
        return servicio_medico;
    }

    public void setServicio_medico(String servicio_medico) {
        this.servicio_medico = servicio_medico;
    }
    
    
    
}
