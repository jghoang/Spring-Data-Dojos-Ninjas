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
		<a href="/">Home</a>
		<h1>New Ninja</h1>
		<form:form action="/ninjas/new" method="post" modelAttribute="ninja">
		<p>
			<form:label path="dojo">Select a Dojo:</form:label>
			<form:select path="dojo">
				<c:forEach items="${dojos}" var="dojo">
					<form:option value="${dojo.getId()}"><c:out value="${dojo.getName()}"/></form:option>
				</c:forEach>
			</form:select>
		</p>
		<p>
			<form:label path="firstName">First Name:</form:label>
			<form:input path ="firstName"/>
		</p>
		<p>
			<form:label path="lastName"> Last Name:</form:label>
			<form:input path="lastName"/>
		</p>
		<p>
			<form:label path="age">Age:</form:label>
			<form:input type="number" path="age"/>
		</p>
		<input type="submit" value="Create"/>
		</form:form>
		<form:errors path="ninja.*"/>
	</div>
</body>
</html>