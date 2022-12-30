/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Cita;
import Operaciones.AccionesCitaMedica;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.Time;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author duber
 */
public class guardarCita extends HttpServlet {

    
           
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            
            //variables globales de la clase cita
            
            String fec,hor, nom, ape, tdoc, doc, email, tel, serm, espe;
            
                   
                   fec= request.getParameter("fecha_cita");                  
                   hor=request.getParameter("hora_cita");
                   nom=request.getParameter("nombres");
                   ape=request.getParameter("apellidos");
                   tdoc=request.getParameter("documento");
                   doc=request.getParameter("d_identidad");
                   tel=request.getParameter("telefono");
                   email=request.getParameter("email");
                   serm= request.getParameter("servicio_medico");
                   espe=request.getParameter("especialidad");
                   
                            
                   //instanciar el Usuario
                   
                   Cita cit = new Cita();
                   
                   //enviar los paramentros
                   
                   cit.setFecha(fec);
                   cit.setHora(hor);
                   cit.setNombres(nom);
                   cit.setApellidos(ape);
                   cit.setDocumento(tdoc);
                   cit.setD_identidad(doc);
                   cit.setTelefono(tel);
                   cit.setEmail(email);
                   cit.setServicio_medico(serm);
                   cit.setEspecialidad(espe);
                   
                   
                   int estatus = 
                   AccionesCitaMedica.registarCita(cit);
                   if(estatus > 0){
                       response.sendRedirect("menuprinusuarios.jsp");
                   
                   }else{
                   response.sendRedirect("error.jsp");
                   
                   }
            
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
