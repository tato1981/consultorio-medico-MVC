<%-- 
    Document   : editarUsuarios
    Created on : 4/12/2022, 8:43:16 p. m.
    Author     : duber
--%>

<%@page import="Operaciones.AccionesUsuario"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Actualizar Usuarios</title>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <link href="CSS/registro_usuarios.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    </head>
    <body >

        <!-- barra de navegacion-->
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
                    <a href="consultarUsuarios.jsp" >Atras</a>
                    <label for="check" class="esconder-menu">
                        &#215
                    </label>      
                </nav>
            </nav>
        </header>
    <body>
        <div class="container">
            <h1 class="form-title"> Actualizar Registro de Usuarios</h1>
            <form  method="post" name="actualizarDatos" action="actualizarUsuario1"   class="table table-bordered">

                <div class="main-user-info">
                    
                    <!--codigo java para obtener los datos que sean visializados en este formilario-->
                    
                    <%
                    
                      int id = Integer.parseInt(request.getParameter("id"));
                      Usuario usr = AccionesUsuario.buscarUsuarioById(id);
                    
                    %>
                    
                    
                    
                                        
                    <div class="user-input-box">
                        <label class="nombres">Nombres</label>
                        <input type="text"
                               id="nombres"
                               placeholder="Nombre"
                               name="nombres2"
                               value="<%=usr.getNombres()%>">
                    </div>

                    <div class="user-input-box">
                        <label class="apellidos">Apellidos</label>
                        <input type="text"
                               id="apellidos"
                               placeholder="Apellidos"
                               name="apellidos2"
                               value="<%=usr.getApellidos()%>" >
                    </div>

                    <div class="user-input-box">
                        <label class="documento">Documento</label>
                        <input type="text"
                               id="documento"
                               placeholder="Documento"
                               name="d_identidad2"
                               value="<%=usr.getD_identidad()%>">            
                    </div>

                    <div class="user-input-box">
                        <label class="email">E-mail</label>
                        <input type="email"
                               id="email"
                               placeholder="Tu E-mail"
                               name="email2"
                               value="<%=usr.getEmail()%>">
                    </div>


                    <div class="user-input-box">
                        <label class="nuevpassword">Nueva contraseña</label>
                        <input type="password"
                               id="contrasena"
                               placeholder="Nueva contraseña"                             
                               name="contrasena2"
                               value="<%=usr.getContrasena()%>">
                    </div>

                    <div class="user-input-box">
                        <label class="confirmpasswod">Confirmar Contraseña</label>
                        <input type="password"
                               id="confirmar_contrasena"
                               placeholder="Confirmar contraseña"                              
                               name="confirmar_contrasena2"
                               value="<%=usr.getConfirmar_contrasena()%>">
                    </div>  
                    
                    <div class="user-input-box">
                        <label class="nuevpassword"></label>
                        <input type="hidden"                             
                               name="id2"
                               value="<%=usr.getId()%>" >                               
                               
                    </div>

                    <div class="form-submit-btn">
                        
                        
                        <input  type="submit" value="Actualizar Usuario" >
                    </div>
                </div>
            </form> 
           
            
        </div> 
                    
                    
           <!--footer-->

        <div>
            <footer>
                <p><strong> &copy:2022 Slogan Soluciones Informaticas Duberney Obando Cano </strong>  </p>
            </footer>
        </div>
        <!--script src="JS/registrousuarios.js" type="text/javascript"></script>-->          
    </body>
</html>
