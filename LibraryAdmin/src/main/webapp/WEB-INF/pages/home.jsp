<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
</head>
<body>
	<h2>Home</h2>
	<form action="addBook" method="get">
		<input type="submit" class="btn btn-secondary" value="Add Book">
	</form>
		<form action="viewBook" method="get">
		<input type="submit" class="btn btn-secondary" value="View Book">
	</form>
	
</body>
</html>