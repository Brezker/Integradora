<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/registro.css">
        <link rel="stylesheet" type="text/css" href="CSS/panel.css">
        
        <script type="text/javascript" src="JS/script.js"></script>
        
    </head>
    <body>
        <h1>Mostrar Usuario a Modificar!</h1>
        <form action="cntrlMostUs.jsp">
            <label class="form-label" style="font-size: 25px;">Id del usuario a Modificar</label> 
            <br>
            <br>
            <input type="text" required name="txtid" class="fadeIn third" placeholder="Ingresa la ID:">
            <br>
            <br>
            <input type="submit" class="fadeIn fourth" value="Mostrar Usuario">
            <br>
            <br>
        </form>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
        
    </body>
</html>
