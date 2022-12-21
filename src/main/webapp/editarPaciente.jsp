<%-- 
    Document   : editarPaciente
    Created on : 20/12/2022, 11:16:12 p. m.
    Author     : duber
--%>

<%@page import="Operaciones.AccionesPaciente"%>
<%@page import="Modelo.Paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Actualizar Pacientes</title>
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
                    <a href="consultarPacientes.jsp" >Atras</a>
                    <label for="check" class="esconder-menu">
                        &#215
                    </label>      
                </nav>
            </nav>
        </header>
    <body>
        <div class="container">
            <h1 class="form-title"> Actualizar Registro de Pacientes</h1>
            <form  method="post" name="actualizarDatos" action="actualizarPaciente"   class="table table-bordered">

                <div class="main-user-info">

                    <!--codigo java para obtener los datos que sean visializados en este formilario-->

                    <%

                        int id = Integer.parseInt(request.getParameter("id"));
                        Paciente pac = AccionesPaciente.buscarPacienteById(id);

                    %>




                    <div class="user-input-box">
                        <label class="nombres">Nombres</label>
                        <input type="text"
                               id="nombres"
                               placeholder="Nombre"
                               name="nombres2"
                               value="<%=pac.getNombres()%>">
                    </div>

                    <div class="user-input-box">
                        <label class="apellidos">Apellidos</label>
                        <input type="text"
                               id="apellidos"
                               placeholder="Apellidos"
                               name="apellidos2"
                               value="<%=pac.getApellidos()%>" >
                    </div>

                    <div class="user-input-box">
                        <label class="documento">Documento</label>
                        <input type="text"
                               id="documento"
                               placeholder="Documento"
                               name="d_identidad2"
                               value="<%=pac.getD_identidad()%>">            
                    </div>

                    <div class="user-input-box">
                        <label class="fecha_nacimiento">Fecha nacimiento</label>
                        <input type="date"
                               id="fecha_nacimiento"
                               name="fecha_nacimiento2"
                               placeholder= "fechanacimiento"
                               value="<%=pac.getFecha_nacimiento()%>"> 

                    </div>

                    <div class="user-input-box">
                        <label class="email">E-mail</label>
                        <input type="email"
                               id="email"
                               name="email2"
                               placeholder="Tu E-mail"
                               value="<%=pac.getEmail()%>"> 
                    </div> 

                    <div class="user-input-box">
                        <label class="Telefono">Telefono</label>
                        <input type="text"
                               id="Telefono"
                               name="telefono2"
                               placeholder="Telefono"
                               value="<%=pac.getTelefono()%>"> 
                    </div>          

                    <div class="user-input-box">
                        <label class="servicio_medico">Servicio medico</label>
                        <input type="text"
                               id="servicio_medico"
                               name="servicio_medico2"
                               placeholder="servicio_medico"
                               value="<%=pac.getServicio_medico()%>"> 

                    </div>

                    <div class="user-input-box">
                        <label class="nuevpassword"></label>
                        <input type="hidden"                             
                               name="id2"
                               value="<%=pac.getId()%>" >                               

                    </div>

                    <div class="form-submit-btn">


                        <input  type="submit" value="Actualizar Paciente" >
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

