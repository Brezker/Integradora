<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Borrar Usuario!</h1>
        <form action="cntrlBorrarUs.jsp">
            <label class="form-label" style="font-size: 25px;">Id del usuario a borrar</label> 
            <br>
            <br>
            <input type="text" required name="txtid" class="fadeIn third" placeholder="Ingresa la ID:">
            <br>
            <br>
            <input type="submit" class="fadeIn fourth" value="Borrar Usuario">
<%@include file="footer.jsp" %>
        </form>
    </body>
</html>
