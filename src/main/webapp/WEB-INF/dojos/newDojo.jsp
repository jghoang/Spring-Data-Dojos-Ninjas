<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/css/style.css"/>
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<h1>New Dojo</h1>
		<form:form action="/dojos/new" method="post" modelAttribute="dojo">
			<form:label path="name">Name:</form:label>
			<form:input path="name" />
			<input id="btn" type="submit" value="Create" />
		</form:form>
		<form:errors path="dojo.*"/>
	</div>
</body>
</html>