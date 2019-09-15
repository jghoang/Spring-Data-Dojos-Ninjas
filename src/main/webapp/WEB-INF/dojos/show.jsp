<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/css/style.css"/>
<title>Dojo Page</title>
</head>
<body>
	<div id="container">
	<a href="/">Home</a>
		<c:if test="${not empty dojo.getNinjas()}">
			<h2 class="text-center">
				<c:out value="${dojo.getName()}" />
				Ninjas
			</h2>
			<a href="/ninjas/new">Create a new Ninja</a>
	<table>
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
			</tr>
		</thead>
		<c:forEach items="${dojo.ninjas}" var="ninja">
			<tr>
				<td><c:out value="${ninja.firstName}" /></td>
				<td><c:out value="${ninja.lastName}" /></td>
				<td><c:out value="${ninja.age}" /></td>
			</tr>
		</c:forEach>
	</table>
	</c:if>

	<c:if test="${empty dojo.getNinjas()}">

		<h1 class="text-center">No ninjas added yet...</h1>

	</c:if>

	</div>
</body>
</html>