<%-- 
    Document   : user
    Created on : 20/12/2017, 02:00:27 PM
    Author     : Sergio Velásquez
--%>


<%@page import="com.GrupoJaque.models.coneDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario</title>
    </head>
    <body>
    <div class="row">
            <div class="container">
        <%  HttpSession sesion = request.getSession();
            String username;
            
            if (sesion.getAttribute("user")!=null) {
                    username=sesion.getAttribute("user").toString();
                    out.print("<h3>Hola: "+username+"</h3>");
                    out.print("<a class='btn btn-sm btn-success' href='homeUser.htm?cerrar=true'>Cerrar sesión</a>");
            }else{
                out.print("<script>location.replace('home.htm');</script>");
            }%>
            <h2>Elije tu grupo</h2>
            <select>
            <%
                  coneDB cn=new coneDB();
                  try {
                          cn.Conectar();
                          String sql="select * from usuario;";
                          cn.st=cn.conec.createStatement();
                          cn.rt=cn.st.executeQuery(sql);
                         while(cn.rt.next()){
                             out.println("<option>"+cn.rt.getString(2)+"</option>");
                         }
                      } catch (Exception e) {
                          out.print(e. toString());
                      }
                  
            
            %>
            


            <h2>Elije tu sala</h2>
            <h2>Elije tu meza</h2>

            </div>
        </div>

    </body>
</html>
