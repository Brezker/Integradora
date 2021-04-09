<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/panel.css">

        <script type="text/javascript" src="JS/script.js"></script>

    </head>
    <%@include file="header.jsp" %>
    <body style="background-color: #e3e3e3">
        <div class="container">
            <div class="row" style="padding: 50px;">
                <center>
                    <div id="formContent" style="background-color: white;">
                        <form action="">
                            <h3 style="padding-top: 20px;">Fecha de venta:</h3>
                            <br>
                                    <div class="row" style="padding: 30px;">
                                        <label class="form-label" style="font-size: 25px;">Inicio:</label> 
                                        <div class="col-md-4">
                                            <input type="text" required name="txti" class="form-control" placeholder="Día:">
                                        </div>
                                        <div class="col-md-4">
                                            <input type="text" required name="txti" class="form-control" placeholder="Mes:">
                                        </div>
                                         <div class="col-md-4">
                                            <input type="text" required name="txti" class="form-control" placeholder="Año:">
                                        </div>
                                    </div>
                            
                            <label class="form-label" style="font-size: 25px;">Fin:</label> 
                            <br>
                            <input type="text" required name="txti" class="fadeIn third" placeholder="Día:">
                            <br>
                            <input type="text" required name="txti" class="fadeIn third" placeholder="Mes:">
                            <br>
                            <input type="text" required name="txti" class="fadeIn third" placeholder="Año:">
                            <br>
                            <br>
                            <input type="submit" class="btn btn-warning" style="color: white;" value="Confirmar fecha">
                            <br>
                            <br>
                        </form>
                    </div>
                </center>
            </div>
        </div>
        <%@include file="footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
    </body>
</html>