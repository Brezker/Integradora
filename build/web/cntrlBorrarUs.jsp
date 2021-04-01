<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexionBD.jsp" %>

<%
    String idus=request.getParameter("txtid");
    //out.println("El nombre es: "+nombre);
    //Validar if(capo bacio)

    try{
        if(idus!=null){
            String qry="DELETE FROM usuario where id_usuario="+idus+"";
            sql.executeUpdate(qry);
            response.sendRedirect("consultar_usuarios.jsp");
        }
    }catch(Exception e){
        out.println("ERROR"+e);

    }

%>