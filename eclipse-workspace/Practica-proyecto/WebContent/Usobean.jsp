<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%--
<jsp:useBean id="mensaje" class="ufps.bean.Mensaje"></jsp:useBean>

<jsp:setProperty name="mensaje" property="name" value="Carlos"/>


<jsp:getProperty name="mensaje" property="name"/>

 --%>
 
 <jsp:useBean id="mensaje" class="ufps.bean.Mensaje">
 	<jsp:setProperty name="mensaje" property="*"/>
 
 </jsp:useBean>
<jsp:getProperty name="mensaje" property="name"/>
<jsp:getProperty name="mensaje" property="email"/>
</body>
</html>