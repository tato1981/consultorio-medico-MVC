/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Paciente;
import Operaciones.AccionesPaciente;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author duber
 */
public class guardarPaciente extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
       //variables globales de la clase usuario
            String nom,ape,doc,fec,email,tel,serv;
            
                   nom=request.getParameter("nombres");
                   ape=request.getParameter("apellidos");
                   doc=request.getParameter("d_identidad");
                   fec=request.getParameter("fecha_nacimiento");
                   email=request.getParameter("email");
                   tel=request.getParameter("telefono");
                   serv=request.getParameter("servicio_medico");
                            
                   //instanciar el Usuario
                   
                   Paciente pac = new Paciente();
                   
                   //enviar los paramentros
                   
                   pac.setNombres(nom);
                   pac.setApellidos(ape);
                   pac.setD_identidad(doc);                   
                   pac.setFecha_nacimiento(fec);
                   pac.setEmail(email);
                   pac.setTelefono(tel);
                   pac.setServicio_medico(serv);
                   
                   int estatus = 
                   AccionesPaciente.registarPaciente(pac);
                   if(estatus > 0){
                       response.sendRedirect("menuprinusuarios.jsp");
                   
                   }else{
                   response.sendRedirect("registro_pacientes.jsp");
                   
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
