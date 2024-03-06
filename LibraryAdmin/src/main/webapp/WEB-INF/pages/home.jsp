<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<style type="text/css">
.img {
	height: 20px;
	width: 20px;
}
</style>
</head>
<body>
<!-- 	<h2>Home</h2> -->
	<p>${loginUserName}</p>
	<form action="addBook" method="get">
		<input type="submit" class="btn btn-secondary" value="Add Book">
	</form>
	<form action="viewBook" method="get">
		<input type="submit" class="btn btn-secondary" value="View Book">
	</form>
	<form action="addPayment" method="get">
		<input type="submit" class="btn btn-secondary" value="Add Payment">
	</form>
	<img alt="profile" src="pages/profile.jpg">
</body>
</html>