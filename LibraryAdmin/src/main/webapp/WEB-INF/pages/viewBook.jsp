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
<style type="text/css">
form, p {
	display: inline;
}

.arrivals {
	width: 100%;
	height: 100vh;
	margin-bottom: 35px;
}

.arrivals h1 {
	font-size: 50px;
	text-align: center;
	margin-bottom: 35px;
}

.arrivals .arrivals_box {
	width: 95%;
	margin: 0 auto;
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
	grid-gap: 25px 0;
}

.arrivals .arrivals_box .arrivals_card {
	width: 250px;
	height: 370px;
	text-align: center;
	padding: 5px;
	border: 1px solid #919191;
	margin: auto 20px;
}

.arrivals .arrivals_box .arrivals_card:hover {
	box-shadow: 0 0 5px #089da1;
}

.arrivals .arrivals_box .arrivals_card .arrivals_image {
	width: 150px;
	height: 220px;
	margin: 0 auto;
	cursor: pointer;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.5);
	overflow: hidden;
}

.arrivals .arrivals_box .arrivals_card .arrivals_image img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	object-position: center;
	transition: 0.3s;
}

.arrivals .arrivals_box .arrivals_card:hover .arrivals_image img {
	transform: scale(1.1);
}

.arrivals .arrivals_box .arrivals_card .arrivals_tag p {
	font-family: queen of camelot;
	font-size: 20px;
	margin: 8px;
}

.arrivals .arrivals_box .arrivals_card .arrivals_tag .arrivals_icon {
	color: #089da1;
	margin-bottom: 18px;
}

.arrivals .arrivals_box .arrivals_card .arrivals_tag .arrivals_btn {
	padding: 8px 20px;
	border: 2px solid #089da1;
	text-decoration: none;
	color: #000;
}
</style>
</head>
<body>

	<%-- 	<div><%@include file="menu.jsp"%></div> --%>

	<h3>View Book</h3>
	<c:forEach items="${payments}" var="payment">
		<button class="btn btn-warrning">${payment.name}</button>
	</c:forEach>

	<div class="arrivals" id="arrivle">
		<div class="arrivals_box">
			<c:forEach items="${books}" var="book">
				<div class="arrivals_card">
					<div class="arrivals_image">
						<img
							src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR4BhQMp_vnDBTDh62DX2GHQTccXQccIwqIkUldcaSH7B_zqO4w">
					</div>

					<div class="arrivals_tag">
						<p>${book.bookName}(${book.author})</p>
						<p>(${book.price}MMK)</p>
						<form action="editPrice" method="Get">
							<input type="hidden" value="${book.bookId}" name="bookId">
							<input type="submit" class="btn btn-link btn-sm" value="Edit">
						</form>
						<p>Instock:(${book.count})</p>
						<form action="editCount" method="Get">
							<input type="hidden" value="${book.bookId}" name="bookId">
							<input type="submit" class="btn btn-link btn-sm" value="Edit">
						</form>
					</div>
					<form action="wholeEdit" action="GET">
						<input type="hidden" value="${book.bookId}" name="bookId">
						<input type="submit"
							class="btn btn-outline-secondary btn-sm btn-block" value="Edit">
					</form>
				</div>
			</c:forEach>
		</div>
	</div>

</body>
</html>