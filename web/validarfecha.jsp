<%@page import="java.util.*"%>
<%
    Date fecha_actual = new Date();
    Date fecha_inicio = new Date(121, 3, 1);
    Date fecha_fin = new Date(121, 3, 31);
    if(fecha_actual.before(fecha_inicio)){
    response.sendRedirect("index.jsp");
    }
    else if(fecha_actual.after(fecha_fin)){
        response.sendRedirect("index.jsp");
    }
%>