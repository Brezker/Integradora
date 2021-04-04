package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class modUsuario_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("        \r\n");
      out.write("        <!-- Bootstrap CSS -->\r\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl\" crossorigin=\"anonymous\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/registro.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/panel.css\">\r\n");
      out.write("        \r\n");
      out.write("        <script type=\"text/javascript\" src=\"JS/script.js\"></script>\r\n");
      out.write("        \r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <h1>Modificar Usuario!</h1>\r\n");
      out.write("        <form action=\"cntrlMosUs.jsp\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                    <div class=\" form-group col-md-4\">\r\n");
      out.write("                        String tujfa=\"Tu prima\";\r\n");
      out.write("                        <label class=\"form-label\" style=\"font-size: 25px;\">Nombre:</label> \r\n");
      out.write("                        <input value=tujfa type=\"text\" class=\"form-control\" name=\"txtnom\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-4\">\r\n");
      out.write("                        <label class=\"form-label\" style=\"font-size: 25px;\">Apellido Paterno:</label> \r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"txtappat\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-4\" style=\"font-size: 25px;\">\r\n");
      out.write("                        <label class=\"form-label\">Apellido Materno:</label> \r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"txtapmat\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <br>\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\" form-group col-md-6\">\r\n");
      out.write("                        <label class=\"form-label\" style=\"font-size: 25px;\">Correo Electrónico:</label> \r\n");
      out.write("                        <input type=\"email\" class=\"form-control\" name=\"txtcorreo\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-6\">\r\n");
      out.write("                        <label class=\"form-label\" style=\"font-size: 25px;\">Contraseña:</label>\r\n");
      out.write("                        <input type=\"password\" class=\"form-control\" name=\"txtpass\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            <br>\r\n");
      out.write("            <br>\r\n");
      out.write("            <input type=\"submit\" class=\"fadeIn fourth\" value=\"Modificar Usuario\">\r\n");
      out.write("        </form>\r\n");
      out.write("        \r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js\" integrity=\"sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js\" integrity=\"sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        \r\n");
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
