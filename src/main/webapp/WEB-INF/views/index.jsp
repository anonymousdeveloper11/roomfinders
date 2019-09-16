<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
</head>
<body>
<h1>Welcome to Spring!</h1>
        <a href="${pageContext.request.contextPath}/signup">Signup new user</a>
               &nbsp;&nbsp; <a href="${pageContext.request.contextPath}/login">Login</a>

</body>
</html>