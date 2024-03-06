<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Book</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<style type="text/css">
.btn-cal,btn-edi {
	display: inline;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<form action="editedBook" method="POST">
				<input type="hidden" value="${editBook.bookId}" name="bookId">
					<div class="form-group">
					
						<label for="bookName">Title</label> <input type="text"
							class="form-control" name="bookName"
							placeholder="Enter Book's title" value="${editBook.bookName}">
					</div>
					<div class="form-group">
						<label for="authorId">Select Author</label> <select
							class="form-control form-control-sm" name="authorId">
							<option value="1">Michael Jackery</option>
							<option value="2">Delieo Heiron</option>
							<option value="3">David Balote</option>
							<option value="4">Geory Teku</option>
						</select>
					</div>
					<div class="form-group">
						<label for="price">Price</label> <input type="number"
							class="form-control" name="price"
							placeholder="Enter Book's price" value="${editBook.price}">
					</div>
					<div class="form-group">
						<label for="count">Count</label> <input type="number"
							class="form-control" name="count" placeholder="Enter Book  count" value="${editBook.count}">
					</div>
					<div class="form-group">
						<label for="pdfLink">PDF file</label> <input type="file"
							class="form-control" name="pdfLink" value="${editBook.pdfLink}">
					</div>
					<div>
						<label for="categoryId">Select Category</label> <select
							class="form-control form-control-sm" name="categoryId">
							<option value="1">Horror</option>
							<option value="3">Romance</option>
							<option value="4">History</option>
							<option value="5">Religious</option>
							<option value="2">Comedy</option>
						</select>
					</div>
					
					<div class="form-group">
						<label for="summary">Summary</label> <input type="text"
							class="form-control" name="summary" placeholder="Enter summary" value="${editBook.summary}">
					</div>
					<div class="form-group">
						<a href="viewBook"><input type="button"
							class="btn-cal btn-danger btn-block" value="Back"></a> <input
							type="submit" class="btn-edi btn-primary btn-block " value="Edit">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>