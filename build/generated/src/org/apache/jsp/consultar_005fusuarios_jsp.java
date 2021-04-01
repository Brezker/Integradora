package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

public final class consultar_005fusuarios_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/conexionBD.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
 
    Connection conex=null;
    Statement sql=null;
    
    try{
    Class.forName("org.postgresql.Driver");
    conex=(Connection)DriverManager.getConnection("jdbc:postgresql://localhost:5432/integradora","postgres","root");
    
    sql=conex.createStatement();
    
    //out.println("Conex Bien");
    
    }catch(Exception e){
        out.println("ERROR"+e);

    }

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <!-- Required meta tags -->\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Bootstrap CSS -->\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6\" crossorigin=\"anonymous\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/panel.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.css\"/>  \r\n");
      out.write("    <title>Administración</title>\r\n");
      out.write("  </head>\r\n");
      out.write("  <body style=\"background-color: #e3e3e3\">\r\n");
      out.write("    \r\n");
      out.write("    <header>\r\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\r\n");
      out.write("  <div class=\"container-fluid\">\r\n");
      out.write("    <img src=\"ASSETS/logo_navbar.png\" width=\"200px\">\r\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("    </button>\r\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\" style=\"padding-left: 20px;\">\r\n");
      out.write("      <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("        <li class=\"nav-item\">\r\n");
      out.write("          <a class=\"nav-link active\" aria-current=\"page\" href=\"consultar_usuarios.jsp\" style=\"padding-left: 40px;\"><img src=\"ASSETS/lupa.png\" width=\"30px\"> Visualizar Registros</a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"nav-item\">\r\n");
      out.write("          <a class=\"nav-link active\" aria-current=\"page\" href=\"#\" style=\"padding-left: 40px;\"><img src=\"ASSETS/modificar.png\" width=\"30px\"> Modificar Registros</a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"nav-item\">\r\n");
      out.write("          <a class=\"nav-link active\" aria-current=\"page\" href=\"#\" style=\"padding-left: 40px;\"><img src=\"ASSETS/eliminar.png\" width=\"30px\"> Eliminar Registros</a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"nav-item\">\r\n");
      out.write("          <a class=\"nav-link active\" aria-current=\"page\" href=\"#\" style=\"padding-left: 40px;\"><img src=\"ASSETS/config.png\" width=\"25px\">  Configuración del Evento</a>\r\n");
      out.write("        </li>\r\n");
      out.write("      </ul>\r\n");
      out.write("      <form class=\"d-flex\">\r\n");
      out.write("        <button class=\"btn btn-primary\" type=\"submit\">Cerrar Sesión</button>\r\n");
      out.write("      </form>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</nav>\r\n");
      out.write("    </header>\r\n");
      out.write("      \r\n");
      out.write("      <section>\r\n");
      out.write("          ");

            String qry="SELECT id_usuario, nom_us, app_us, apm_us, email, pass FROM USUARIO where tipo_us='cliente'";
            ResultSet data = sql.executeQuery(qry);
        
      out.write("\r\n");
      out.write("    <div class=\"container\" style=\"margin-top: 30px; background-color: white;\">\r\n");
      out.write("       <div class=\"row\">\r\n");
      out.write("           <div class=\"col-lg-12\" style=\"padding: 50px;\">\r\n");
      out.write("            <table id=\"tablaUsuarios\" class=\"table-striped table-bordered table-responsive\" style=\"width:100%;\">\r\n");
      out.write("                <thead class=\"text-center\">\r\n");
      out.write("                <th>ID</th>\r\n");
      out.write("                <th>Nombre</th>\r\n");
      out.write("                <th>Ap. Paterno</th>\r\n");
      out.write("                <th>Ap. Materno</th>\r\n");
      out.write("                <th>Email</th>\r\n");
      out.write("                <th>Contraseña</th> \r\n");
      out.write("                </thead>\r\n");
      out.write("                <tbody>\r\n");
      out.write("                    ");

                        while(data.next()){
                    
      out.write("\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td style=\"text-align: center; background-color: #0080ff; color: white;\">");
 out.print(data.getString(1)); 
      out.write("</td>\r\n");
      out.write("                        <td style=\"text-align: center;\">");
 out.print(data.getString(2)); 
      out.write("</td>\r\n");
      out.write("                        <td style=\"text-align: center;\">");
 out.print(data.getString(3)); 
      out.write("</td>\r\n");
      out.write("                        <td style=\"text-align: center;\">");
 out.print(data.getString(4)); 
      out.write("</td>\r\n");
      out.write("                        <td style=\"text-align: center;\">");
 out.print(data.getString(5)); 
      out.write("</td>\r\n");
      out.write("                        <td style=\"text-align: center;\">");
 out.print(data.getString(6)); 
      out.write("</td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    ");

                    }
                
      out.write("\r\n");
      out.write("                </tbody>\r\n");
      out.write("            </table>\r\n");
      out.write("           </div>\r\n");
      out.write("       </div> \r\n");
      out.write("    </div>\r\n");
      out.write("          \r\n");
      out.write("      </section>\r\n");
      out.write("      \r\n");
      out.write("      <footer class=\"footer mt-auto py-3 text-white\" style=\"background-color: #3b3b3b;\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("    <p style=\"text-align: center; padding-top: 5px; padding-bottom: 5px;\">Hecho con ♥️ en la Universidad Tecnológica de Tecámac - © 2021 Ticket2GO</p>\r\n");
      out.write("        </div>\r\n");
      out.write("      </footer>\r\n");
      out.write("      \r\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.js\"></script>\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\" integrity=\"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\" integrity=\"sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    \r\n");
      out.write("    <!--    Datatables-->\r\n");
      out.write("    <script type=\"text/javascript\" src=\"https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.js\"></script> \r\n");
      out.write("    <script>\r\n");
      out.write("      $(document).ready(function(){\r\n");
      out.write("         $('#tablaUsuarios').DataTable(); \r\n");
      out.write("      });\r\n");
      out.write("    </script>\r\n");
      out.write("    \r\n");
      out.write("  </body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
