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
        <title>Eliminar Usuarios</title>
                <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires",0);
        %>
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
                        <form name="formborrar" action="cntrlBorrarUs.jsp" class="container">
                            <label class="form-label" style="font-size: 25px; padding-top: 30px;">Eliminar un registro:</label> 
                            <div align="center" style="padding-top: 20px; padding-bottom: 20px; max-width: 300px;">
                            <input type="text" required name="txtid" class="form-control" placeholder="Ingresa el ID del registro a eliminar:">
                            </div>
                            <input type="submit" class="btn btn-danger" onclick="return borrar();" value="Borrar Usuario">
                        </form>
                    </div>
                </center>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    </body>
</html>