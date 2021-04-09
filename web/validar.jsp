<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexionBD.jsp" %>

<%
    HttpSession sesion = request.getSession();
    String correo=request.getParameter("txtcorreo");
    String pass=request.getParameter("txtpass");
    //out.println("El nombre es: "+nombre);
    //Validar if(capo bacio)
    String qry="select * from usuario where email='"+correo+"' and pass='"+pass+"'";
    ResultSet data = sql.executeQuery(qry);
    if(data.next()){
        
        String qrytipe="select tipo_us,email from usuario where tipo_us='cliente' and email='"+correo+"';";
        ResultSet tipo_us = sql.executeQuery(qrytipe);
        if(tipo_us.next() && sesion.getAttribute("cliente") == null){
            sesion.setAttribute("cliente", correo);
            response.sendRedirect("descargar_pdf.jsp");
        } else{
            sesion.setAttribute("admin", correo);
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