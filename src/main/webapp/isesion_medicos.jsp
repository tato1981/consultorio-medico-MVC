<%-- 
    Document   : isesion_medicos
    Created on : 8/12/2022, 11:09:44 a. m.
    Author     : duber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>inicio sesion medicos</title>
  <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
  <link href="CSS/isesion_medicos.css" rel="stylesheet" type="text/css"/>
  <script src="JS/isesionmmedicos.js" type="text/javascript"></script>
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
             <a href="./inicio_registros.html" >Atras</a>
            <label for="check" class="esconder-menu">
              &#215
            </label>      
          </nav>
    </nav>
    
    </header>
    
    <!--Formulario registro-->
     
    <body>
      <div class="container">
       <h1 class="form-title">Inicio sesion medicos</h1>
       <form class="#" id="form" action="validarMedico">
         <div class="main-user-info">
             
           <div class="user-input-box ">
             <label class="email">Email</label>
             <input type="email"
                    id="email"
                    name="email"
                    placeholder="E-mail">
                    
                    
          </div>

          <div class="user-input-box">
           <label class="password">Contraseña</label>
           <input type="password"
                  id="password"
                  name="contrasena"
                  placeholder="Contraseña">
        </div>

        <div class="recuperar-contraseña">
          <a href="#"><strong>¿Olvide mi contraseña?</strong></a>  
        </div>

        <!--se deja el codigo inactivo por si se requiere implementar contraseña-->

        <!---<div class="user-input-box">
         <label class="document">Registro medico</label>
         <input type="text"
                id="document"
                name="document"
                placeholder="Registro medico">
      </div>

      se deja el codigo inactivo por si se requiere implementar contraseña

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
                 <input id="btn-iniciar" onclick="login();"  type="submit" name="accion"   value="Iniciar" >
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

