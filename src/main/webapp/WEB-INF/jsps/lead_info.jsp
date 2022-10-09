/14/09/2022

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   //19/09/2022
 <%@ include file = "menu.jsp" %>
 //---------------------------------------------------------------------
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead Info</title>
</head>
<body>

	<h2> LeadInformation</h2>
		First Name:${lead.firstName}</br>
		Last Name:${lead.lastName}</br>
		Email:${lead.email}</br>
		Mobile:${lead.mobile}</br>
		Source:${lead.source}</br>
//--------------------------------------------------------------------------------------------------------------------
//                       15/09/22		
		<form action="composeEmail" method ="post">
			<input type ="hidden" name ="email" value ="${lead.email}"/>
			<input type ="submit" value ="send email"/>
		</form>
		
//-------------------------------------------------------------------------------------------------------------------
//						16/09/22
// Developing Covert Button

		<form action="converLead" method ="post">
			<input type="hidden" name="id" value="${lead.id}"/>
			<input type="submit" value="convert"/>
		</form>
		
</body>
</html>