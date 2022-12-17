
 
package Controlador;

import Modelo.Usuario;
import Operaciones.validacionesUsuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author duber
 */
public class validarUsuario extends HttpServlet {
    
        validacionesUsuario acc=new validacionesUsuario();
        Usuario usr=new Usuario();
        int r;
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        
        
         String accion=request.getParameter("accion");
         if(accion.equals("Iniciar")){
             
             
             //String nombres=request.getParameter("nombres"); 
             //String apellidos=request.getParameter("apellidos"); 
             //String d_identidad=request.getParameter("d_identidad");
             String email=request.getParameter("email"); 
             String contrasena=request.getParameter("contrasena");
             //String confirmar_contrasena=request.getParameter("confirmar_contrasena"); 
             
             
            //usr.setNombres(nombres);
            //usr.setApellidos(apellidos);
            //usr.setD_identidad(d_identidad); 
            usr.setEmail(email);
            usr.setContrasena(contrasena);
           //usr.setConfirmar_contrasena(confirmar_contrasena);
            
            r = acc.validar(usr);
            
            if(r==1){
               
               //request.getSession().setAttribute("nombres", nombres); 
               //request.getSession().setAttribute("apellidos", apellidos);
               //request.getSession().setAttribute("d_identidad", d_identidad);
               request.getSession().setAttribute("email", email); 
               request.getSession().setAttribute("contrasena", contrasena);
               //request.getSession().setAttribute("confirmar_contrasena", confirmar_contrasena); 
               request.getRequestDispatcher("menuprinusuarios.jsp").forward(request, response);
               
              
               
            }else{
                request.getRequestDispatcher("isesion_usuarios.jsp").forward(request, response);
                 System.out.println("Error al iniciar sesion");
            }
        }else{
             request.getRequestDispatcher("isesion_usuarios.jsp").forward(request, response);
              System.out.println("no se encontro los parametros");
                
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
