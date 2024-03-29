/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Usuario;
import Operaciones.AccionesUsuario;
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
public class guardarUsuario extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            //variables globales de la clase usuario
            String nom,ape,doc,email,cont,confcont;
            
                   nom=request.getParameter("nombres");
                   ape=request.getParameter("apellidos");
                   doc=request.getParameter("d_identidad");
                   email=request.getParameter("email");
                   cont=request.getParameter("contrasena");
                   confcont=request.getParameter("confirmar_contrasena");
                            
                   //instanciar el Usuario
                   
                   Usuario usr = new Usuario();
                   
                   //enviar los paramentros
                   
                   usr.setNombres(nom);
                   usr.setApellidos(ape);
                   usr.setD_identidad(doc);
                   usr.setEmail(email);
                   usr.setContrasena(cont);
                   usr.setConfirmar_contrasena(confcont);
                   
                   int estatus = 
                   AccionesUsuario.registarUsuario(usr);
                   if(estatus > 0){
                       response.sendRedirect("isesion_usuarios.jsp");
                   
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
