<%-- 
    Document   : registro_medicos
    Created on : 8/12/2022, 12:07:41 p. m.
    Author     : duber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registro medicos</title>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <link href="CSS/registro_medicos.css" rel="stylesheet" type="text/css"/>
        <script src="JS/registromedicos.js" type="text/javascript"></script>
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
                    <a href="./validacion_registros.html" >Atras</a>
                    <label for="check" class="esconder-menu">
                        &#215
                    </label>      
                </nav>
            </nav>
        </header>

        <!--Formulario registro-->

        <div class="container">
            <h1 class="form-title"> Registro medicos</h1>
            <form method="post" name="registrarMedico" action="guardarMedico"  >
                <div class="main-user-info">
                    <div class="user-input-box">
                        <label class="nombres">Nombres</label>
                        <input type="text"
                               id="nombres"
                               placeholder="Nombre"
                               name="nombres" >
                    </div>

                    <div class="user-input-box">
                        <label class="apellidos">Apellidos</label>
                        <input type="text"
                               id="apellidos"
                               placeholder="Apellidos"
                               name="apellidos">
                    </div>

                    <div class="user-input-box">
                        <label class="documento">Documento</label>
                        <input type="text"
                               id="documento"
                               placeholder="Documento"
                               name="d_identidad">            
                    </div>

                    <div class="user-input-box">
                        <label class="email">E-mail</label>
                        <input type="email"
                               id="email"
                               placeholder="Tu E-mail"
                               name="email">
                    </div>

                    <div class="user-input-box">
                        <label class="especialidad">Especialidad</label>
                        <input type="text"
                               id="especialidad"
                               placeholder="Especialidad"
                               name="especialidad">
                    </div>

                    <div class="user-input-box">
                        <label class="nuevpassword">Nueva contraseña</label>
                        <input type="password"
                               id="nuevpassword"
                               placeholder="Nueva contraseña"
                               name="contrasena">
                    </div>

                    <div class="user-input-box">
                        <label class="confirmpasswod">Confirmar contraseña</label>
                        <input type="password"
                               id="confirmpassword"
                               placeholder="Confirmar contraseña"
                               name="confirmar_contrasena">
                    </div>          

                    <div class="form-submit-btn">
                        <input  type="submit" value="Registrar Medico" name="enviar">
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

