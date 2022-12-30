/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Operaciones;

import Modelo.Cita;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author duber
 */
public class AccionesCitaMedica {
    
    /*
    son todas las opeeraciones o requerimientos 
    funcionales con que el usuario operaro el sistema
    
    registrarcita --> Cita cita
    actualizarCira --> Cita cita
    eliminarcita --> int id
    buscarcita --> int id
    buscarTodaslasCitas -->
     
    */
    
    public static int registarCita (Cita cit){
    
          int estatus = 0;
          
          try{
              //conexion con la base de datps
              Connection con = Conexion.getConnection();
              //sentencia sql
              String sql = "INSERT INTO cita_medica (fecha, hora, nombres, apellidos, documento, d_identidad, telefono, email, servicio_medico, especialidad)  VALUES(?,?,?,?,?,?,?,?,?,?)";
              //prepara la consulta
             PreparedStatement ps = con.prepareStatement(sql);
              
              //getter and setter
              
            ps.setString(1, cit.getFecha());
            ps.setString(2, cit.getHora());
            ps.setString(3, cit.getNombres());
            ps.setString(4, cit.getApellidos());
            ps.setString(5, cit.getDocumento());
            ps.setString(6, cit.getD_identidad());
            ps.setString(7, cit.getTelefono());            
            ps.setString(8, cit.getEmail());
            ps.setString(9, cit.getServicio_medico());
            ps.setString(10, cit.getEspecialidad());
            //
            
            estatus = ps.executeUpdate();
            System.out.print("Registro Exitoso de la cita");
            con.close();            
              
          }catch(Exception e){
               System.out.print("Error al registrar la cita");
               System.out.print(e.getMessage());
          }
    
           return estatus;               
    }
    
    
    public static int actualizarCita (Cita cit){
    
          int estatus = 0;
          
          try{
              //conexion con la base de datps
              Connection con = Conexion.getConnection();
              
              //sentencia sql
             String sql = "UPDATE cita_medica SET fecha=?,  hora=?, nombres=?, apellidos=?, documento=?, d_identidad=?, telefono=?, email=?, servicio_medico=?, especialidad=?  WHERE id=?";
              
              //prepara la consulta
             PreparedStatement ps = con.prepareStatement(sql);
              
              //getter and setter
              
            ps.setString(1, cit.getFecha());
            ps.setString(2, cit.getHora());
            ps.setString(3, cit.getNombres());
            ps.setString(4, cit.getApellidos());
            ps.setString(5, cit.getDocumento());
            ps.setString(6, cit.getD_identidad());
            ps.setString(7, cit.getTelefono());            
            ps.setString(8, cit.getEmail());
            ps.setString(9, cit.getServicio_medico());
            ps.setString(10, cit.getEspecialidad());
             ps.setInt(11, cit.getId());
            
            
                        
            estatus = ps.executeUpdate();  // ejecutar la sentencia
            System.out.print("Actualizacion exitosa de la cita");
            con.close();            
              
          }catch(Exception e){
               System.out.print("Error al actualizar la cita");
               System.out.print(e.getMessage());
          }
    
           return estatus;               
    }
    
    
    public static int borrarCita (int id){
    
          int estatus = 0;
          
          try{
              //conexion con la base de datps
              Connection con = Conexion.getConnection();
              
              //sentencia sql
              String sql = "DELETE FROM cita_medica WHERE id = ?";
              //prepara la consulta
             PreparedStatement ps = con.prepareStatement(sql);
              
              //getter and setter
              
            
            ps.setInt(1, id);
            
            estatus = ps.executeUpdate();
            System.out.print("Borrado exitoso de la cita");
            con.close();            
              
          }catch(Exception e){
               System.out.print("Error al borrar la cita");
               System.out.print(e.getMessage());
          }
    
           return estatus;               
    }
    
    
    public static Cita buscarCitaById (int id){
    
       Cita cit = new Cita();
          
          try{
              //conexion con la base de datps
              Connection con = Conexion.getConnection();
              
              //sentencia sql
              String sql = "SELECT * FROM cita_medica WHERE id=?";
              
              //prepara la consulta
             PreparedStatement ps = con.prepareStatement(sql);
              
              
              ps.setInt(1, id);         
                   
              ResultSet rs= ps.executeQuery();
              
              if(rs.next()){
              
              cit.setId(rs.getInt(1));
              cit.setFecha(rs.getString(2));
              cit.setHora(rs.getString(3));
              cit.setNombres(rs.getString(4));
              cit.setApellidos(rs.getString(5));
              cit.setDocumento(rs.getString(6));
              cit.setD_identidad(rs.getString(7));
              cit.setTelefono(rs.getString(8));              
              cit.setEmail(rs.getString(9));
              cit.setServicio_medico(rs.getString(10));
              cit.setEspecialidad(rs.getString(11));           
              
              }            
                            
            System.out.print("Cita  encontrada1");
            con.close();            
              
          }catch(Exception e){
               System.out.print("Error al encontrar la cita");
               System.out.print(e.getMessage());
          }
    
           return cit;               
    }
    
    
    
    public static List<Cita> buscarAllCitas (){
        List<Cita> lista = new ArrayList<Cita>();               
          
          try{
              //conexion con la base de datps
              Connection con = Conexion.getConnection();
              
              //sentencia sql
              String sql = "select * from cita_medica";
              
              //prepara la consulta
             PreparedStatement ps = con.prepareStatement(sql);
              
              //ejecucion de la consulta                           
              ResultSet rs= ps.executeQuery();
              
              while(rs.next()){
                  
              Cita cit = new Cita();
              
              cit.setId(rs.getInt(1));
              cit.setFecha(rs.getString(2));
              cit.setHora(rs.getString(3));              
              cit.setNombres(rs.getString(4));
              cit.setApellidos(rs.getString(5));
              cit.setDocumento(rs.getString(6));
              cit.setD_identidad(rs.getString(7));
              cit.setTelefono(rs.getString(8));              
              cit.setEmail(rs.getString(9));
              cit.setServicio_medico(rs.getString(10));
              cit.setEspecialidad(rs.getString(11));
              
              lista.add(cit);
              
              }                          
              
            System.out.print("Cita encontrada2");
            con.close();            
              
          }catch(Exception e){
               System.out.print("Error al encontrar la cita");
               System.out.print(e.getMessage());
          }
    
           return lista;               
    }
    
}
