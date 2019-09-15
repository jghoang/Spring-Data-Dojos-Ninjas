<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<title>Dojo</title>
</head>
<body>
	<div id="container">
	<h1>List of Dojo Locations</h1>

		
	<table class="index">
		<thead>
			<tr>
				<th>Please select to view:</th>
		</thead>
		<tbody>
		<c:forEach items="${dojos}" var="dojo">
			<tr>
				<td><a href="/dojos/${dojo.id}">${dojo.name}</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

	<c:if test="${empty dojos}">

		<h1 class="text-center">No Dojos added yet...</h1>

	</c:if>
	<a href="/dojos/new">Add a new Dojo</a>
	</div>
</body>
</html>
