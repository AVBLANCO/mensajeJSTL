<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML5 y CSS Formulario de contacto</title> 
<link href="css/estilo.css" rel="stylesheet" /> 
</head>
<body>
<form class="contact_form" action="recibir.jsp" id="contact_form" runat="server"> 
<div> 
	<ul> 
	<li> <h2>Información recibida de contacto</h2> <span class="required_notification">* Datos requeridos</span> 
		</li> 
	<li> <label for="name">Nombre:</label> <%= request.getParameter("name") %></li> 
	<li> <label for="email">Email:</label> <%= request.getParameter("email") %></li> 
	<li> <label for="website">Sitio web:</label> <%= request.getParameter("website") %></li> 
	<li> <label for="message">Mensaje:</label><%= request.getParameter("message") %> </li> 
	<li> <button class="submit" type="submit">Enviar mensaje</button> 
		</li> 
	</ul> 
	</div> 
</form> 
</body>
</html>