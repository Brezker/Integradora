<% 
    HttpSession sesion = request.getSession();
if(sesion.getAttribute("admin") == null){
   response.sendRedirect("index.jsp");
}
else{
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexionBD.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="CSS/panel.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.css"/>  
    <title>Administración</title>
            <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires",0);
        %>
  </head>
         <%@include file="header.jsp" %>
  <body style="background-color: #e3e3e3">
      <section class="container">
          <%
            String qry="SELECT id_usuario, nom_us, app_us, apm_us, email, pass FROM USUARIO where tipo_us='cliente'";
            ResultSet data = sql.executeQuery(qry);
        %>
    <div class="container" style="margin-top: 30px; background-color: white;">
       <div class="row">
           <div class="col-lg-12 container" style="padding: 50px;">
            <table id="tablaUsuarios" class="table-responsive table-striped table-bordered " style="width:100%; background-color: white;">
                <thead class="text-center">
                <th>ID</th>
                <th>Nombre</th>
                <th>Ap. Paterno</th>
                <th>Ap. Materno</th>
                <th>Email</th>
                <th>Contraseña</th> 
                </thead>
                <tbody>
                    <%
                        while(data.next()){
                    %>
                    <tr>
                        <td style="text-align: center; background-color: #0080ff; color: white;"><% out.print(data.getString(1)); %></td>
                        <td style="text-align: center;"><% out.print(data.getString(2)); %></td>
                        <td style="text-align: center;"><% out.print(data.getString(3)); %></td>
                        <td style="text-align: center;"><% out.print(data.getString(4)); %></td>
                        <td style="text-align: center;"><% out.print(data.getString(5)); %></td>
                        <td style="text-align: center;"><% out.print(data.getString(6)); %></td>
                    </tr>
                    <%
                    }
                %>
                </tbody>
            </table>
           </div>
       </div> 
    </div>
      </section>
                <%@include file="footer.jsp" %>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
  </body>

    <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.js"></script> 
    <script>
      $(document).ready(function(){
         $('#tablaUsuarios').DataTable(); 
      });
    </script>
  </body>
</html>
