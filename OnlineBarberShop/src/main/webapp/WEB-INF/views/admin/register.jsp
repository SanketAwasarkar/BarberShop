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
	<sf:form method="post" modelAttribute="shops">
		<table style="background-color: cyan; margin: auto;">


			
					<tr>
						<td>Enter Shop Name</td>
						<td><input type="text" name="shopName" /></td>
					</tr>


					<tr>
						<td>Enter Owner Name</td>
						<td><input type="text" name="ownerName" /></td>
					</tr>

					<tr>
						<td>Enter location</td>
						<td><input type="text" name="location" /></td>
					</tr>
			<tr>
				<td>Enter contactNumber</td>
				<td><input type="text" name="contactNumber" /></td>
			</tr>



			<tr>
				<td><input type="submit" value="Register New Shop" /></td>
			</tr>

		</table>
	</sf:form>


</body>
</html>