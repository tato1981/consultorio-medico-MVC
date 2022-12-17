
package Operaciones;

import Modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author duber
 */
public class validacionesUsuario implements validarUsuario {
    
    Connection con;
    Conexion cn=new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public int validar(Usuario usr) {
        
         int r=0;
         
         
        String sql = "select * from usuario where email =? and contrasena=?";
        
        try {
            con=Conexion.getConnection();
            ps=con.prepareStatement(sql);
            //ps.setString(1, usr.getNombres());  
            //ps.setString(2, usr.getApellidos());  
            //ps.setString(3, usr.getD_identidad());
            ps.setString(1, usr.getEmail());  
            ps.setString(2, usr.getContrasena());
            //ps.setString(6, usr.getConfirmar_contrasena());  
            rs=ps.executeQuery();
            while(rs.next()){
                
                 r=r+1;
                 
                //usr.setNombres(rs.getString("nombres"));
                //usr.setApellidos(rs.getString("apellidos"));
                //usr.setD_identidad(rs.getString("d_identidad"));
                usr.setEmail(rs.getString("email"));
                usr.setContrasena(rs.getString("contrasena"));
                //usr.setConfirmar_contrasena(rs.getString("confirmar_contrasena"));
                System.out.println("Inicio Exitoso");
                
            }
            if(r==1){
                  return 1;
                  
            }else{
                  return 0;
            }
                    
                    
        } catch (Exception e) {
            System.out.println("Error al encontrar identidad y contraseña");
            return 0;
        }
        
    }
    
}
