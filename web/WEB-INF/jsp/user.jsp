<%-- 
    Document   : user
    Created on : 20/12/2017, 02:00:27 PM
    Author     : Sergio Velásquez
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page import="com.GrupoJaque.models.coneDB"%>
<a href="../../../../../../../C:/Users/sergi/AppData/Local/Temp/Jugadores.url"></a>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="<c:url value="/resources/style.css" />" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario</title>
    </head>

    <div class="row">
            <div class="container">
    <body>
        <ol class="breadcrumb">
        <li><a href="<c:url value="/home.htm" />">Inicio</a></li>
        <li class="active">User</li>
        </ol>
         <div class="modal-content">
              <div class="panel-body">
                <div class="col-sm-6 col-md-4 col-md-offset-4">
                    <%  HttpSession sesion = request.getSession();
                    String username;
                    String tipodecuenta;
                    if (sesion.getAttribute("user")!=null && session.getAttribute("tipodecuenta").toString()=="1") {
                    username=sesion.getAttribute("user").toString();
                    out.print("<a ><a class='btn btn-sm btn-success' href='home.htm?cerrar=true'>Cerrar sesión</a></a>");
                    }else{
                           
                            out.print("<script>location.replace('home.htm');</script>");
                    }%>           
                    
                    <form:form method="post" commandName="usuario">

                        <p>
                        <h4>Elije tu equipo:</h4>
                        <form:select class="form-control" path="equipo">
                            
                            <%
                            coneDB cn1=new coneDB();
                            try {
                            cn1.Conectar();
                            String sql="select nombreequipo from equipo;";
                            cn1.st=cn1.conec.createStatement();
                            cn1.rt=cn1.st.executeQuery(sql);
                            while(cn1.rt.next()){
                             out.println("<option>"+cn1.rt.getString(1)+"</option>");
                            }
                            } catch (Exception e) {
                            out.print(e. toString());
                            }
                            %>
                        </form:select>
                        </p>
                        <p>
                        <h4>Elije tu arma:</h4>
                        <form:select class="form-control" path="arma">
                            
                            <%
                            coneDB cn2=new coneDB();
                            try {
                            cn2.Conectar();
                            String sql="select nombrearma from arma;";
                            cn2.st=cn2.conec.createStatement();
                            cn2.rt=cn2.st.executeQuery(sql);
                            while(cn2.rt.next()){
                             out.println("<option>"+cn2.rt.getString(1)+"</option>");
                            }
                            } catch (Exception e) {
                            out.print(e. toString());
                            }
                            %>
                        </form:select>
                        </p>
                        <p>
                        <h4>Elije una sala:</h4>
                        <form:select class="form-control" path="cuarto">
                            
                            <%
                            coneDB cn3=new coneDB();
                            try {
                            cn3.Conectar();
                            String sql="select nombrecuarto from cuarto;";
                            cn3.st=cn3.conec.createStatement();
                            cn3.rt=cn3.st.executeQuery(sql);
                            while(cn3.rt.next()){
                             out.println("<option>"+cn3.rt.getString(1)+"</option>");
                            }
                            } catch (Exception e) {
                            out.print(e. toString());
                            }
                            %>
                        </form:select>
                        </p>
                        <p> 
                        <h4>Elije una meza:</h4>
                        <form:select class="form-control" path="meza">
                            
                            <%
                            coneDB cn4=new coneDB();
                            try {
                            cn4.Conectar();
                            String sql="select nombremeza from meza ;";
                            cn4.st=cn4.conec.createStatement();
                            cn4.rt=cn4.st.executeQuery(sql);
                            while(cn4.rt.next()){
                             out.println("<option>"+cn4.rt.getString(1)+"</option>");
                            }
                            } catch (Exception e) {
                            out.print(e. toString());
                            }
                            %>
                        </form:select>
                         </p>
                         <hr />
                         <input type="submit" value="Jugar" class="btn btn-danger" />
                           </div></div></div> 
                                                 <div style="visibility:hidden">    
                                                     
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
                        </div>
                    </form:form> 
                      
            </div>    
         </div>
                    
      
           
        

    </body>
</html>



