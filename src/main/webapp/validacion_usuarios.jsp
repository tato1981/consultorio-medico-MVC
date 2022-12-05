

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>validacion usuario</title>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <link href="CSS/validacionusuarios.css" rel="stylesheet" type="text/css"/>
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
                    <a href="validacion_registros.html" >Atras</a>
                    <label for="check" class="esconder-menu">
                        &#215
                    </label>      
                </nav>
            </nav>

        </header>

        <!--Formulario registro-->

    <body>
        <div class="container">
            <h1 class="form-title"> Validacion usuarios</h1>
            <form>
                
                <div class="main-user-info">
                    <div class="user-input-box">
                        <label class="fullname">Nombres</label>
                        <input type="text"
                               id="fullname"
                               name="fullname"
                               placeholder="Nombre">
                    </div>

                    <div class="user-input-box">
                        <label class="username">Apellidos</label>
                        <input type="text"
                               id="username"
                               name="username"
                               placeholder="Apellidos">
                    </div>

                    <div class="user-input-box">
                        <label class="document">Documento</label>
                        <input type="text"
                               id="document"
                               name="document"
                               placeholder="Documento">
                    </div>

                    <!--se deja el codigo inactivo por si se requiere implementar contraseña-->

                    <!--<div class="user-input-box">
                     <label class="nuevpassword">Nueva contraseña</label>
                     <input type="password"
                            id="nuevpassword"
                            name="nuevpassword"
                            placeholder="Nueva contraseña">
                  </div>
              
                  <div class="user-input-box">
                   <label class="confirmpasswod">Confirmar contraseña</label>
                   <input type="password"
                          id="confirmpasswod"
                          name="confirmpasswod"
                          placeholder="Confirmar contraseña">
                 </div> -->         

                    <div class="form-submit-btn">
                        <input  onclick="validarUsuario();" href="#" type="button" value="Solicitar">

                    </div>              
                
            </form>
                
                
                
                             
                          
       </div> 
                
         

                <script src="JS/validacionusuarios.js" type="text/javascript"></script>
    </body>
   
</html>



