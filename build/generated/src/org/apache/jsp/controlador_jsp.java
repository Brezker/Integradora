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

public final class controlador_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");

    String nombre=request.getParameter("txtnom");
    String ap=request.getParameter("txtappat");
    String am=request.getParameter("txtapmat");
    String correo=request.getParameter("txtcorreo");
    String contra=request.getParameter("txtpass");
    
    String nompro=request.getParameter("txtnomprop");
    String no_tarj=request.getParameter("txtnotarj");
    String cvv=request.getParameter("txtcvv");
    String mes=request.getParameter("txtMes");
    String year=request.getParameter("txtyear");
    
    //out.println("El nombre es: "+nombre);
    //Validar if(capo bacio)

    String qryTarj="select id_usuario from tarjeta where nom_propietario='julian' and no_tarjeta='7864134' and cvv='345' and mes='6' and anio='23'";
    ResultSet dataTarj = sql.executeQuery(qryTarj);

    if(dataTarj.next()){
        
        String tarj = dataTarj.getString(1);
        out.println(tarj);
        
    } else {
        //response.sendRedirect("index.jsp");
        out.println("Error: ");
    }
    
    /*consulta*/
    /*
        String qryid="select id_usuario from usuario where email='"+correo+"'";
        ResultSet data = sql.executeQuery(qryid);
            
        while(data.next()){
            String id_user = data.getString(1);
            out.println(id_user);
        }
    */
    /*
    try{
        if(nombre!=null){
            String qryusuario="INSERT INTO usuario(tipo_us,nom_us,app_us,apm_us,email,pass) values('cliente','"+nombre+"','"+ap+"','"+am+"','"+correo+"','"+contra+"')";
            sql.executeUpdate(qryusuario);
            
            //out.println("usuario registrado");
        }
    }catch(Exception e){
        //out.println("ERROR: "+e);
    }
*/
 
      out.write("\r\n");
      out.write(" ");
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
