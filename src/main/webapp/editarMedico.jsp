
<%@page import="Operaciones.AccionesMedico"%>
<%@page import="Modelo.Medico"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Actualizar Medicos</title>
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
                    <a href="consultarMedicos.jsp" >Atras</a>
                    <label for="check" class="esconder-menu">
                        &#215
                    </label>      
                </nav>
            </nav>
        </header>
    <body>
        <div class="container">
            <h1 class="form-title"> Actualizar Registro Personal Medico</h1>
            <form  method="post" name="actualizarDatos" action="actualizarMedico"   class="table table-bordered">

                <div class="main-user-info">
                    
                    <!--codigo java para obtener los datos que sean visializados en este formilario-->
                    
                    <%
                    
                      int id = Integer.parseInt(request.getParameter("id"));
                      Medico med = AccionesMedico.buscarMedicoById(id);
                    
                    %>
                    
                    
                    
                                        
                    <div class="user-input-box">
                        <label class="nombres">Nombres</label>
                        <input type="text"
                               id="nombres"
                               placeholder="Nombre"
                               name="nombres2"
                               value="<%=med.getNombres()%>">
                    </div>

                    <div class="user-input-box">
                        <label class="apellidos">Apellidos</label>
                        <input type="text"
                               id="apellidos"
                               placeholder="Apellidos"
                               name="apellidos2"
                               value="<%=med.getApellidos()%>" >
                    </div>

                    <div class="user-input-box">
                        <label class="documento">Documento</label>
                        <input type="text"
                               id="documento"
                               placeholder="Documento"
                               name="d_identidad2"
                               value="<%=med.getD_identidad()%>">            
                    </div>

                    <div class="user-input-box">
                        <label class="email">E-mail</label>
                        <input type="email"
                               id="email"
                               placeholder="Tu E-mail"
                               name="email2"
                               value="<%=med.getEmail()%>">
                    </div>
                    
                    <div class="user-input-box">
                        <label class="especialidad">Especialoidad</label>
                        <input type="text"
                               id="especialidad"
                               placeholder="Especialidad"
                               name="especialidad2"
                               value="<%=med.getEspecialidad()%>">
                    </div>


                    <div class="user-input-box">
                        <label class="nuevpassword">Nueva contraseña</label>
                        <input type="password"
                               id="contrasena"
                               placeholder="Nueva contraseña"                             
                               name="contrasena2"
                               value="<%=med.getContrasena()%>">
                    </div>

                    <div class="user-input-box">
                        <label class="confirmpasswod">Confirmar Contraseña</label>
                        <input type="password"
                               id="confirmar_contrasena"
                               placeholder="Confirmar contraseña"                              
                               name="confirmar_contrasena2"
                               value="<%=med.getConfirmar_contrasena()%>">
                    </div>  
                    
                    <div class="user-input-box">
                        <label class="nuevpassword"></label>
                        <input type="hidden"                             
                               name="id2"
                               value="<%=med.getId()%>" >                               
                               
                    </div>

                    <div class="form-submit-btn">
                        
                        
                        <input  type="submit" value="Actualizar Medico" >
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
