<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexionBD.jsp" %>

<%
    String correo=request.getParameter("txtcorreo");
    String pass=request.getParameter("txtpass");
    String qryCliente="select * from usuario where email='"+correo+"' and pass='"+pass+"' and tipo_us='cliente'";
    String qryAdmin="select * from usuario where email='"+correo+"' and pass='"+pass+"' and tipo_us='administrador'";
    ResultSet dataCliente = sql.executeQuery(qryCliente);
    ResultSet dataAdmin = sql.executeQuery(qryAdmin);
    
    if(dataCliente.next()){
        response.sendRedirect("descargar_pdf.jsp");
    }
    
    else if (dataAdmin.next()){
        response.sendRedirect("consultar_usuarios.jsp");
    }

    else {
        //response.sendRedirect("index.jsp");
        %>
        <script>
                alert("USUARIO Y/O CONTRASEÑA INCORRECTOS");
        </script>
<%
    response.sendRedirect("index.jsp");
    }
%>
