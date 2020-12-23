<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Shop Deatils :</title>
</head>

<body>
	<sf:form method="post" modelAttribute="shops">
		<table style="background-color: cyan; margin: auto;">

					
			
					<tr>
						<td>Enter Shop Name</td>
						<td><input type="text" name="shopName"  value="${requestScope.shop_detalis.shopName}"/></td>
					</tr>


					<tr>
						<td>Enter Owner Name</td>
						<td><input type="text" name="ownerName" value="${requestScope.shop_detalis.ownerName}"/></td>
					</tr>

					<tr>
						<td>Enter location</td>
						<td><input type="text" name="location" value="${requestScope.shop_detalis.location}" /></td>
					</tr>
			<tr>
				<td>Enter contactNumber</td>
				<td><input type="text" name="contactNumber" value="${requestScope.shop_detalis.contactNumber}"/></td>
			</tr>



			<tr>
				<td><input type="submit" value="Update" /></td>
			</tr>

		</table>
	</sf:form>


</body>
</html>