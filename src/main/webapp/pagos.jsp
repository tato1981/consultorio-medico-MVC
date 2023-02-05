<%-- 
    Document   : medios_ de_pagos
    Created on : 2/01/2023, 6:54:46 p. m.
    Author     : duber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Medios de pagos</title>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <link href="CSS/registro_pacientes.css" rel="stylesheet" type="text/css"/>
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
                    <a href="./menuprinusuarios.jsp" >Atras</a>
                    <label for="check" class="esconder-menu">
                        &#215
                    </label>      
                </nav>
            </nav>
        </header>

        <!--Formulario registro-->

        <div class="container">
            <h1 class="form-title"> Pagos con Tarjeta Debito/ Credito</h1>
            <form  method="post" name="pago" action="#" >
                <div class="main-user-info">

                    <div class="user-input-box">
                        <label class="valorPagar">Valor a Pagar</label>
                        <input type="number"
                               id="valorPagar"
                               placeholder="Valor a Pagar"
                               name="valorPagar"
                               required>
                    </div>

                    <div class="user-input-box">
                        <label class="nombres">Nombres</label>
                        <input type="text"
                               id="nombres"
                               placeholder="Nombre"
                               name="nombres"
                               required>
                    </div>

                    

                    <div class="user-input-box">
                        <label class="email">Tipo Tarjeta</label>
                        <input type="text"
                               id="tipoTarjeta"
                               placeholder="Credito / Debito"
                               name="tipoTarjeta">
                    </div>
                    
                    <div class="user-input-box">
                        <label class="clase">Clase Tarjeta</label>
                        <input type="text"
                               id="claseTarjeta"
                               placeholder="Mastercard / Visa"
                               name="claseTarjeta">
                    </div>


                    <div class="user-input-box">
                        <label class="numeroTarjeta">Numero Tarjeta</label>
                        <input type="text"
                               id="numeroTarjeta"
                               placeholder="Numero Tarjeta"                             
                               name="numeroTarjeta"
                               required
                               autocomplete="off">
                    </div>
                    
                    <div class="user-input-box">
                        <label class="fechaExpiracion">Vencimiento</label>
                        <input type="text"
                               id="fechaExpiracion"
                               placeholder="MM /YY "                             
                               name="fechaExpiracion"
                               required>
                    </div>                                                                   

                    </div>  

                    <div class="user-input-box">
                        <label class="numeroTarjeta">CVV</label>
                        <input type="tel"
                               id="clave"
                               placeholder="CVV"                             
                               name="ClaveTarjeta"
                               pattern="^[0-9]{4}"
                               required>
                    </div>

                    <div class="form-submit-btn">                       
                        <input  type="submit" value="Continuar con el Pago" name="enviar">
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
