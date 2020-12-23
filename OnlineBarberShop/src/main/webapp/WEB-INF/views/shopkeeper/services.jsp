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
<caption><h2>Services List</h2></caption>
<table style="background-color: lightblue; margin: auto;" border="1">
				<tr>
					<th>Service Name</th><th>ServiceDescription</th><th>Service Price</th><th>Service Duration</th><th>select</th><th>Delete</th><th>Update</th>
				</tr>
			
 					<c:forEach var="s" items="${requestScope.services_list}">
			
				<tr>
						<td> ${s.serviceName}</td>
						<td>${s.serviceDescription}</td>
						<td>${s.servicePrice}</td>
						<td>${s.serviceDuration}</td>
						<td><input type="checkbox" value="${s.serviceId}" name="services"></td>
					
				<td><a href="<spring:url value='/shopkeeper/removeservice?sid=${s.serviceId}'/>">Delete</a></td>
				<td><a href="<spring:url value='/shopkeeper/updateservice?sid=${s.serviceId}'/>">Update</a></td>
			</tr>
		</c:forEach> 
		
				
	</table>
	
</body>
</html>