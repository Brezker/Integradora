<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.Statement" %>

<%@page import="java.util.*" %>

<% 
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
%>