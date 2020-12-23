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
	<sf:form method="post" modelAttribute="updateservice">
		<table style="background-color: cyan; margin: auto;">


			
					<tr>
						<td>Enter Service Name</td>
						<td><input type="text" name="serviceName" value="${requestScope.service_detalis.serviceName}" /></td>
					</tr>


					<tr>
						<td>Enter Service Description</td>
						<td><input type="text" name="serviceDescription" value="${requestScope.service_detalis.serviceDescription}" /></td>
					</tr>

					<tr>
						<td>Enter Service Price;</td>
						<td><input type="number" name="servicePrice" value="${requestScope.service_detalis.servicePrice}" /></td>
					</tr>
					<tr>
						<td>Enter Service Duration</td>
						<td><input type="number" name="serviceDuration" value="${requestScope.service_detalis.serviceDuration}" /></td>
					</tr>



			<tr>
				<td><input type="submit" value="UpdateService" /></td>
			</tr>

		</table>
	</sf:form>


</body>
</html>