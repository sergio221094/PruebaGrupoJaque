<%-- 
    Document   : edit
    Created on : 21/12/2017, 10:28:06 AM
    Author     : Sergio Velásquez
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link href="<c:url value="/resources/style.css" />" rel="stylesheet" type="text/css"/>
        <title>Hola desde Spring Web MVC</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="container">
        <ol class="breadcrumb">
        <li><a href="<c:url value="/home.htm" />">Inicio</a></li>
        <li><a href="<c:url value="/admin.htm" />">admin</a></li>
        <li><a href="<c:url value="/adminTodos.htm" />">Todos los usuarios</a></li>
        <li class="active">Editar</li>
        </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">Formulario</div>
                <div class="panel-body">
                   
                        <form:form method="post" commandName="usuario">
                            <h1>Editar</h1>
                            
                            <form:errors path="*" element="div" cssClass="alert alert-danger" />
                            <p>
                                <form:label path="username">Nombre de usuario:</form:label>
                                <form:input path="username" cssClass="form-control" />
                                
                            </p>
                            <p>
                                <form:label path="nombre">Nombre:</form:label>
                                <form:input path="nombre" cssClass="form-control" />
                                
                            </p>
                            
                            <p>
                                <form:label path="correo">Correo electrónico:</form:label>
                                <form:input path="correo"  cssClass="form-control" />
                            </p>                           
                            <p>
                                <form:label path="pass">Contraseña:</form:label>
                                <form:input path="pass" cssClass="form-control" />
                            </p>                          
                            <p>
                                <form:label path="telefono">Teléfono:</form:label>
                                <form:input path="telefono" cssClass="form-control" />
                            </p>
                            <p>
                                <form:label path="arma">Arma</form:label>
                                <form:input path="arma" cssClass="form-control" />
                            </p>
                                                        <p>
                                <form:label path="equipo">Equipo</form:label>
                                <form:input path="equipo" cssClass="form-control" />
                            </p>
                            </p>
                            <p>
                                <form:label path="meza">meza</form:label>
                                <form:input path="meza" cssClass="form-control" />
                            </p>
                            </p>
                            <p>
                                <form:label path="cuarto">cuarto</form:label>
                                <form:input path="cuarto" cssClass="form-control" />
                            </p>
                            <hr />
                            <input type="submit" value="Enviar" class="btn btn-danger" />
                        </form:form>
                            
                </div>
            </div>
        </div>
    </body>
</html>

