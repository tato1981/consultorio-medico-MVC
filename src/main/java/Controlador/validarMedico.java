/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Medico;
import Operaciones.validacionesMedico;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author duber
 */
public class validarMedico extends HttpServlet {

    validacionesMedico acc= new validacionesMedico();
    Medico med = new Medico();
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
             //String especialidad=request.getParameter("especialidad");
             String contrasena=request.getParameter("contrasena");
             //String confirmar_contrasena=request.getParameter("confirmar_contrasena"); 
             
             
            //med.setNombres(nombres);
            //med.setApellidos(apellidos);
            //med.setD_identidad(d_identidad); 
            med.setEmail(email);
            //med.setEspecialidad(especialidad);
            med.setContrasena(contrasena);
           //usr.setConfirmar_contrasena(confirmar_contrasena);
            
            r = acc.validarMedico(med);
            
            if(r==1){
               
               //request.getSession().setAttribute("nombres", nombres); 
               //request.getSession().setAttribute("apellidos", apellidos);
               //request.getSession().setAttribute("d_identidad", d_identidad);
               request.getSession().setAttribute("email", email); 
               //request.getSession().setAttribute("especialidad", especialidad);
               request.getSession().setAttribute("contrasena", contrasena);
               //request.getSession().setAttribute("confirmar_contrasena", confirmar_contrasena); 
               request.getRequestDispatcher("menuprinmedicos.jsp").forward(request, response);
               
              
               
            }else{
                request.getRequestDispatcher("isesion_medicos.jsp").forward(request, response);
                 System.out.println("Error al iniciar sesion");
            }
        }else{
             request.getRequestDispatcher("isesion_medicos.jsp").forward(request, response);
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
