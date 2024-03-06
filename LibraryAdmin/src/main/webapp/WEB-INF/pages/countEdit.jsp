<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Count</title>
</head>
<body>

	<h1>Edit Price</h1>

	<form action="editCount" method="POST">
		<input type="hidden" value="${countEdit.price}" name="price">
		Edit Price<input type="number" value="${countEdit.count}" name="count">
		<input type="hidden" value="${countEdit.bookId}" name="bookId">
		<a href="viewBook" class="btn btn-secondary btn-sm " role="button"
			aria-pressed="true">Cancel</a> <input type="submit" value="Edit"
			class="btn btn-secondary btn-sm ">
	</form>

</body>
</html>