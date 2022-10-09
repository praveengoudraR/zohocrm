
//13/09/2022
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   //19/09/2022
 <%@ include file = "menu.jsp" %>
 //-------------------------------------------------------------
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create</title>
</head>
<body>
		<h2>Create | Lead</h2>
		<form action="saveLead" method="post">
			<pre>
				First Name<input type="text" name="firstName"/>
				Last Name<input type="text" name="lastName"/>
				Email <input type="email" name="email"/>
				Mobile <input type="number" name="mobile"/>
				source:
				 <select name="source">
				 <option value="news paper">News Paper</option>
				 <option value="tv commercial">Tv Commercial</option>
				 <option value="online">Online</option>
				 <option value="seminor">Seminor</option>
	             </select>
				 <input type= "submit" name="save"/>
			
			</pre>
		</form>
		
</body>
</html>