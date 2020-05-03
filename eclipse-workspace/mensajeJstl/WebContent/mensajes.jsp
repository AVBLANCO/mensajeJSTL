<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sistema de mensajeria</title>
<link rel="stylesheet" 	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>


<!-- /**
<ul>
	<jsp:useBean id="mDao" class="mensajeJpa.dao.MensajeDao" scope="request" ></jsp:useBean>

	<c:forEach var="mensaje" items="${mDao.list() }">
	
	<li> <c:out value="${mensaje.email }" /></li>
	
	</c:forEach>

</ul>
*/-->

<h1>listado de mensajes</h1>
        <table>
            <thead>
                <tr><th>Nombre</th><th>Email</th>
                    <th>SitioWeb</th><th>Mensaje</th><th>Usuario</th>
                </tr>
            </thead>
            <tbody>
                
                 <c:forEach var="mensaje"  items="${list}">
                    <tr>
                        <td><c:out value="${mensaje.nombre}"/></td>
                        <td><c:out value="${mensaje.email}"/></td>
                        <td><c:out value="${mensaje.sitioweb}"/></td>
                        <td><c:out value="${mensaje.mensaje}"/></td>
                        <td><c:out value="${mensaje.usuario}"/></td>
                        <td><a href="mensajeriaController?action=showEditar&id=<c:out value="${mensaje.id}"/>"> Editar </a>
                            <a href="mensajeriaController?action=eliminar&id=<c:out value="${mensaje.id}"/>"> Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
           
        </table>
        <a href="registrar.jsp">Registrar nuevo</a>
</body>
</html>