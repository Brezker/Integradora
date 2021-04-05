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
        
        String qrytipe="select tipo_us,email from usuario where tipo_us='cliente' and email='"+correo+"';";
        ResultSet tipo_us = sql.executeQuery(qrytipe);
        if(tipo_us.next()){
            response.sendRedirect("descargar_pdf.jsp");
        } else {
            response.sendRedirect("consultar_usuarios.jsp");
        }
        
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