
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
 <%@ include file = "menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List</title>
</head>
<body>
	<a href="/viewLeadpage"> cread new lead</a>
	<h2>List All Contacts</h2>
	<table border="1">
	
		<tr>
			<th>FirstName</th>
			<th>LastName</th>
			<th>EmailName</th>
			<th>Mobile</th>
			<th>Sorce</th>
				
		</tr>
	</table>
	<c:forEach var="Contacts" items="${contacts}">
	
	<tr>
		<td><a href ="findContactById?id= ${contact.id}"> ${contact.firstName}</a> </td>
		<td> ${contact.lastName}</td>
		<td> ${contact.email}</td>
		<td> ${contact.mobile}</td>
		<td> ${contact.source}</td>
	</tr>
	</c:forEach>
	
	
	
</body>
</html>