<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="<c:url value="/resources/style.css" />" rel="stylesheet" type="text/css"/>
        <meta charset="utf-8" />
        <title>Todos los usuarios</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>

        
        <div class="container">
        <ol class="breadcrumb">
        <li><a href="<c:url value="/home.htm" />">Inicio</a></li>
        <li><a href="<c:url value="/admin.htm" />">admin</a></li>
        <li class="active">Usuarios Registrados</li>
        </ol>
                    <div class="modal-content">
            <div class="panel-body">
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
                            <a href="<c:url value="edit.htm?id_usuario=${dato.id_usuario}"/>" ><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                            <a href="<c:url value="delete.htm?id_usuario=${dato.id_usuario}"/>" ><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>              
            </table>
            </div>

        </div></div></div>
    </body>
</html>
