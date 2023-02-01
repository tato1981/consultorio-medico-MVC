<%-- 
    Document   : menuprinusuario1
    Created on : 16/12/2022, 9:50:36 p. m.
    Author     : duber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Menu principal usuarios</title>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <link href="CSS/menuprinmedicos.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/b168a77a02.js" crossorigin="anonymous"  ></script>
        <link rel="shortcut icon" href="./img/logoprincipal1.png">
    </head>
    <body >

        <header>
            <div id="sideNavigation" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                <h2>MENU</h2>
                <a href="validacion_pacientes_nuevos.jsp">REGISTRO PACIENTES</a>
                <a href="citas_pacientes.jsp">AGENDAR CITA</a>
                <a href="#">ESTADO CITA</a>
                <a href="pagos.jsp">MEDIO DE PAGO</a>
                <a href="consultarCita.jsp">CITAS PROGRAMADAS</a>
                <a href="#">MODULO PACIENTES</a>
                <a href="#">AYUDA</a><br>

            </div>

            <nav class="topnav">
                <a href="CerrarSesionUsuario" class="cerrar-sesion">Cerrar sesion</a>
                <a href="#" onclick="openNav()">
                    <svg width="30" height="30" id="icoOpen">
                    <path d="M0,5 30,5" stroke="#000" stroke-width="5"/>
                    <path d="M0,14 30,14" stroke="#000" stroke-width="5"/>
                    <path d="M0,23 30,23" stroke="#000" stroke-width="5"/>
                    </svg>
                </a>
            </nav>

        </header>

        <div class="login">
            <h4>Bienvenido<br><strong>${email}</strong></h4>
                   
        </div>

        <!--main-->

        <div class="container">

            <h3> MENU PRINCIPAL USUARIOS </h3>
            <div class="contenido-menu-principal">

            </div>
        </div>





        <script src="JS/menuprinmedicos.js" type="text/javascript"></script>

        <!--footer-->

        <div>
            <footer>
                <p><strong> &copy:2022 Slogan Soluciones Informaticas Duberney Obando Cano </strong>  </p>
            </footer>
        </div> 

    </body>
</html>

