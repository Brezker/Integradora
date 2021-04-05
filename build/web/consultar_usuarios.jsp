<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexionBD.jsp" %>
<%@include file="header.jsp" %>
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
  </head>
  <body style="background-color: #e3e3e3">
      <section>
          <%
            String qry="SELECT id_usuario, nom_us, app_us, apm_us, email, pass FROM USUARIO where tipo_us='cliente'";
            ResultSet data = sql.executeQuery(qry);
        %>
    <div class="container" style="margin-top: 30px; background-color: white;">
       <div class="row">
           <div class="col-lg-12" style="padding: 50px;">
            <table id="tablaUsuarios" class="table-striped table-bordered table-responsive" style="width:100%;">
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
        <%@include file="footer.jsp" %>        
      </section>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
    <!--    Datatables-->
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.js"></script> 
    <script>
      $(document).ready(function(){
         $('#tablaUsuarios').DataTable(); 
      });
    </script>
    
  </body>
</html>
