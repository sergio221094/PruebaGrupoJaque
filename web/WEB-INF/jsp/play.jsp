<%-- 
    Document   : play
    Created on : 22/12/2017, 09:10:29 AM
    Author     : sergi
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="<c:url value="/resources/style.css" />" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <title>Play</title>
    </head>
     <div class="row">
      <div class="container">
    <body>
         <ol class="breadcrumb">
        <li><a href="<c:url value="/home.htm" />">Inicio</a></li>
        <li><a href="javascript:history.go(-1)">User</a></li>
        <li class="active">Play</li>
        </ol>
            <div class="modal-content">
            <div class="panel-body">
                    <IMG SRC="<c:url value="/resources/imagenes/jugando.jpg" />" class="imgPlay">
            </div>
            </div>
    </body>
                </div>
            </div>
</html>
