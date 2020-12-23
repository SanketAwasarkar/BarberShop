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

		<caption><h2>Appointments List</h2></caption>
 	<c:forEach var="a" items="${requestScope.alist}">
			<tr>
				<td>Appoint Id: ${a.appointId}</td>
				<td>Registration Date: ${a.regDate}</td>
				<c:forEach var="serv" items="${a.services}">
				<td>${serv.serviceName}</td>
				</c:forEach> 
				<c:forEach var="slot" items="${a.slots}">
				<td>${slot.slotName}</td>
				</c:forEach> 
			</tr>
		</c:forEach> 
		
				
	</table>
	<a href="<spring:url value='/shopkeeper/services'/>">Click To see Services</a><br>
	<a href="<spring:url value='/shopkeeper/slots'/>">Click To see Slots</a><br>
	<a href="<spring:url value='/shopkeeper/addslot'/>">Add New slot</a><br>
	<a href="<spring:url value='/shopkeeper/addservice'/>">Add New service</a><br>
	
	
</body>
</html>