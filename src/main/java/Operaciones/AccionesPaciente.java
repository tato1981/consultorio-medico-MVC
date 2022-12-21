/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Operaciones;

import Modelo.Paciente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author duber
 */
public class AccionesPaciente {
    
    public static int registarPaciente (Paciente pac){
    
          int estatus = 0;
          
          try{
              //conexion con la base de datps
              Connection con = Conexion.getConnection();
              //sentencia sql
              String sql = "INSERT INTO paciente (nombres, apellidos, d_identidad, fecha_Nacimiento, email, telefono, servicio_medico) VALUES(?,?,?,?,?,?,?)";
              //prepara la consulta
             PreparedStatement ps = con.prepareStatement(sql);
              
              //getter and setter
              
            ps.setString(1, pac.getNombres());
            ps.setString(2, pac.getApellidos());
            ps.setString(3, pac.getD_identidad());
            ps.setString(4, pac.getFecha_nacimiento());
            ps.setString(5, pac.getEmail());
            ps.setString(6, pac.getTelefono());
            ps.setString(7, pac.getServicio_medico());
            
            estatus = ps.executeUpdate();
            System.out.print("Registro Exitoso del paciente");
            con.close();            
              
          }catch(Exception e){
               System.out.print("Error al registrar al paciente");
               System.out.print(e.getMessage());
          }
    
           return estatus;               
    }
    
    
    public static int actualizarPaciente (Paciente pac){
    
          int estatus = 0;
          
          try{
              //conexion con la base de datps
              Connection con = Conexion.getConnection();
              
              //sentencia sql
              String sql = "UPDATE paciente SET nombres = ?, apellidos = ?, d_identidad = ?,fecha_nacimiento=?, email = ?, telefono = ?, servicio_medico = ?  WHERE id = ?";
              
              //prepara la consulta
             PreparedStatement ps = con.prepareStatement(sql);
              
              //getter and setter
              
            ps.setString(1, pac.getNombres());
            ps.setString(2, pac.getApellidos());
            ps.setString(3, pac.getD_identidad());
            ps.setString(4, pac.getFecha_nacimiento());
            ps.setString(5, pac.getEmail());
            ps.setString(6, pac.getTelefono());
            ps.setString(7, pac.getServicio_medico());
            ps.setInt(8, pac.getId());
            
                        
            estatus = ps.executeUpdate();  // ejecutar la sentencia
            System.out.print("Actualizacion exitosa del paciente");
            con.close();            
              
          }catch(Exception e){
               System.out.print("Error al actualizar al paciente");
               System.out.print(e.getMessage());
          }
    
           return estatus;               
    }
    
    
    public static int borrarPaciente (int id){
    
          int estatus = 0;
          
          try{
              //conexion con la base de datps
              Connection con = Conexion.getConnection();
              
              //sentencia sql
              String sql = "DELETE FROM paciente WHERE id = ?";
              //prepara la consulta
             PreparedStatement ps = con.prepareStatement(sql);
              
              //getter and setter
              
            
            ps.setInt(1, id);
            
            estatus = ps.executeUpdate();
            System.out.print("Borrado exitoso del paciente");
            con.close();            
              
          }catch(Exception e){
               System.out.print("Error al borrar al paciente");
               System.out.print(e.getMessage());
          }
    
           return estatus;               
    }
    
    
    public static Paciente buscarPacienteById (int id){
    
       Paciente pac = new Paciente();
          
          try{
              //conexion con la base de datps
              Connection con = Conexion.getConnection();
              
              //sentencia sql
              String sql = "SELECT *FROM paciente WHERE id=?";
              
              //prepara la consulta
             PreparedStatement ps = con.prepareStatement(sql);
              
              
              ps.setInt(1, id);
              
              ResultSet rs= ps.executeQuery();
              
              if(rs.next()){
              
              pac.setId(rs.getInt(1));
              pac.setNombres(rs.getString(2));
              pac.setApellidos(rs.getString(3));
              pac.setD_identidad(rs.getString(4));
              pac.setFecha_nacimiento(rs.getString(5));
              pac.setEmail(rs.getString(6));
              pac.setTelefono(rs.getString(7));
              pac.setServicio_medico(rs.getString(8));             
              
              }            
                            
            System.out.print("Paciente encontrado");
            con.close();            
              
          }catch(Exception e){
               System.out.print("Error al encontrar al paciente");
               System.out.print(e.getMessage());
          }
    
           return pac;               
    }
    
    
    
    public static List<Paciente> buscarAllPacientes (){
        List<Paciente> lista = new ArrayList<Paciente>();               
          
          try{
              //conexion con la base de datps
              Connection con = Conexion.getConnection();
              
              //sentencia sql
              String sql = "SELECT * FROM paciente";
              
              //prepara la consulta
             PreparedStatement ps = con.prepareStatement(sql);
              
              //ejecucion de la consulta                           
              ResultSet rs= ps.executeQuery();
              
              while(rs.next()){
                  
              Paciente pac = new Paciente();
              
              pac.setId(rs.getInt(1));
              pac.setNombres(rs.getString(2));
              pac.setApellidos(rs.getString(3));
              pac.setD_identidad(rs.getString(4));
              pac.setFecha_nacimiento(rs.getString(5));
              pac.setEmail(rs.getString(6));
              pac.setTelefono(rs.getString(7));
              pac.setServicio_medico(rs.getString(8));
              lista.add(pac);
              
              }                          
              
            System.out.print("paciente encontrado");
            con.close();            
              
          }catch(Exception e){
               System.out.print("Error al encontrar al paciente");
               System.out.print(e.getMessage());
          }
    
           return lista;               
    }
    
}
