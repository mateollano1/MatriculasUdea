<%-- 
    Document   : newAccount
    Created on : 27/01/2017, 08:53:07 PM
    Author     : brian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">    
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Hello World!</h1>
        <div class="container well">
            <div align="center">
            <form action="EstudianteServlet?action=insert" method="post">
                <table>
                    <tr>
                        <th><label><b>Identificacion:</b></label></th>
                        <th>
                            <input type="text" placeholder="Enter Id" class="form-control" name="id" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Password:</b></label></th>
                        <th>
                            <input type="password" placeholder="Enter Password" class="form-control" name="contrasena" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Nombre:</b></label></th>
                        <th>
                            <input type="text" placeholder="Enter nombre" class="form-control" name="nombre" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Apellido:</b></label></th>
                        <th>
                            <input type="text" placeholder="Enter apellido" class="form-control" name="apellido" required=""/>
                        </th>
                    </tr>
                    
                    <!--Recordar: buscar la forma para pasar foto-->
                    <tr>
                        <th><label><b>Foto:</b></label></th>
                        <th>
                            <input type="text" placeholder="Enter Foto" class="form-control" name="foto" required=""/>
                        </th>
                    </tr>
                    <div class="break"></div>
                    </div>
                    <tr>
                        <td colspan="2">
                            <input class="btn icon-btn btn-success" type="submit" name="action" value="Insert">
                            <span class="glyphicon glyphicon-ok-sign"></span>
                            <input class="btn icon-btn btn-lg" type="reset" name="action" value="Reset">
                            <span class="glyphicon glyphicon-remove"></span>
                        </td>
                    </tr>
                </table>    
        </form> 
            </div>
            <br>
        </div>
    </body>
</html>

