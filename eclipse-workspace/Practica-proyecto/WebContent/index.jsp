<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pagina de Prueba- Clase Web: UFPS</title>
</head>
<body>

<%-- Comentario en JSP --%>

<%! 
	
	int n = 5;
	String nombre = "Victor"; %>
	
<h1>	<%= nombre %>                                 </h1>

<ul>
<% 

for (int i = 0; i<=n; i++) { %>
	<li><%= "Hola " + nombre + " " + (i) %></li>
	<%  
}
%>
</ul>

<a href="formulario.html">Formulario</a>
</body>
</html>