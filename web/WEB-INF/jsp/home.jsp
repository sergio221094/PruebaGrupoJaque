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
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Bienvenido</h1>
            <div class="account-wall">
                <a href="<c:url value="homeUser.htm" />" class="btn btn-lg btn-primary btn-block" type="submit">
                    Jugadores</a>
                <a href="<c:url value="homeAdmin.htm" />" class="btn btn-lg btn-primary btn-block" type="submit">
                    Administradores</a> 
            </div>
           
        </div>

    </div>
    </body>
</html>
