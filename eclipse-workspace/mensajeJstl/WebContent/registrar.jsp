<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" 	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

<div class="col-sm-9  tex-center">
                    <h1><strong>Editar Mensaje</strong></h1>
                    <form action="mensajeriaController?action=registrar" method="POST">

                        <div class="form-group">
                            <label for="formGroupExampleInput">Nombre: </label>
                            <input type="text" name="nombre" class="form-control" id="formGroupExampleInput" >
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput2">Email: </label>
                            <input type="email" name="email" class="form-control" id="formGroupExampleInput2" >
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput">SitioWeb: </label>
                            <input type="text" name="sitioweb" class="form-control" id="formGroupExampleInput" >
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput2">Mensaje: </label>
                            <input type="text" name="mensaje" class="form-control" id="formGroupExampleInput2">
                        </div>
                        <jsp:useBean id="m" class="mensajeJpa.dao.MensajeDao"/>
                        <div class="form-group">
                            <label for="formGroupExampleInput2">usuarios: </label> <br>

                            <select name="usuarios">
                                <c:forEach var="u" items="${m.getUsuario()}">
                                    <option value="<c:out value="${u.usuario}"/>"><c:out value="${u.usuario}"/></option>
                                </c:forEach>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-outline-primary">Guardar</button>
                    </form>
                </div>
</div>

</body>
</html>