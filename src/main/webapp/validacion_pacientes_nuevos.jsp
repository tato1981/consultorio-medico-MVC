<%-- 
    Document   : validacion_pacientes_nuevos
    Created on : 15/12/2022, 11:02:56 p. m.
    Author     : duber
--%>

<%@page import="Modelo.Usuario"%>
<%@page import="Operaciones.validacionesUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Validacion pacientes nuevos</title>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <link href="CSS/validacion_pacientes_nuevos.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
        <link rel="stylesheet" href="CSS/isesion_usuarios.css" type="text/css"/>

    </head>
    <body>

        <header>
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
        </header>


        <div class="login">
            <h4>Bienvenido<br><strong>${email}</strong></h4>
            <a href="CerrarSesionUsuario">Cerrar Sesion</a>        
        </div>



        <div class="container">

            <h3> Validacion de pacientes nuevos </h3>
            <div class="contenido-menu-principal">
                <div class="pacientes">
                    <h6><strong>Registrar paciente </strong> </h6><br>
                    <a href="registro_pacientes.jsp" class="boton-saber-mas">Iniciar</a>
                </div>

                <!--<div class="personal_medico">
                 <h6><strong>Personal medico</strong> </h6><br>
                 <a href="./isesion_medicos.html" class="boton-saber-mas">Ingresar</a>
                </div>
    
                 <div id="icono-mobile" >
                  <h6><strong>Eliminar paciente</strong></h6><br>
                  <a href="Eliminar_paciente.jsp"  class="boton-saber-mas">Iniciar</a>
                  </div>-->
            </div>


        </div>


        <div class="ayuda">
            <a href="#"><strong>Ayuda</strong></a>  
        </div>
        <!--footer-->

        <div>
            <footer>
                <p><strong> &copy:2022 Slogan Soluciones Informaticas Duberney Obando Cano </strong>  </p>
            </footer>
        </div>  
    </body>
</html>

