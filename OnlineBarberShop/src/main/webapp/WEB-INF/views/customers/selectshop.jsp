<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shop  List</title>
</head>
<body>
<sf:form method="post" action="selectservices">
<caption><h2>Select Shop</h2></caption>
<div style="background-color: lightblue; margin: auto;" >

		<h3>Location : ${sessionScope.shop_location}</h3>
		<caption><h2>Shops List</h2></caption>
		
		
				<table style="background-color: lightblue; margin: auto;" border="1">
		<c:forEach var="s" items="${requestScope.shops_list}">
			<tr>
				<td>shopName: ${s.shopName}</td>
				<td>Loaction:${s.location}</td>
				<td>MobNo:${s.contactNumber}</td>
				<td>Owner Name:${s.ownerName}</td>
				<td>Reviews Points:${s.reviews}</td>
				<td>Shop Open/Close :${s.status}</td>
				<td><input type="radio" value="${s.shopId}" name="shopId"></td>
			</tr>
		</c:forEach>
		
	</table>
	<%--
	
	<select name="shop">
	<c:forEach var="s" items="${requestScope.shops_list}">
		<option value="${s.shopId}">${s.shopName}</option>
	</c:forEach>
	</select>
	
	--%>
		<input type="submit" value="submit">
	</div>

	</sf:form>
</body>
</html>