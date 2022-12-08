/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Operaciones;

import Modelo.Medico;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



/**
 *
 * @author duber
 */
public class AccionesMedico {
    
    /*
    son todas las opeeraciones o requerimientos 
    funcionales con que el usuario operaro el sistema
    
    registrarUsuario --> Usuario usr
    actualizarUsuario --> Usuario usr
    eliminarUsuario --> int id
    buscarUsuario --> int id
    buscarTodoslosUsuarios -->
    verificarUsuario--> documento, contraseña    
    */
    
    public static int registarMedico (Medico med){
    
          int estatus = 0;
          
          try{
              //conexion con la base de datps
              Connection con = Conexion.getConnection();
              //sentencia sql
              String sql = "INSERT INTO medico (nombres, apellidos, d_identidad, email, especialidad, contrasena, confirmar_contrasena) VALUES(?,?,?,?,?,?,?)";
              //prepara la consulta
             PreparedStatement ps = con.prepareStatement(sql);
              
              //getter and setter
              
            ps.setString(1, med.getNombres());
            ps.setString(2, med.getApellidos());
            ps.setString(3, med.getD_identidad());            
            ps.setString(4, med.getEmail());
            ps.setString(5, med.getEspecialidad());
            ps.setString(6, med.getContrasena());
            ps.setString(7, med.getConfirmar_contrasena());
            
            estatus = ps.executeUpdate();
            System.out.print("Registro Exitoso de Usuario");
            con.close();            
              
          }catch(Exception e){
               System.out.print("Error al registrar al medico");
               System.out.print(e.getMessage());
          }
    
           return estatus;               
    }
    
    
    public static int actualizarMedico (Medico med){
    
          int estatus = 0;
          
          try{
              //conexion con la base de datps
              Connection con = Conexion.getConnection();
              
              //sentencia sql
              String sql = "UPDATE medico SET nombres = ?, apellidos = ?, d_identidad = ?, email = ?, especialidad = ?, contrasena = ?, confirmar_contrasena = ?  WHERE id = ?";
              
              //prepara la consulta
             PreparedStatement ps = con.prepareStatement(sql);
              
              //getter and setter
              
            ps.setString(1, med.getNombres());
            ps.setString(2, med.getApellidos());
            ps.setString(3, med.getD_identidad());
            ps.setString(4, med.getEmail());
             ps.setString(5, med.getEspecialidad());
            ps.setString(6, med.getContrasena());
            ps.setString(7, med.getConfirmar_contrasena());
            ps.setInt(8, med.getId());
            
                        
            estatus = ps.executeUpdate();  // ejecutar la sentencia
            System.out.print("Actualizacion exitosa del medico");
            con.close();            
              
          }catch(Exception e){
               System.out.print("Error al actualizar al Medico");
               System.out.print(e.getMessage());
          }
    
           return estatus;               
    }
    
    
    public static int borrarMedico (int id){
    
          int estatus = 0;
          
          try{
              //conexion con la base de datps
              Connection con = Conexion.getConnection();
              
              //sentencia sql
              String sql = "DELETE FROM medico WHERE id = ?";
              //prepara la consulta
             PreparedStatement ps = con.prepareStatement(sql);
              
              //getter and setter
              
            
            ps.setInt(1, id);
            
            estatus = ps.executeUpdate();
            System.out.print("Borrado exitoso del medico");
            con.close();            
              
          }catch(Exception e){
               System.out.print("Error al borrar al Usuario");
               System.out.print(e.getMessage());
          }
    
           return estatus;               
    }
    
    
    public static Medico buscarMedicoById (int id){
    
       Medico med = new Medico();
          
          try{
              //conexion con la base de datps
              Connection con = Conexion.getConnection();
              
              //sentencia sql
              String sql = "SELECT *FROM medico WHERE id=?";
              
              //prepara la consulta
             PreparedStatement ps = con.prepareStatement(sql);
              
              
              ps.setInt(1, id);
              
              ResultSet rs= ps.executeQuery();
              
              if(rs.next()){
              
              med.setId(rs.getInt(1));
              med.setNombres(rs.getString(2));
              med.setApellidos(rs.getString(3));
              med.setD_identidad(rs.getString(4));
              med.setEmail(rs.getString(5));
              med.setEspecialidad(rs.getString(6));
              med.setContrasena(rs.getString(7));
              med.setConfirmar_contrasena(rs.getString(8));             
              
              }            
                            
            System.out.print("Medico encontrado");
            con.close();            
              
          }catch(Exception e){
               System.out.print("Error al encontrar al Medico");
               System.out.print(e.getMessage());
          }
    
           return med;               
    }
    
    
    
    public static List<Medico> buscarAllMedicos (){
        List<Medico> lista = new ArrayList<Medico>();               
          
          try{
              //conexion con la base de datps
              Connection con = Conexion.getConnection();
              
              //sentencia sql
              String sql = "SELECT * FROM medico";
              
              //prepara la consulta
             PreparedStatement ps = con.prepareStatement(sql);
              
              //ejecucion de la consulta                           
              ResultSet rs= ps.executeQuery();
              
              while(rs.next()){
                  
              Medico med = new Medico();
              
              med.setId(rs.getInt(1));
              med.setNombres(rs.getString(2));
              med.setApellidos(rs.getString(3));
              med.setD_identidad(rs.getString(4));
              med.setEmail(rs.getString(5));
              med.setEspecialidad(rs.getString(6));
              med.setContrasena(rs.getString(7));
              med.setConfirmar_contrasena(rs.getString(8));
              lista.add(med);
              
              }                          
              
            System.out.print("Medico encontrado");
            con.close();            
              
          }catch(Exception e){
               System.out.print("Error al encontrar al medico");
               System.out.print(e.getMessage());
          }
    
           return lista;               
    }

    
    
}
