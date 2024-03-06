<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Payment</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<style type="text/css">
btn {
	align: left;
}
</style>
</head>
<body>
	<h2>Add Payment</h2>

	<div class="container-fluid">
		<div class="row justify-content">
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title text-primary-center ">Add Payment</h4>

						<form action="addPayment" method="POST">
							<div class="from-group">
								<label>Payment Name</label> <input type="text" class="form-control"
									placeholder="Enter Payment Name" name="name">
							</div>
							<div class="from-group">

								<button type="submit" class="btn btn-primary ">Submit</button>

							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>