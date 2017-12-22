<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="<c:url value="/resources/style.css" />" rel="stylesheet" type="text/css"/>
        <meta charset="utf-8" />
        <title>Usuarios Activos</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>

        
        <div class="container">
        <ol class="breadcrumb">
        <li><a href="<c:url value="/home.htm" />">Inicio</a></li>
        <li><a href="<c:url value="/admin.htm" />">admin</a></li>
        <li class="active">Usuarios Activos</li>
        </ol>
                    <div class="modal-content">
            <div class="panel-body">
            <div class="row">
                <h1>Usuarios Activos</h1>
             
                            <table class="table table-bordered table-striped table-hover">
                <thead>
                    <tr>
                        
                        <th>Nombre de usuario</th>
                        <th>Arma</th>
                        <th>Equipo</th>
                        <th>Mesa</th>
                        <th>Sala</th>
                       
                    </tr>
                 </thead>
                <tbody>
                    <c:forEach items="${datos}" var="dato">
                        <tr>
                            <td><c:out value="${dato.username}"/></td>
                            <td><c:out value="${dato.arma}"/></td>
                            <td><c:out value="${dato.equipo}"/></td>
                            <td><c:out value="${dato.meza}"/></td>
                            <td><c:out value="${dato.Cuarto}"/></td>
                            
                        </tr>
                    </c:forEach>
                </tbody>              
            </table>
            </div>

        </div> </div> </div>
    </body>
</html>
