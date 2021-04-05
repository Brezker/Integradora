<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/panel.css">
        <link rel="stylesheet" type="text/css" href="CSS/login.css">

    </head>
    <body>
        <div class="container">
            <div class="row" style="padding: 150px;">
                <center>
                    <div id="formContent">
                        <h1>Borrar Usuario!</h1>
                        <form action="cntrlBorrarUs.jsp">
                            <label class="form-label" style="font-size: 25px;">Id del usuario a borrar</label> 
                            <br>
                            <br>
                            <input type="text" required name="txtid" class="fadeIn third" placeholder="Ingresa la ID:">
                            <br>
                            <br>
                            <input type="submit" class="fadeIn fourth" value="Borrar Usuario">
                        </form>
                    </div>
                </center>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
