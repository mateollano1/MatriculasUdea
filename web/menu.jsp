<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty login}">
|<a href="login.jsp">Iniciar Sesión</a>|
|<a href="register.jsp">Registrarse</a>|
|<a href="search.jsp">Buscar Estudiante</a>|

</c:if>
<c:if test="${not empty login}">
|<a href="EstudianteServlet?action=logout">Cerrar Sesión</a>|

</c:if>
<hr/>