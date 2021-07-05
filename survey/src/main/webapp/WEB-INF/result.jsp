<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1> Your name: <c:out value="${user}"/></h1>
	<h1> Your Dojo: <c:out value="${dojo}"/></h1>
	<h1> Your Favorite Language: <c:out value="${language}"/></h1>
	<h1> Your Comments: <c:out value="${comments}"/></h1>
</body>
</html>