<%-- 
    Document   : consultarUsuario
    Created on : 4/12/2022, 7:42:57 p. m.
    Author     : duber
--%>

<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="Operaciones.AccionesUsuario"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../softawareCss/lista_medicos.css" rel="stylesheet" type="text/css"/>
        <title>lista usuarios</title>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <link href="CSS/consultarUsuarios.css" rel="stylesheet" type="text/css"/>
        <script src="softwarejs/registro_pacientes.js" type="text/javascript"></script>
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
                    <a href="menuprinadmin.html" >Atras</a>
                    <label for="check" class="esconder-menu">
                        &#215
                    </label>      
                </nav>
            </nav>

        </header>

        <div class="container">
            <h3>Todos los Usuarios</h3>
            <!--<a class="btn btn-success" href="registro_pacientes_admin.jsp">Agregar Nuevo</a>-->
            
            <table class="table table-bordered">
                <thead>
                    <tr>
                        
                        <th class="text-center">NOMBRES</th>
                        <th class="text-center">APELLIDOS</th>
                        <th class="text-center">DOCUMENTO</th>
                        <th class="text-center">EMAIL</th>                        
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                 <%
                  
                    List<Usuario> lista = AccionesUsuario.buscarAllUsuarios();
                    Collections.reverse(lista);
                    for(Usuario usr : lista){                   
                    
                    
                %>
                <tbody>
                    
                   
                    
                        <td style="visibility:collapse; display:none" class="text-center"><%=usr.getId()%></td>
                        <td class="text-center"><%=usr.getNombres()%></td>
                        <td class="text-center"><%=usr.getApellidos()%></td>
                        <td class="text-center"><%=usr.getD_identidad()%></td>
                        <td class="text-center"><%=usr.getEmail()%></td>                        
                        <td style="visibility:collapse; display:none" class="text-center"><%=usr.getContrasena()%></td>
                        <td style="visibility:collapse; display:none" class="text-center"><%=usr.getConfirmar_contrasena()%>  </td>
                         
                        <td class="text-center">
                            <a href="editarUsuario.jsp?id=<%=usr.getId()%>" class="card-link">Editar</a>                                                     
                            <a href="borrarUsuario?id=<%=usr.getId()%>" class="card-link">Eliminar</a>
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
