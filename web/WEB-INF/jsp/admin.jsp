<%-- 
    Document   : Admin
    Created on : 20/12/2017, 10:09:14 PM
    Author     : sergi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="<c:url value="/resources/style.css" />" rel="stylesheet" type="text/css"/>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <meta charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <div class="container">

        <ol class="breadcrumb">
        <li><a href="<c:url value="/home.htm" />">Inicio</a></li>
        <li class="active">Admin</li>
        </ol>
            <div class="modal-content">
            <div class="panel-body">
                <%  HttpSession sesion = request.getSession();
                    String username;
                    String tipodecuenta;
                    if (sesion.getAttribute("user")!=null && session.getAttribute("tipodecuenta").toString()=="2") {
                    username=sesion.getAttribute("user").toString();
                    out.print("<a class='btn btn-sm btn-success' href='home.htm?cerrar=true'>Cerrar sesión</a>");
                    }else{
                    out.print("<script>location.replace('home.htm');</script>");
                    }%> 
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Bienvenido Administrador</h1>
            <div class="account-wall">
                <a href="<c:url value="adminTodos.htm"/>" class="btn btn-lg btn-primary btn-block" type="submit">
                    Todos los usuarios</a>
                <a href="<c:url value="adminActivos.htm"/>" class="btn btn-lg btn-primary btn-block" type="submit">
                    Usuarios en linea</a> 
            </div>
           
        </div>

    </div>
</div></div>
</div>


    </body>
</html>
