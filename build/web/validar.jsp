<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexionBD.jsp" %>

<%
    String correo=request.getParameter("txtcorreo");
    String pass=request.getParameter("txtpass");
    //out.println("El nombre es: "+nombre);
    //Validar if(capo bacio)
    String qry="select * from usuario where email='"+correo+"' and pass='"+pass+"'";
    ResultSet data = sql.executeQuery(qry);
    if(data.next()){
        response.sendRedirect("descargar_pdf.jsp");
    } else {
        //response.sendRedirect("index.jsp");
        %>
        <script>
                alert("USUARIO Y/O CONTRASEÑA INCORRECTOS");
        </script>
<%
    response.sendRedirect("index.jsp");
    }
%>