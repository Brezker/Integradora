<% 
    HttpSession sesion = request.getSession();
if(sesion.getAttribute("admin") == null){
   response.sendRedirect("index.jsp");
}
else{
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Usuario</title>
                <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires",0);
        %>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/panel.css">
        <script type="text/javascript" src="JS/confirmaciones.js"></script>

    </head>
    <%@include file="header.jsp" %>
    <body style="background-color: #e3e3e3">
         <div class="container">
            <div class="row" style="padding: 100px;">
                <center>
                    <div id="formContent" style="background-color: white; padding-bottom: 50px;"> 
                        <form name="formbuscarmod" action="cntrlMostUs.jsp" onsubmit="buscar_modif();">
                            <label class="form-label" style="font-size: 25px; padding-top: 30px;">Modificar un registro:</label> 
                            <div align="center" style="padding-top: 20px; padding-bottom: 20px; max-width: 350px;" class="container">
                            <input type="text" required name="txtid" class="form-control" placeholder="Ingresa el ID del registro a modificar:">
                            </div>
                            <input type="submit" class="btn btn-success" style="color: white;" value="Buscar Usuario">
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
