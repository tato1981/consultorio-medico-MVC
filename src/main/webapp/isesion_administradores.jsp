<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>inicio sesion usuarios</title>
    <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
    <link href="CSS/registro_usuarios.css" rel="stylesheet" type="text/css"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
   </head>
<body>

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
             <a href="inicio_registros.html" >Atras</a>
            <label for="check" class="esconder-menu">
              &#215
            </label>      
          </nav>
    </nav>
    
    </header>
    
    <!--Formulario registro-->
     
    
      <div class="container">
       <h1 class="form-title">Inicio sesion administradores</h1>
       <form class="user-form" id="form" method="post" action="/Consultorio-Medico-MVC1/ControladorUsuario" >
         <div class="main-user-info">
                <div class="user-input-box ">
                    <label class="document">Documento</label>
                    <input type="text"
                    id="document"
                    name="document"
                    placeholder="Documento">              
                 
                 </div>

              <div class="user-input-box ">
                  <label class="password">Contraseña</label>
                  <input type="password"
                  id="password"
                  name="password"
                  placeholder="Contraseña">
              </div>

              <div class="recuperar-contraseña">
                <a href="#"><strong>¿Olvide mi contraseña?</strong></a>  
              </div>

                <!--se deja el codigo inactivo por si se requiere implementar input

              <div class="user-input-box">
                  <label class="document">Registro medico</label>
                  <input type="text"
                  id="document"
                  name="document"
                  placeholder="Registro medico">
              </div>

              se deja el codigo inactivo por si se requiere implementar mas input

             <div class="user-input-box">
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
            <input id="btn-iniciar" type="button" onclick="login();" value="Iniciar" >
           </div> 

       </div>
      </form>
    </div>
 
   
    <script src="JS/isesion_administradores.js" type="text/javascript"></script>

   <!--footer-->
      
   <div>
    <footer>
      <p><strong> &copy:2022 Slogan Soluciones Informaticas Duberney Obando Cano </strong>  </p>
   </footer>
  </div> 
   
</body>
</html>

