/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.sql.Date;
import java.sql.Time;

/**
 *
 * @author duber
 */
public class Cita {
    
    
    private int id;
    private String fecha;
    private String hora;
    private String nombres;
    private String apellidos;
    private String documento;
    private String d_identidad;
    private String telefono;
    private String email;
    private String servicio_medico;
    private String especialidad;

    public Cita() {
    }

    public Cita(int id) {
        this.id = id;
    }

    public Cita(String fecha, String hora, String nombres, String apellidos, String documento, String d_identidad,  String email, String telefono, String servicio_medico, String especialidad) {
        this.fecha = fecha;
        this.hora = hora;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.documento = documento;
        this.d_identidad = d_identidad;        
        this.email = email;
        this.telefono = telefono;
        this.servicio_medico = servicio_medico;
        this.especialidad = especialidad;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
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

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }
    
    
    public String getD_identidad() {
        return d_identidad;
    }

    public void setD_identidad(String d_identidad) {
        this.d_identidad = d_identidad;
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

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    
    

    
    
}
