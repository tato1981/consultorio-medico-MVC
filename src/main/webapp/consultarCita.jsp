<%-- 
    Document   : consultarCita
    Created on : 28/12/2022, 8:14:59 p. m.
    Author     : duber
--%>


<%@page import="java.util.Collections"%>
<%@page import="Operaciones.AccionesCitaMedica"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Cita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../softawareCss/lista_medicos.css" rel="stylesheet" type="text/css"/>
        <title>lista de citas</title>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <link href="./CSS/consultarCita.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body >

        <header>
            <nav>
                <div class="logo" >
                    <a href="./index.html"><img src="./img/logoprincipal1.png"></a>
                </div>
                <input type="checkbox" id="check">
                <label for="check" class="mostrar-menu">
                    &#8801
                </label>
                <nav class="menu">
                    <a href="menuprinusuarios.jsp" >Atras</a>
                    <label for="check" class="esconder-menu">
                        &#215
                    </label>      
                </nav>
            </nav>

        </header>

        <div class="container">
            <h4>Todas las Citas</h4>
            <!--<a class="btn btn-success" href="">Agregar Nuevo</a>-->
            
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">FECHA</th>
                        <th class="text-center">HORA</th>
                        <th class="text-center">NOMBRES</th>
                        <th class="text-center">APELLIDOS</th>
                        <th class="text-center">DOCUMENTO</th>
                        <th class="text-center">TELEFONO</th>                     
                        <th class="text-center">SERVICIO MEDICO</th>
                        <th class="text-center">ESPECIALIDAD</th>                         
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                 <%
                  
                    List<Cita> lista = AccionesCitaMedica.buscarAllCitas();
                    Collections.reverse(lista);
                    for(Cita cit : lista){                   
                    
                    
                %>
                <tbody>
                    
                   
                    
                        <td style="visibility:collapse; display:none" class="text-center"><%=cit.getId()%></td>
                        <td class="text-center"><%=cit.getFecha()%></td>
                        <td class="text-center"><%=cit.getHora()%></td>
                        <td class="text-center"><%=cit.getNombres()%></td>
                        <td class="text-center"><%=cit.getApellidos()%></td>
                        <td style="visibility:collapse; display:none" class="text-center"><%=cit.getDocumento()%></td>
                        <td class="text-center"><%=cit.getD_identidad()%></td>
                        <td class="text-center"><%=cit.getTelefono()%></td>
                        <td style="visibility:collapse; display:none" class="text-center"><%=cit.getEmail()%></td>
                        <td class="text-center"><%=cit.getServicio_medico()%></td>
                        <td class="text-center"><%=cit.getEspecialidad()%></td>                        
                                                 
                        <td class="text-center">
                            <a href="editarCita.jsp?id=<%=cit.getId()%>" class="card-link">Editar</a>                                                     
                            <a href="borrarCita?id=<%=cit.getId()%>" class="card-link">Eliminar</a>
                        </td>
                    
                    <%}%>
                </tbody>
            </table>
       
        </div> 
                
           <div class="footer">
            <footer>
                <p><strong> &copy:2022 Slogan Soluciones Informaticas Duberney Obando Cano </strong>  </p>
            </footer>     
    </body>
</html>


