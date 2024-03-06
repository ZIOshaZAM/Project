<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
</head>
<body>
	<%@include file="menu.jsp"%>
	<table>
		<thead>
			<tr>
				<th>Payment Name</th>
				<th>Currency</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${payments}" var="payment">
				<tr>
					<td><img alt="icon" src="">${payment.name}</td>
					<td>MMK</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>