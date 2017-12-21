<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <title>Ejemplo de JdbcTemplate</title>
    </head>
    <body>
        <div class="container">
                <ol class="breadcrumb">
                <li><a href="<c:url value="/homeAdmin.htm" />">Home</a></li>
                <li><a href="<c:url value="/admin.htm" />">Admin</a></li>
                <li class="active">Todos los usuarios</li>
                </ol>
            <div class="row">
                <h1>Usuarios Registrados</h1>
             
                            <table class="table table-bordered table-striped table-hover">
                <thead>
                    <tr>
                        
                        <th>Nombre de usuario</th>
                        <th>Nombre</th>
                        <th>Email</th>
                        <th>Contraseña</th>
                        <th>Teléfono</th>
                        <th>Opciones</th>
                    </tr>
                 </thead>
                <tbody>
                    <c:forEach items="${datos}" var="dato">
                        <tr>
                            <td><c:out value="${dato.username}"/></td>
                            <td><c:out value="${dato.nombre}"/></td>
                            <td><c:out value="${dato.correo}"/></td>
                            <td><c:out value="${dato.pass}"/></td>
                            <td><c:out value="${dato.telefono}"/></td>
                            <td>
                            <a href="<c:url value="edit.htm?id=${dato.id}"/>" ><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                            <a href="<c:url value="delete.htm?id=${dato.id}"/>" ><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>              
            </table>
            </div>

        </div>
    </body>
</html>
