//19/09/2022

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
 //19/09/2022
 <%@ include file = "menu.jsp" %>
//-------------------------------------------------------------------------------
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List</title>
</head>
<body>
	<a href="/viewLeadpage"> cread new lead</a>
	<h2>List All Leads</h2>
	<table border="1">
	
		<tr>
			<th>FirstName</th>
			<th>LastName</th>
			<th>EmailName</th>
			<th>Mobile</th>
			<th>Sorce</th>
				
		</tr>
	</table>
	<c:forEach var="lead" items="${leads}">
	
	<tr>
		<td><a href ="findLeadById?id= ${lead.id}"> ${lead.firstName}</a> </td>
		<td> ${lead.lastName}</td>
		<td> ${lead.email}</td>
		<td> ${lead.mobile}</td>
		<td> ${lead.source}</td>
	</tr>
	</c:forEach>
	
	
	
</body>
</html>