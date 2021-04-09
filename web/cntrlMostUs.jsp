<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexionBD.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
                <link rel="stylesheet" type="text/css" href="CSS/panel.css">
        <title>Modifcar Registro</title>
                <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires",0);
        %>
    </head>
             <%@include file="header.jsp" %>
    <body style="background-color: #e3e3e3">
        <div class="container" style="padding: 57px;">


            <center>
                <%
                    String idus=request.getParameter("txtid");
                    if (idus.equals("1")){
                        response.sendRedirect("mostrarUsuario.jsp");
                    }
                    else{
                    try{
                        if(idus!=null){
                    
                            String qry="SELECT * FROM usuario where id_usuario="+idus+" and tipo_us='cliente'";
                            ResultSet data = sql.executeQuery(qry);
                %>
                <div style="background-color: white;">
                <table class="table table-hover">
                    <tr>
                        <td>Nombre</td>
                        <td>Apellido Paterno</td>
                        <td>Apellido Materno</td>
                        <td>Correo</td>
                        <td>Pass</td>
                    </tr>
                    <tr>
                        <%
                            while(data.next()){
                        %>
                    <tr>
                        <td><% out.print(data.getString(3)); %></td>
                        <td><% out.print(data.getString(4)); %></td>
                        <td><% out.print(data.getString(5)); %></td>
                        <td><% out.print(data.getString(6)); %></td>
                        <td><% out.print(data.getString(7)); %></td>
                    </tr>
                </table>
                    </div>
            </center>
            <h1>Modificar Registro</h1>
            <form action="cntrlModUs.jsp">
                <div class="row">
                    <div class=" form-group col-md-4">
                        <label class="form-label" style="font-size: 25px;">Nombre:</label> 
                        <input value="<% out.print(data.getString(3)); %>" type="text" class="form-control" name="txtnom">
                    </div>
                    <div class="form-group col-md-4">
                        <label class="form-label" style="font-size: 25px;">Apellido Paterno:</label> 
                        <input value="<% out.print(data.getString(4)); %>" type="text" class="form-control" name="txtappat">
                    </div>
                    <div class="form-group col-md-4" style="font-size: 25px;">
                        <label class="form-label">Apellido Materno:</label> 
                        <input value="<% out.print(data.getString(5)); %>" type="text" class="form-control" name="txtapmat">
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class=" form-group col-md-6">
                        <label class="form-label" style="font-size: 25px;">Correo Electrónico:</label> 
                        <input value="<% out.print(data.getString(6)); %>" type="email" class="form-control" name="txtcorreo" readonly="readonly">
                    </div>
                    <div class="form-group col-md-6">
                        <label class="form-label" style="font-size: 25px;">Contraseña:</label>
                        <input value="<% out.print(data.getString(7)); %>" type="text" class="form-control" name="txtpass">
                    </div>
                </div>
                <br>
                <br>
                <input type="submit" class="fadeIn fourth btn btn-primary" value="Modificar Usuario">
            </form>
        </div>


        <%@include file="footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
        <%
                    }
                    }
}catch(Exception e){
        out.println("ERROR"+e);

    }
}
        %>
    </body>
</html>
