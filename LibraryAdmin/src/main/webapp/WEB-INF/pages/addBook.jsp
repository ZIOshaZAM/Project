<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Book</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<form action="addBook" method="POST">
					<div class="form-group">
						<label for="bookName">Title</label> <input type="text"
							class="form-control" name="bookName"
							placeholder="Enter Book's title">
					</div>
					<div class="form-group">
						<label for="author">Author</label> <input type="text"
							class="form-control" name="author" placeholder="Enter Author">
					</div>
					<div class="form-group">
						<label for="price">Price</label> <input type="number"
							class="form-control" name="price"
							placeholder="Enter Book's price">
					</div>
					<div class="form-group">
						<label for="count">Count</label> <input type="number"
							class="form-control" name="count" placeholder="Enter Book  count">
					</div>
					<div class="form-group">
						<label for="pdfLink">PDF file</label> <input type="file"
							class="form-control" name="pdfLink">
					</div>
					<div>
						<label for="category">Select Category</label> <select
							class="form-control form-control-sm" name="category">
							<option value="horror">Horror</option>
							<option value="romance">Romance</option>
							<option value="histroy">History</option>
							<option value="religious">Religious</option>
							<option value="comedy">Comedy</option>
						</select>
					</div>
					<input type="hidden" value="Admin" name="createdUser">
					<div class="form-group">
						<label for="summary">Summary</label> <input type="text"
							class="form-control" name="summary" placeholder="Enter summary">
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-primary" name="Submit">
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>