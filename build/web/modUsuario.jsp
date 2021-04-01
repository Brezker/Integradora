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
        <h1>Modificar Usuario!</h1>
        <form action="cntrlMosUs.jsp">
            <div class="row">
                    <div class=" form-group col-md-4">
                        <label class="form-label" style="font-size: 25px;">Nombre:</label> 
                        <input value="" type="text" class="form-control" name="txtnom">
                    </div>
                    <div class="form-group col-md-4">
                        <label class="form-label" style="font-size: 25px;">Apellido Paterno:</label> 
                        <input type="text" class="form-control" name="txtappat">
                    </div>
                    <div class="form-group col-md-4" style="font-size: 25px;">
                        <label class="form-label">Apellido Materno:</label> 
                        <input type="text" class="form-control" name="txtapmat">
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class=" form-group col-md-6">
                        <label class="form-label" style="font-size: 25px;">Correo Electrónico:</label> 
                        <input type="email" class="form-control" name="txtcorreo">
                    </div>
                    <div class="form-group col-md-6">
                        <label class="form-label" style="font-size: 25px;">Contraseña:</label>
                        <input type="password" class="form-control" name="txtpass">
                    </div>
                </div>
            <br>
            <br>
            <input type="submit" class="fadeIn fourth" value="Modificar Usuario">
        </form>
        
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
        
    </body>
</html>
