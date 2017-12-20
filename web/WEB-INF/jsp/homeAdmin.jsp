<%-- 
    Document   : homeAdmin
    Created on : 19/12/2017, 08:34:00 PM
    Author     : Sergio Velásquez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <title>Home Admin</title>
    </head>
    <body>
<div class="container" style="margin-top:30px">
<div class="col-md-12">
    <div class="modal-dialog" style="margin-bottom:0">
        <div class="modal-content">
                    <div class="panel-heading">
                        <h3 class="panel-title">Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus="">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                </div>
                                <div class="checkbox">
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <a href="javascript:;" class="btn btn-sm btn-success">Login</a>
                            </fieldset>
                        </form>
                    </div>
                </div>
    </div>
</div>
<hr>

</div>

    </body>
</html>
