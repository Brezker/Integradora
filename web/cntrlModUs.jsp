<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexionBD.jsp" %>

<%
    String nombre=request.getParameter("txtnom");
    String ap=request.getParameter("txtappat");
    String am=request.getParameter("txtapmat");
    String correo=request.getParameter("txtcorreo");
    String contra=request.getParameter("txtpass");
    //out.println("El nombre es: "+nombre);
    //Validar if(capo bacio)

    try{
        if(nombre!=null){
            String qry="update usuario set nom_us='"+nombre+"',app_us='"+ap+"',apm_us='"+am+"',email='"+correo+"',pass='"+contra+"' where email='"+correo+"'";
            sql.executeUpdate(qry);
            out.println("Se modificaron los datos del usuario con el correo: "+correo);
            //response.sendRedirect("consultar_usuarios.jsp");
        }
    }catch(Exception e){
        out.println("ERROR"+e);

    }

%>