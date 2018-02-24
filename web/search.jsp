<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">    
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <title>Laboratorio 1</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <c:if test="${param.error==1}">
            <font color="red">Estudiante no registrado</font>
        </c:if> 
        <div class="container well">     
            <div align="center">
                <h2> CONSULTAR ESTUDIANTE </h2>
                <form action="EstudianteServlet?action=consultaestudiante" method="post">
                <table>
                    <tr>
                        <th><label><b>Identificación:</b></label></th>
                        <th>
                        <input type="text" placeholder="Ingrese el id" class="form-control" name="id" required=""/> 
                        </th>                  
                    <div class="break"></div>
                    <tr>
                        <td colspan="2">
                            <input class="btn btn-info btn-lg" type="submit" name="action" value="Consultar">
                            <span class="glyphicon glyphicon-ok-sign"></span>
                        </td>
                    </tr>
                </table>     
        </form>
                </div>
        </div>
        <c:if test="${param.found==1}">
            <div class="container well">
            <div align="center">
                <table>
                    <tr>
                        <th><label><b>// FOTO</b></label></th>
                    </tr>
                    <tr>
                        <th><label><b>Identificacion: ${idEstudiante}</b></label></th>
                    </tr>
                    <tr>
                        <th><label><b>Nombre: ${nombre}</b></label></th>
                    </tr>
                    <tr>
                        <th><label><b>Apellido: ${apellido}</b></label></th>
                    </tr>                                       
                    <div class="break"></div>
                </table>    
            </div>
            <br>
        </div>
        </c:if>
    </body>
</html>
