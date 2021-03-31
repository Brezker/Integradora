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
  </head>
  <body style="background-color: #e3e3e3">
    
    <header>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <img src="ASSETS/logo_navbar.png" width="200px">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent" style="padding-left: 20px;">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="consultar_usuarios.jsp" style="padding-left: 40px;"><img src="ASSETS/lupa.png" width="30px"> Visualizar Registros</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#" style="padding-left: 40px;"><img src="ASSETS/modificar.png" width="30px"> Modificar Registros</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#" style="padding-left: 40px;"><img src="ASSETS/eliminar.png" width="30px"> Eliminar Registros</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#" style="padding-left: 40px;"><img src="ASSETS/config.png" width="25px">  Configuración del Evento</a>
        </li>
      </ul>
      <form class="d-flex">
        <button class="btn btn-primary" type="submit">Cerrar Sesión</button>
      </form>
    </div>
  </div>
</nav>
    </header>
      
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
          
      </section>
      
      <footer class="footer mt-auto py-3 text-white" style="background-color: #3b3b3b;">
      <div class="container">
    <p style="text-align: center; padding-top: 5px; padding-bottom: 5px;">Hecho con ♥️ en la Universidad Tecnológica de Tecámac - © 2021 Ticket2GO</p>
        </div>
      </footer>
      
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