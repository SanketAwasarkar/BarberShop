<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Services List</title>
</head>
<body>

<sf:form method="post" action="selectslots">
<caption><h2>Select Shop</h2></caption>
<div style="background-color: lightblue; margin: auto;" >

		
		
		<h3>Location : ${sessionScope.shop_location}</h3>
		<h3>Shop Name: ${sessionScope.shop.shopName}</h3>
		<h2>Select Services </h2>
		
		<table style="background-color: lightblue; margin: auto;" border="1">	
			<tr>
				<th>Service Name</th><th>ServiceDescription</th><th>Service Price</th><th>Service Duration</th><th>select</th>
			</tr>
			
				<c:forEach var="s" items="${sessionScope.services}">
					<tr>
						<td> ${s.serviceName}</td>
						<td>${s.serviceDescription}</td>
						<td>${s.servicePrice}</td>
						<td>${s.serviceDuration}</td>
						<td><input type="checkbox" value="${s.serviceId}" name="services"></td>
					</tr>
				</c:forEach>
			
	
			</table>
				

			<input type="submit" value="submit">
		</div>

	</sf:form>
</body>
</html>