<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<sf:form method="post" >
		<table style="background-color: cyan; margin: auto;">
	
					<tr>
						<td>Enter user Name</td>
						<td><input type="text" name="userName" /></td>
					</tr>
					<tr>
						<td>Enter emailId </td>
						<td><input type="text" name="emailId" /></td>
					</tr>

					<tr>
						<td>Enter password</td>
						<td><input type="text" name="password" /></td>
					</tr>
					
					<tr>
						<td>Enter role</td>
						<td>customer:<input type="radio" name="role" value="customer"/></td>
						<td>shopkeeper:<input type="radio" name="role" value="shopkeeper"/></td>
						
					</tr>
					
					<tr>
						<td>Enter location</td>
						<td><input type="text" name="location" /></td>
					</tr>


					<tr>
						<td><input type="submit" value="Register New User" /></td>
					</tr>

		</table>
	</sf:form>


</body>
</html>