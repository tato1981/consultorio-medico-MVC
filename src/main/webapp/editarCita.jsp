<%-- 
    Document   : editarCita
    Created on : 29/12/2022, 11:54:05 p. m.
    Author     : duber
--%>

<%@page import="Operaciones.AccionesCitaMedica"%>
<%@page import="Modelo.Cita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>actualizar citas</title>
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
            <h1 class="form-title"> Actualizar Citas</h1>

            <form method="get" name="actualizarDatos" action="actualizarCita">
                <div class="main-user-info">
                    
                    <div class="user-input-box" >
                        
                        <!--codigo java para obtener los datos que sean visializados en este formilario-->
                    
                    <%
                    
                      int id = Integer.parseInt(request.getParameter("id"));
                      Cita cit= AccionesCitaMedica.buscarCitaById(id);
                    
                    %>
                        
                        
                        <label class="nombres"><h5>Nombres</h5></label>
                        <input type="text"
                               id="nombres"
                               name="nombres2"
                               placeholder="Nombres"
                               value="<%=cit.getNombres()%>">

                    </div>

                    <div class="user-input-box">
                        <label class="apellidos"><h5>Apellidos</h5></label>
                        <input type="text"
                               id="apellidos"
                               name="apellidos2"
                               placeholder="Apellidos"
                               value="<%=cit.getApellidos()%>">
                    </div>

                    <div class="user-input-box">
                        <label class="documento"><h5>Tipo de Documento</h5></label>
                        <input type="text"
                               id="documento"
                               name="documento2"
                               placeholder="Cedula Ciudadania"
                               value="<%=cit.getDocumento()%>">
                    </div>

                    <div class="user-input-box">
                        <label class="numero"><h5>Numero de identificacion</h5></label>
                        <input type="text"
                               id="d_identidad"
                               name="d_identidad2"
                               placeholder="numero"
                               value="<%=cit.getD_identidad()%>">
                    </div>
                    
                    <div class="user-input-box">
                        <label class="Telefono"><h5>Telefono</h5></label>
                        <input type="text"
                               id="Telefono"
                               name="telefono2"
                               placeholder="Telefono"
                               value="<%=cit.getTelefono()%>">
                    </div>          
                    
                    <div class="user-input-box">
                        <label class="email"><h5>Email</h5></label>
                        <input type="email"
                               id="email"
                               name="email2"
                               placeholder="Tu E-mail"
                               value="<%=cit.getEmail()%>">
                    </div> 
                    

                    <div class="user-input-box">
                        <label class="servicio_medico"><h5>Servicio medico</h5></label>
                        <input type="text"
                               id="servicio_medico"
                               name="servicio_medico2"
                               placeholder="servicio_medico"
                               value="<%=cit.getServicio_medico()%>">

                    </div>
                    
                    <div class="user-input-box">
                        <label class="servicio_medico"><h5>Especialidad</h5></label>
                        <input type="text"
                               id="especialidad"
                               name="especialidad2"
                               placeholder="especialidad"
                               value="<%=cit.getEspecialidad()%>">

                    </div>
                    
                   
                    
                    <div class="user-input-box">
                        <label class="fecha_cita"><h5>Fecha de la cita</h5></label>
                        <input type="date"
                               id="fecha_cita"
                               name="fecha_cita2"
                               placeholder= "fecha cita"
                               value="<%=cit.getFecha()%>">

                    </div>
                    
                    <div class="user-input-box">
                        <label class="hora_cita"><h5>Hora de la cita</h5></label>
                        <input type="time"
                               id="hora_cita"
                               name="hora_cita2"
                               placeholder= "hora cita"
                               value="<%=cit.getHora()%>">

                    </div>
                               
                    <div class="user-input-box">
                        <label class="nuevpassword"></label>
                        <input type="hidden"                             
                               name="id2"
                               value="<%=cit.getId()%>" >                               
                               
                    </div>           


                    <div class="form-submit-btn">
                        <input type="submit" value="Actualizar cita" >
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


