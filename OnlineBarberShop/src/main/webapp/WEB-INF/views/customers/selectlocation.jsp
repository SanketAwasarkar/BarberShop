<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shop Location List</title>
</head>
<body>
<sf:form method="post" action="selectshop">
<caption><h2>Select Location</h2></caption>
<div style="background-color: lightblue; margin: auto;" >

		
		<select name="location">
		<c:forEach var="location" items="${requestScope.locations_list}">
			<option value="${location}">${location}</option><br>
		</c:forEach>
		</select>
	</div>
	<input type="submit" value="submit">
	</sf:form>
</body>
</html>