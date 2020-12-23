<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shops Details:</title>
</head>
<body>

	<table style="background-color: lightblue; margin: auto;" border="1">

		<caption><h2>Shops List</h2></caption>
		<c:forEach var="s" items="${requestScope.shops_list}">
			<tr>
				<td>shopName: ${s.shopName}</td>
				<td>Loaction:${s.location}</td>
				<td>MobNo:${s.contactNumber}</td>
				<td>Owner Name:${s.ownerName}</td>
				<td>Reviews Points:${s.reviews}</td>
				<td>Shop Open/Close :${s.status}</td>
				<%-- <c:forEach var="serv" items="${s.services}">
				<td>${serv.serviceName}</td>
				</c:forEach>--%>
				
				<td><a href="<spring:url value='/admin/delete?sid=${s.shopId}'/>">Delete</a></td>
				<td><a href="<spring:url value='/admin/update?sid=${s.shopId}'/>">Update</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="<spring:url value='/admin/register'/>">Add New shop</a>
	<h4>
		<a href="<spring:url value='/user/logout'/>">Log Me Out</a>
	</h4>
</body>
</html>