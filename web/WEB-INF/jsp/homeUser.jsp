<%-- 
    Document   : homeAdmin
    Created on : 19/12/2017, 08:34:00 PM
    Author     : Sergio Velásquez
--%>
<%@page import="com.GrupoJaque.models.Logueo"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %> 
<!DOCTYPE html>
<html>
    <head>

        <meta charset=UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <title>Inicia Sesión</title>
    </head>
    <body>

        
        
        
<div class="container" style="margin-top:30px">
<div class="col-md-12">
    <div class="modal-dialog" style="margin-bottom:0">
        <div class="modal-content">
                    <div class="panel-heading">
                        <h3 class="panel-title">Inicia Sesión</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="homeUser.htm" method="POST">
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
                              
                                <a href="<c:url value="addUser.htm"/>" class="btn btn-sm btn-success">Registrate</a>
                            </fieldset>
                        </form>
                      <%
                      Logueo op = new Logueo();
                      if (request.getParameter("btnIngresar")!=null) {
                              String username=request.getParameter("txtusername");
                              String contra=request.getParameter("txtpass");
                              
                              switch(op.logear(username, contra)){
                                  case 1:
                                      HttpSession sesion = request.getSession();
                                      sesion.setAttribute("user", username);
                                      response.sendRedirect("user.htm");
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
