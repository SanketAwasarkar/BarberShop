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
	<sf:form method="post" modelAttribute="slot">
		<table style="background-color: cyan; margin: auto;">


			
					<tr>
						<td>Enter Slot Name</td>
						<td><input type="text" name="slotName" /></td>
					</tr>


					<tr>
						<td>Enter Slot Time</td>
						<td><input type="number" name="slotTime" /></td>
					</tr>

					<tr>
						<td>Enter chaire Avilable</td>
						<td><input type="number" name="chaireAvilable" /></td>
					</tr>
					<tr>
						<td>Enter Slot Sequnce</td>
						<td><input type="number" name="slotSequence" /></td>
					</tr>


			<tr>
				<td><input type="submit" value="Add Slot" /></td>
			</tr>

		</table>
	</sf:form>


</body>
</html>