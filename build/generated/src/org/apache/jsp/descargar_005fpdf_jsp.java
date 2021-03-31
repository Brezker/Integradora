package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class descargar_005fpdf_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <!-- Required meta tags -->\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("        <title>Login</title>\r\n");
      out.write("        ");

            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires",0);
        
      out.write("\r\n");
      out.write("        <!-- Bootstrap CSS -->\r\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1\" crossorigin=\"anonymous\">\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/login.css\">\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body style=\"background-image: url(ASSETS/fondo_descarga.png)\">\r\n");
      out.write("        <div class=\"wrapper fadeInDown\">\r\n");
      out.write("            <div id=\"formContent\">\r\n");
      out.write("                <!-- Tabs Titles -->\r\n");
      out.write("\r\n");
      out.write("                <!-- Icon -->\r\n");
      out.write("                <div class=\"fadeIn first\">\r\n");
      out.write("                    <br>\r\n");
      out.write("                    <img src=\"ASSETS/logo.png\" width=300px;>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <h2 style=\"color: black;\">¡TODO LISTO PARA EL CONGRESO!</h2>\r\n");
      out.write("                <h5>Descarga tu boleto de acceso para el evento (Recuerda que sin él no podrás acceder)</h5>\r\n");
      out.write("                <input type=\"submit\" class=\"fadeIn fourth\" value=\"Descargar\">\r\n");
      out.write("                <br>\r\n");
      out.write("                <a href=\"index.jsp\" style=\"text-decoration: none;\">Cerrar Sesión</a>\r\n");
      out.write("                <br>\r\n");
      out.write("                <br>\r\n");
      out.write("                <!-- Remind Passowrd -->\r\n");
      out.write("                <div id=\"formFooter\">\r\n");
      out.write("                    <a>Si tienes alguna pregunta, no dudes en contactar a Ticket2GO, o al responsable del evento.</a>\r\n");
      out.write("                    <br>\r\n");
      out.write("                    <br>\r\n");
      out.write("                    <p>Powered by <img src=\"ASSETS/logo_ticket2go.png\" width=\"100px\" style=\"vertical-align: middle;\"></p>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
