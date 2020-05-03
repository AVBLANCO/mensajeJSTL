<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>inicio </title>
<link rel="stylesheet"	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

<div class="center">

	<div>
	<h1>Aplicacion Mensajaria con JSTL</h1>
	<br>
	<br>
		<a href="mensajeriaController?action=mostrar">listado de mensajes</a>
		<br>
		<br>
		<a href="registrar.jsp">Registrar mensaje</a>
	</div>
</div>
</div>

</body>
</html>