<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table style="background-color: lightblue; margin: auto;" border="1">

		<caption><h2>Slots List</h2></caption>
		
			<tr>
				<th>Shot Id</th><th>Shot Name</th><th>Slot Time</th><th>Available Seats</th><th>Slot Sequnce</th><th>Delete</th><th>Update</th>
			</tr>
		
		
 	<c:forEach var="s" items="${requestScope.slots_list}">
		
		
			<tr>
				<td> ${s.slotId}</td>
				<td>${s.slotName}</td>
				<td>${s.slotTime}</td>
				<td>${s.chaireAvilable}</td>
				<td>${s.slotSequence}</td>
				<td><a href="<spring:url value='/shopkeeper/removeslot?sid=${s.slotId}'/>">Delete</a><br></td>
				<td><a href="<spring:url value='/shopkeeper/updateslot?sid=${s.slotId}'/>">Update</a></td>
				
			</tr>
		</c:forEach>
				
	</table>
	
</body>
</html>