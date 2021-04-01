<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header_index.jsp" %>
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
                <!-- Login Form -->
                <form name="formulario" action="validar.jsp">
                    <br>
                    <input type="email" required name="txtcorreo" class="fadeIn second" placeholder="Ingresa tu email:">
                    <input type="password" required name="txtpass" class="fadeIn third" placeholder="Ingresa tu contraseña:">
                    <br>
                    <br>
                    <input type="submit" class="fadeIn fourth" value="Iniciar sesión">
                </form>
<%@include file="footer_index.jsp" %>
<%@include file="footer.jsp" %>
            </div>
        </div>
    </body>
</html>
