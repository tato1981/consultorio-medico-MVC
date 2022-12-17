


<%@page contentType="text/html" pageEncoding="UTF-8" session="true" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registro pacientes</title>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <link href="CSS/registro_pacientes.css" rel="stylesheet" type="text/css"/>
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
            <h1 class="form-title"> Registro pacientes</h1>

            <form class="formulario" method="POST">
                <div class="main-user-info">
                    <div class="user-input-box">
                        <label class="nombres">Nombres</label>
                        <input type="text"
                               id="nombres"
                               name="nombres"
                               placeholder="Nombres">

                    </div>

                    <div class="user-input-box">
                        <label class="apellidos">Apellidos</label>
                        <input type="text"
                               id="apellidos"
                               name="apellidos"
                               placeholder="Apellidos">
                    </div>

                    <div class="user-input-box">
                        <label class="documento">Documento</label>
                        <input type="text"
                               id="documento"
                               name="d_identidad"
                               placeholder="Documento">

                    </div>

                    <div class="user-input-box">
                        <label class="fecha_nacimiento">Fecha nacimiento</label>
                        <input type="date"
                               id="fecha_nacimiento"
                               name="fecha_nacimiento"
                               placeholder= "fechanacimiento">

                    </div>

                    <div class="user-input-box">
                        <label class="email">E-mail</label>
                        <input type="email"
                               id="email"
                               name="email"
                               placeholder="Tu E-mail">
                    </div> 

                    <div class="user-input-box">
                        <label class="Telefono">Telefono</label>
                        <input type="text"
                               id="Telefono"
                               name="telefono"
                               placeholder="Telefono">
                    </div>          

                    <div class="user-input-box">
                        <label class="servicio_medico">Servicio medico</label>
                        <input type="text"
                               id="servicio_medico"
                               name="servicio_medico"
                               placeholder="servicio_medico">

                    </div>


                    <div class="form-submit-btn">
                        <input type="submit" value="Registrar" name="enviar">
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
