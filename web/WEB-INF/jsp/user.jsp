<%-- 
    Document   : user
    Created on : 20/12/2017, 02:00:27 PM
    Author     : sergi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario</title>
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            String username;
            String contra;
            
            if (sesion.getAttribute("user")!=null) {
                    username=sesion.getAttribute("user").toString();
                    out.print("<h3>Hola: "+username+"</h3>");
                    out.print("<a href='homeUser.htm?cerrar=true'><h5>Cerrar sesión</h5></a>");
            }else{
                out.print("<script>location.replace('home.htm');</script>");
            }
            
            
            %>
    </body>
</html>
