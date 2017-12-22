<%-- 
    Document   : homeAdmin
    Created on : 19/12/2017, 08:34:00 PM
    Author     : Sergio Velásquez
--%>
<%@page import="com.GrupoJaque.models.Logueo"%>
<%@page import="com.GrupoJaque.models.coneDB"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %> 
<!DOCTYPE html>
<html> 
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <link href="<c:url value="/resources/style.css" />" rel="stylesheet" type="text/css"/>
        <meta charset=UTF-8">
        <title>Login usuarios</title>
    </head>
    <body>


        
        
<div class="container">

<div class="col-md-12">
    <div class="modal-dialog" style="margin-bottom:0">
        <div class="modal-content">
                    <div class="panel-heading">
                        <h1>¡Bienvenido!</h1>
                        <h3 class="panel-title">Inicia Sesión</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="home.htm" method="POST">
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
                      coneDB cn1=new coneDB();
                      if (request.getParameter("btnIngresar")!=null) {
                          
                                
                               cn1.Conectar();
                               String username=request.getParameter("txtusername"); 
                               String contra=request.getParameter("txtpass");
                                String sql="select id_usuario from usuario where username='"+username+"';";
                                cn1.st=cn1.conec.createStatement();
                                cn1.rt=cn1.st.executeQuery(sql);
                                cn1.rt.next();
                                HttpSession sesion = request.getSession();
                              switch(op.logear(username, contra)){
                                  case 1:
                                      sesion.setAttribute("user", username);
                                      sesion.setAttribute("tipodecuenta", "1");
                                      response.sendRedirect("user.htm?id_usuario="+cn1.rt.getString(1)+"");
                                      break;
                                  case 2:
                                      sesion.setAttribute("user", username);
                                      sesion.setAttribute("tipodecuenta", "2");
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
