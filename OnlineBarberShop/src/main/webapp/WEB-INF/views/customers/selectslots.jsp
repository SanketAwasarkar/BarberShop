<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Slots</title>
</head>
<body>
	<sf:form method="post" action="bookappoint">
	<div style="background-color: lightblue; margin: auto;" >
		<h3>Location : ${sessionScope.shop_location}</h3>
		<h3>Shop Name: ${sessionScope.shop.shopName}</h3>
		<h2>Selected Services </h2>
		
		<table style="background-color: lightblue; margin: auto;" border="1">	
			<tr>
				
				<th>Service Name</th><th>ServiceDescription</th><th>Service Price</th><th>Service Duration</th>
				
				
			</tr>
				<c:forEach var="s" items="${sessionScope.serv}">
					<tr>
		
						<td> ${s.serviceName}</td>
						<td>${s.serviceDescription}</td>
						<td>${s.servicePrice}</td>
						<td>${s.serviceDuration}</td>
				
					</tr>
				</c:forEach>
		
			</table>
		<h2>Select Slots </h2>
		<table style="background-color: lightblue; margin: auto;" border="1">
			<tr>
				<th>Shot Id</th><th>Shot Name</th><th>Slot Time</th><th>Available Seats</th><th>Slot Sequence </th><th>select</th>
			</tr>
		<c:forEach var="s" items="${sessionScope.slotslist}">
		
			<tr>
				<td> ${s.slotId}</td>
				<td>${s.slotName}</td>
				<td>${s.slotTime}</td>
				<td>${s.chaireAvilable}</td>
				<td>${s.slotSequence}</td>
				<td><input type="radio" value="${s.slotId}" name="slotId"></td>
				
			</tr>
		</c:forEach>
	</table>
	<input type="submit" value="submit">
	</div>

</sf:form>
</body>
</html>