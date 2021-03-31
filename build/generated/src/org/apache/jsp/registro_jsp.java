package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registro_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <!-- Required meta tags -->\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Bootstrap CSS -->\r\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl\" crossorigin=\"anonymous\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/registro.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/panel.css\">\r\n");
      out.write("        \r\n");
      out.write("        <script type=\"text/javascript\" src=\"JS/script.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <title>Registro</title>\r\n");
      out.write("        ");

            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires",0);
        
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body style=\"background-image: url(ASSETS/fondo_registro.png)\">\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("\r\n");
      out.write("        <div class=\"container fadeInDown\" style=\"background-color: white; margin-top: 5px; margin-bottom: 5px; border-radius: 20px; margin-left: auto; margin-right:auto\">\r\n");
      out.write("            <form name=\"formulario\" action=\"controlador.jsp\" style=\"padding-left: 20px; padding-right: 20px;\">\r\n");
      out.write("                <img src=\"ASSETS/logo.png\" width=\"300px\" style=\"padding-top: 10px; padding-bottom: 10x;\">\r\n");
      out.write("                <br>\r\n");
      out.write("                <h4>Datos personales:</h4>\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\" form-group col-md-4\">\r\n");
      out.write("                        <label class=\"form-label\" style=\"font-size: 25px;\">Nombre:</label> \r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"txtnom\" placeholder=\"Ejemplo: Carlos\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-4\">\r\n");
      out.write("                        <label class=\"form-label\" style=\"font-size: 25px;\">Apellido Paterno:</label> \r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"txtappat\" placeholder=\"Ejemplo: Martínez\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-4\" style=\"font-size: 25px;\">\r\n");
      out.write("                        <label class=\"form-label\">Apellido Materno:</label> \r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"txtapmat\" placeholder=\"Ejemplo: Ramos\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <br>\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\" form-group col-md-6\">\r\n");
      out.write("                        <label class=\"form-label\" style=\"font-size: 25px;\">Correo Electrónico:</label> \r\n");
      out.write("                        <input type=\"email\" class=\"form-control\" name=\"txtcorreo\" placeholder=\"Ejemplo: correo@dominio.com\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-6\">\r\n");
      out.write("                        <label class=\"form-label\" style=\"font-size: 25px;\">Contraseña:</label>\r\n");
      out.write("                        <input type=\"password\" class=\"form-control\" name=\"txtpass\" placeholder=\"Introduce una contraseña mayor a 8 y menor a 20 caracteres contemplando por lo menos una mayuscula, minuscula y un numero.\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <br>\r\n");
      out.write("                <h4>Método de pago:</h4>\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\" form-group col-md-4\">\r\n");
      out.write("                        <label class=\"form-label\" style=\"font-size: 25px;\">Nombre del propietario:</label> \r\n");
      out.write("                        <input type=\"text\" class=\"form-control\"  name=\"txtnomprop\" placeholder=\"Ejemplo: Carlos Martínez Ramos\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-4\">\r\n");
      out.write("                        <label class=\"form-label\" style=\"font-size: 25px;\">Número de Tarjeta:</label> \r\n");
      out.write("                        <input type=\"text\" class=\"form-control\"  name=\"txtnotarj\" placeholder=\"Ingrese los 16 digitos de su tarjeta.\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-4\" style=\"font-size: 25px;\">\r\n");
      out.write("                        <label class=\"form-label\">CVV:</label> \r\n");
      out.write("                        <input type=\"text\" class=\"form-control\"  name=\"txtcvv\" placeholder=\"Ingrese los 3 digitos de seguridad de su tarjeta.\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <br>\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"form-group col-md-4\">\r\n");
      out.write("                        <label class=\"form-label\" style=\"font-size: 25px;\">Mes de vencimiento:</label> \r\n");
      out.write("                        <input type=\"number\" class=\"form-control\"  name=\"txtMes\" placeholder=\"Ingrese el mes de vencimiento de su tarjeta.\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-4\">\r\n");
      out.write("                        <label class=\"form-label\" style=\"font-size: 25px;\">Año de vencimiento:</label> \r\n");
      out.write("                        <input type=\"number\" class=\"form-control\"  name=\"txtyear\" placeholder=\"Ingrese el mes de vencimiento de su tarjeta.\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <br>\r\n");
      out.write("                <div class=\"row\" align=\"center\">\r\n");
      out.write("                    <div class=\"form-group col-md-12\" style=\"padding-bottom: 10px;\">\r\n");
      out.write("                        <input type=\"submit\" class=\"btn btn-success\" onclick=\"return valid_all();\" value=\"Realizar compra y registrarse\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <a>ó</a>\r\n");
      out.write("                    <a href=\"index.jsp\" style=\"text-decoration: none;\">Regresar a la página principal</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <br>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <footer class=\"footer mt-auto py-3 text-white\" style=\"background-color: black; opacity: .5;\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <p style=\"text-align: center; padding-top: 10px; padding-bottom: 5px;\">Hecho con ♥️ en la Universidad Tecnológica de Tecámac - © 2021 Ticket2GO</p>\r\n");
      out.write("            </div>\r\n");
      out.write("        </footer>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js\" integrity=\"sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js\" integrity=\"sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        \r\n");
      out.write("        <style>\r\n");
      out.write("        input::-webkit-input-placeholder {\r\n");
      out.write("            font-size: 12px;\r\n");
      out.write("        }\r\n");
      out.write("        </style>\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
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
