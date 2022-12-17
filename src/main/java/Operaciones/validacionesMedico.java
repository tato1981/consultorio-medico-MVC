/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Operaciones;

import Modelo.Medico;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



/**
 *
 * @author duber
 */
public class validacionesMedico implements validarMedico{
    
    Connection con;
    Conexion cn=new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public int validarMedico(Medico med) {
        
        int r=0;
         
         
        String sql = "select * from medico where email =? and contrasena=?";
        
        try {
            con=Conexion.getConnection();
            ps=con.prepareStatement(sql);
            //ps.setString(1, med.getNombres());  
            //ps.setString(2, med.getApellidos());  
            //ps.setString(3, med.getD_identidad());
            ps.setString(1, med.getEmail());
            //ps.setString(5, med.getEspecialidad());
            ps.setString(2, med.getContrasena());
            //ps.setString(6, med.getConfirmar_contrasena());  
            rs=ps.executeQuery();
            while(rs.next()){
                
                 r=r+1;
                 
                //med.setNombres(rs.getString("nombres"));
                //med.setApellidos(rs.getString("apellidos"));
                //med.setD_identidad(rs.getString("d_identidad"));
                med.setEmail(rs.getString("email"));
                //med.setContrasena(rs.getString("especialidad"));
                med.setContrasena(rs.getString("contrasena"));
                //med.setConfirmar_contrasena(rs.getString("confirmar_contrasena"));
                System.out.println("Inicio Exitoso");
                
            }
            if(r==1){
                  return 1;
                  
            }else{
                  return 0;
            }
                    
                    
        } catch (Exception e) {
            System.out.println("Error al encontrar correo y contraseña");
            return 0;
        }
        
        
    }

    
    
}
