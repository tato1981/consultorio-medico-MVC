/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Paciente;
import Operaciones.AccionesPaciente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author duber
 */
public class actualizarPaciente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
         //variables globales de la clase usuario
            String nom,ape,doc,fec,email,tel,serv;
            
            int id = Integer.parseInt(request.getParameter("id2"));
            
                   nom=request.getParameter("nombres2");
                   ape=request.getParameter("apellidos2");
                   doc=request.getParameter("d_identidad2");
                   fec=request.getParameter("fecha_nacimiento2");
                   email=request.getParameter("email2");
                   tel=request.getParameter("telefono2");
                   serv=request.getParameter("servicio_medico2");
                            
                   //instanciar el Usuario
                   
                   Paciente pac = new Paciente();
                   
                   //enviar los paramentros
                   
                   pac.setId(id);
                   pac.setNombres(nom);
                   pac.setApellidos(ape);
                   pac.setD_identidad(doc);                   
                   pac.setFecha_nacimiento(fec);
                   pac.setEmail(email);
                   pac.setTelefono(tel);
                   pac.setServicio_medico(serv);
                   
                   int estatus = AccionesPaciente.actualizarPaciente(pac);
                   
                   if(estatus > 0){
                       response.sendRedirect("consultarPaciente.jsp");
                   
                   }else{
                   response.sendRedirect("menuprinadmin.jsp");
                   
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
