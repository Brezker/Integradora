<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login</title>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires",0);
        %>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="CSS/login.css">
    </head>
    <body style="background-image: url(ASSETS/fondo_descarga.png)">
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <!-- Tabs Titles -->
                <!-- Icon -->
                <div class="fadeIn first">
                    <br>
                    <img src="ASSETS/logo.png" width=300px;>
                </div>
                <h2 style="color: black;">¡TODO LISTO PARA EL CONGRESO!</h2>
                <h5>Descarga tu boleto de acceso para el evento (Recuerda que sin él no podrás acceder)</h5>
                <input type="submit" class="fadeIn fourth" value="Descargar">
                <br>
                <a href="index.jsp" style="text-decoration: none;">Cerrar Sesión</a>
                <br>
                <br>
                <!-- Remind Passowrd -->
                <div id="formFooter">
                    <a>Si tienes alguna pregunta, no dudes en contactar a Ticket2GO, o al responsable del evento.</a>
                    <br>
                    <br>
                    <p>Powered by <img src="ASSETS/logo_ticket2go.png" width="100px" style="vertical-align: middle;"></p>
                </div>
            </div>
        </div>
    </body>
    <%@include file="footer.jsp" %>
</html>
