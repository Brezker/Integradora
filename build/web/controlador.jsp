<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexionBD.jsp"%>

<%
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
    
    
    /*consulta*/
    /*
        String qryid="select id_usuario from usuario where email='"+correo+"'";
        ResultSet data = sql.executeQuery(qryid);
            
        while(data.next()){
            String id_user = data.getString(1);
            out.println(id_user);
        }
    */
    
    try{
        if(nombre!=null){
            String qryusuario="INSERT INTO usuario(tipo_us,nom_us,app_us,apm_us,email,pass) values('cliente','"+nombre+"','"+ap+"','"+am+"','"+correo+"','"+contra+"')";
            sql.executeUpdate(qryusuario);
            
            String qryid="select id_usuario from usuario where email='"+correo+"'";
            ResultSet data = sql.executeQuery(qryid);

            while(data.next()){
                String id_user = data.getString(1);
                //out.println(id_user);
            
                String qrytarj="INSERT INTO tarjeta(nom_propietario,no_tarjeta,cvv,mes,anio,id_usuario) values ('"+nompro+"','"+no_tarj+"','"+cvv+"','"+mes+"','"+year+"','"+id_user+"')";
                sql.executeUpdate(qrytarj);
                
                
                response.sendRedirect("index.jsp");
            
            }
            //out.println("usuario registrado");
        }
    }catch(Exception e){
        //out.println("ERROR: "+e);
    }
 %>
 