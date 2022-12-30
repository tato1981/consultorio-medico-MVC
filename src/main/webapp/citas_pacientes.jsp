<%-- 
    Document   : citas_pacientes
    Created on : 28/12/2022, 3:19:28 p. m.
    Author     : duber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>cita pacientes</title>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <link href="CSS/cita_pacientes.css" rel="stylesheet" type="text/css"/>
        <script src="JS/registropacientes.js" type="text/javascript"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
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
                    <a href="./menuprinusuarios.jsp" >Atras</a>
                    <label for="check" class="esconder-menu">
                        &#215
                    </label>      
                </nav>
            </nav>

        </header>

        <div class="login">
            <h4>Bienvenido<br><strong>${email}</strong></h4>
            <a href="CerrarSesionUsuario">Cerrar Sesion</a>        
        </div>

        <!--Formulario registro-->

        <div class="container">
            <h1 class="form-title"> Cita Pacientes</h1>

            <form method="post" name="registrarCita" action="guardarCita">
                <div class="main-user-info">
                    
                    <div class="user-input-box" >
                        <label class="nombres"><h5>Nombres</h5></label>
                        <input type="text"
                               id="nombres"
                               name="nombres"
                               placeholder="Nombres">

                    </div>

                    <div class="user-input-box">
                        <label class="apellidos"><h5>Apellidos</h5></label>
                        <input type="text"
                               id="apellidos"
                               name="apellidos"
                               placeholder="Apellidos">
                    </div>

                    <div class="user-input-box">
                        <label class="documento"><h5>Tipo de Documento</h5></label>
                        <input type="text"
                               id="documento"
                               name="documento"
                               placeholder="Cedula Ciudadania">
                    </div>

                    <div class="user-input-box">
                        <label class="numero"><h5>Numero de identificacion</h5></label>
                        <input type="text"
                               id="d_identidad"
                               name="d_identidad"
                               placeholder="numero">
                    </div>
                    
                    
                    
                    <div class="user-input-box">
                        <label class="email"><h5>Email</h5></label>
                        <input type="email"
                               id="email"
                               name="email"
                               placeholder="Tu E-mail">
                    </div> 

                    <div class="user-input-box">
                        <label class="Telefono"><h5>Telefono</h5></label>
                        <input type="text"
                               id="Telefono"
                               name="telefono"
                               placeholder="Telefono">
                    </div>          

                    <div class="user-input-box">
                        <label class="servicio_medico"><h5>Servicio medico</h5></label>
                        <input type="text"
                               id="servicio_medico"
                               name="servicio_medico"
                               placeholder="servicio_medico">

                    </div>
                    
                    <div class="user-input-box">
                        <label class="servicio_medico"><h5>Especialidad</h5></label>
                        <input type="text"
                               id="especialidad"
                               name="especialidad"
                               placeholder="especialidad">

                    </div>
                    
                   
                    
                    <div class="user-input-box">
                        <label class="fecha_cita"><h5>Fecha de la cita</h5></label>
                        <input type="date"
                               id="fecha_cita"
                               name="fecha_cita"
                               placeholder= "fecha cita">

                    </div>
                    
                    <div class="user-input-box">
                        <label class="hora_cita"><h5>Hora de la cita</h5></label>
                        <input type="time"
                               id="hora_cita"
                               name="hora_cita"
                               placeholder= "hora cita">

                    </div>


                    <div class="form-submit-btn">
                        <input type="submit" value="Enviar Solicitud cita" name="enviar">
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
    </body>
</html>
