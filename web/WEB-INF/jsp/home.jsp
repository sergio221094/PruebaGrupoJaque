<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <title>Home</title>
    </head>
    <body>
        <div class="row">
            <div class="container">
                <h1>¡Bienvenido!</h1>
                <p>
                    <a href="<c:url value="homeUser.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Jugadores</a><br><br>
                    <a href="<c:url value="homeAdmin.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span> Administrador</a>
                </p>
            </div>
        </div>
        
    </body>
</html>
