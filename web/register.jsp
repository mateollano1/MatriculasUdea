<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Laboratorio 1</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">    
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h2> Página de Registro </h2>
        <div class="container well">
            <div align="center">
            <form action="EstudianteServlet?action=insert" method="post">
                <table>
                    <tr>
                        <th><label><b>Identificacion:</b></label></th>
                        <th>
                            <input type="text" placeholder="Ingresar id" class="form-control" name="id" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Nombre:</b></label></th>
                        <th>
                            <input type="text" placeholder="Ingresar nombre" class="form-control" name="nombre" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Apellido:</b></label></th>
                        <th>
                            <input type="text" placeholder="Ingresar Apellido" class="form-control" name="apellido" required=""/>
                        </th>
                    </tr>                   
                    <tr>
                        <th><label><b>Contraseña:</b></label></th>
                        <th>
                            <input type="password" placeholder="Ingresar Contraseña" class="form-control" name="contrasena" required=""/>
                        </th>
                    </tr>
                    
                    <!--Recordar: buscar la forma para pasar foto-->
                    <tr>
                        <th><label><b>Foto:</b></label></th>
                        <th>
                            <input type="text" placeholder="Ingresar Foto" class="form-control" name="foto" required=""/>
                        </th>
                    </tr>
                    <div class="break"></div>
                    <tr>
                        <td colspan="2">
                            <input class="btn icon-btn btn-success" type="submit" name="action" value="Registrar Estudiante">
                            <span class="glyphicon glyphicon-ok-sign"></span>
                            <input class="btn icon-btn btn-lg" type="reset" name="action" value="Limpiar Campos">
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

