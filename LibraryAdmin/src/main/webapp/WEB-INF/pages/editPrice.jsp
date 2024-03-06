<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Price</title>
</head>
<body>
	<h1>Edit Price</h1>
	
		<form action="editedPrice" method="POST">
			<input type="hidden" value ="${bookEdit.count}" name="count">
			Edit Price<input type="number" value="${bookEdit.price}" name="price">
			<input type="hidden" value="${bookEdit.bookId}" name="bookId">
			<a href="viewBook" class="btn btn-secondary btn-sm " role="button" aria-pressed="true">Cancel</a>
			<input type="submit" value="Edit" class="btn btn-secondary btn-sm ">
		</form>
	
</body>
</html>