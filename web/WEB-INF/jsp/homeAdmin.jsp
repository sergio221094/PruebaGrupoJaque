<%-- 
    Document   : homeAdmin
    Created on : 19/12/2017, 08:34:00 PM
    Author     : Sergio Velásquez
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.GrupoJaque.models.Logueo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <title>Login administrado</title>
    </head>
    <body>

<div class="container">
    <ol class="breadcrumb">
    <li><a href="<c:url value="/home.htm" />">Inicio</a></li>
    <li class="active">Login administrador</li>
    </ol>
<div class="col-md-12">
    <div class="modal-dialog" style="margin-bottom:0">
        <div class="modal-content">
                    <div class="panel-heading">
                        <h3 class="panel-title">Inicia Sesión</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            <fieldset>
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Nombre de usuario" name="txtusername" type="text" >
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Contraseña" name="txtpass" type="password" value="">
                                </div>
                                <div class="checkbox">

                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" name="btnIngresar" value="Ingresar" class="btn btn-sm btn-success"/>
                              
                            </fieldset>
                        </form>
                        <%
                      Logueo op = new Logueo();
                      if (request.getParameter("btnIngresar")!=null) {
                               String username=request.getParameter("txtusername"); 
                               String contra=request.getParameter("txtpass");
                              switch(op.logearAdmin(username, contra)){
                                  case 1:
                                      HttpSession sesion = request.getSession();
                                      sesion.setAttribute("user", username);
                                      response.sendRedirect("admin.htm");
                                      break;
                                  default:
                                      out.write("Usuario o contraseña incorrectos");
                                  break;
                              }
                          }
                      if(request.getParameter("cerrar")!=null){
                          session.invalidate();
                          
                      }
                      %>        
                    </div>
                </div>
    </div>
</div>
<hr>

</div>

    </body>
</html>
