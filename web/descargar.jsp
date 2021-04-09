<% 
    HttpSession sesion = request.getSession();
if(sesion.getAttribute("cliente") == null){
   response.sendRedirect("index.jsp");
}
else{
}
%>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires",0);
        %>
        <%response.sendRedirect("acceso.pdf");%>