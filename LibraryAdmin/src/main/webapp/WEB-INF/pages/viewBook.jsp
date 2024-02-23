<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Book</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
</head>
<body>
	<h3>View Book</h3>
	<div class="container row col-12" style="padding: 20px">
		<table class="table table-bordered ">
			<thead>
				<tr>
					<th>Name</th>
					<th>Author</th>
					<th>Price</th>
					<th>Count</th>
					<th>Edit Price</th>
					<th>Edit Book Count</th>
					<th>Hide</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${books}" var="book">
					<tr>
						<td>${book.bookName}</td>
						<td>${book.author}</td>
						<td>${book.price}</td>
						<td>${book.count}</td>
						<td>
							<form action="editPrice" method="Get">
								<input type="hidden" value="${book.bookId}" name="bookId"> <input
									type="submit" class="btn btn-secondary" value="Edit Price">
							</form>
						</td>
						
						<td>
							<form action="editCount" method="Get">
								<input type="hidden" value="${book.bookId}" name="id"> <input
									type="button" class="btn btn-secondary" value="Edit Count">
							</form>
						</td>
						<td>
							<form action="hideBook" method="Get">
								<input type="hidden" value="${book.bookId}" name="id"> <input
									type="button" class="btn btn-danger" value="Hide">
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>
</body>
</html>