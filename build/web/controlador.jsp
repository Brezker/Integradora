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
    
    //out.println("El nombre es: "+nombre);
    //Validar if(capo bacio)

    String qryTarj="select id_usuario from tarjeta where nom_propietario='"+nompro+"' and no_tarjeta='"+no_tarj+"' and cvv='"+cvv+"' and mes='"+mes+"' and anio='"+year+"'";
    ResultSet dataTarj = sql.executeQuery(qryTarj);

    if(dataTarj.next()){
        try{
            if(nombre!=null){
                String qryusuario="INSERT INTO usuario(tipo_us,nom_us,app_us,apm_us,email,pass) values('cliente','"+nombre+"','"+ap+"','"+am+"','"+correo+"','"+contra+"')";
                sql.executeUpdate(qryusuario);
                
                //Resta y suma del boleto
                String qrySaldo="select saldo from tarjeta where no_tarjeta="+no_tarj+"";
                ResultSet saldoT = sql.executeQuery(qrySaldo);

                if(saldoT.next()){
                    String saldo = saldoT.getString(1);

                    int saldoI=Integer.parseInt(saldo);
                    int saldo_re;

                    saldo_re = saldoI-1000;

                    out.println(saldo_re);

                    if (saldo_re>=1000) {

                        String qrytarj="UPDATE tarjeta SET saldo = "+saldo_re+" WHERE no_tarjeta = "+no_tarj+"";
                        sql.executeUpdate(qrytarj);

                        String qryAdmin="UPDATE tarjeta SET saldo = saldo+1000 WHERE no_tarjeta = 7893541";
                        sql.executeUpdate(qryAdmin);

                    }else{
                        out.println("Saldo Insuficiente");
                    }

                }else{
                    out.println("Datos de la Trajeta Incorectos");
                }

                response.sendRedirect("index.jsp");
            }
        }catch(Exception e){
            out.println("ERROR: "+e);
        }
    } else {
        //response.sendRedirect("index.jsp");
        out.println("Datos de la tarjeta erroneos");
    }
 %>
 