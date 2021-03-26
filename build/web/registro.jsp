<%-- 
    Document   : registro
    Created on : 25 mar. 2021, 17:14:35
    Author     : alexi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/registro.css">
        <link rel="stylesheet" type="text/css" href="CSS/panel.css">

        <title>Registro</title>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires",0);
        %>
    </head>
    <body style="background-image: url(ASSETS/fondo_registro.png)">

        <div class="container fadeInDown" style="background-color: white; margin-top: 5px; margin-bottom: 5px; border-radius: 20px; margin-left: auto; margin-right:auto">
            <form action="controlador.jsp" style="padding-left: 20px; padding-right: 20px;">
                <img src="ASSETS/logo.png" width="300px" style="padding-top: 10px; padding-bottom: 10x;">
                <br>
                <h4>Datos personales:</h4>
                <div class="row">
                    <div class=" form-group col-md-4">
                        <label class="form-label" style="font-size: 25px;">Nombre:</label> 
                        <input type="text" class="form-control" required name="txtnom" placeholder="Ejemplo: Carlos">
                    </div>
                    <div class="form-group col-md-4">
                        <label class="form-label" style="font-size: 25px;">Apellido Paterno:</label> 
                        <input type="text" class="form-control" required name="txt_ap_pat" placeholder="Ejemplo: Martínez">
                    </div>
                    <div class="form-group col-md-4" style="font-size: 25px;">
                        <label class="form-label">Apellido Materno:</label> 
                        <input type="text" class="form-control" required name="txt_ap_mat" placeholder="Ejemplo: Ramos">
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class=" form-group col-md-6">
                        <label class="form-label" style="font-size: 25px;">Correo Electrónico:</label> 
                        <input type="email" class="form-control" required name="txtcorreo" placeholder="Ejemplo: correo@dominio.com">
                    </div>
                    <div class="form-group col-md-6">
                        <label class="form-label" style="font-size: 25px;">Contraseña:</label> 
                        <input type="password" class="form-control" required name="txtpass" placeholder="Crea la contraseña de tu cuenta.">
                    </div>
                </div>
                <br>
                <h4>Método de pago:</h4>
                <div class="row">
                    <div class=" form-group col-md-4">
                        <label class="form-label" style="font-size: 25px;">Nombre del propietario:</label> 
                        <input type="text" class="form-control" required name="txtnomprop" placeholder="Ejemplo: Carlos Martínez Ramos">
                    </div>
                    <div class="form-group col-md-4">
                        <label class="form-label" style="font-size: 25px;">Número de Tarjeta:</label> 
                        <input type="text" class="form-control" required name="txt_ap_pat" placeholder="Ingrese los 16 digitos de su tarjeta.">
                    </div>
                    <div class="form-group col-md-4" style="font-size: 25px;">
                        <label class="form-label">CVV:</label> 
                        <input type="text" class="form-control" required name="txt_ap_mat" placeholder="Ingrese los 3 digitos de seguridad de su tarjeta.">
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label class="form-label" style="font-size: 25px;">Mes de vencimiento:</label> 
                        <input type="number" class="form-control" required name="txtMes" placeholder="Ingrese el mes de vencimiento de su tarjeta.">
                    </div>
                    <div class="form-group col-md-4">
                        <label class="form-label" style="font-size: 25px;">Año de vencimiento:</label> 
                        <input type="number" class="form-control" required name="txtyear" placeholder="Ingrese el mes de vencimiento de su tarjeta.">
                    </div>
                </div>
                <br>
                <div class="row" align="center">
                    <div class="form-group col-md-12" style="padding-bottom: 10px;">
                        <input type="submit" class="btn btn-success" value="Realizar compra y registrarse">
                    </div>
                    <a>ó</a>
                    <a href="index.jsp" style="text-decoration: none;">Regresar a la página principal</a>
                </div>
                <br>
            </form>
        </div>

        <footer class="footer mt-auto py-3 text-white" style="background-color: black; opacity: .5;">
            <div class="container">
                <p style="text-align: center; padding-top: 10px; padding-bottom: 5px;">Hecho con ♥️ en la Universidad Tecnológica de Tecámac - © 2021 Ticket2GO</p>
            </div>
        </footer>


        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>

    </body>
</html>