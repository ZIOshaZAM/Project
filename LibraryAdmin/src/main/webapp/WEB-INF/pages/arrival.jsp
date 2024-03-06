<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Arrival</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: sans-serif;
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
	height: 340px;
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
	margin: 8px 0;
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
	<div class="arrivals" id="arrivle">
		<h1>New Arrivals</h1>

		<div class="arrivals_box">

			<div class="arrivals_card">
				<div class="arrivals_image">
					<img src="image/arrival_1.jpg">
				</div>
				<div class="arrivals_tag">
					<p>New Arrivals</p>
					<div class="arrivals_icon">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>
					<a href="bookdetail.html" class="arrivals_btn">Learn More</a>
				</div>
			</div>

			<div class="arrivals_card">
				<div class="arrivals_image">
					<img src="image/arrival_2.jpg">
				</div>
				<div class="arrivals_tag">
					<p>New Arrivals</p>
					<div class="arrivals_icon">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>
					<a href="bookdetail.html" class="arrivals_btn">Learn More</a>
				</div>
			</div>

			<div class="arrivals_card">
				<div class="arrivals_image">
					<img src="image/arrival_3.jpg">
				</div>
				<div class="arrivals_tag">
					<p>New Arrivals</p>
					<div class="arrivals_icon">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>
					<a href="bookdetail.html" class="arrivals_btn">Learn More</a>
				</div>
			</div>

			<div class="arrivals_card">
				<div class="arrivals_image">
					<img src="image/arrival_4.jpg">
				</div>
				<div class="arrivals_tag">
					<p>New Arrivals</p>
					<div class="arrivals_icon">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>
					<a href="bookdetail.html" class="arrivals_btn">Learn More</a>
				</div>
			</div>

			<div class="arrivals_card">
				<div class="arrivals_image">
					<img src="image/arrival_5.jpg">
				</div>
				<div class="arrivals_tag">
					<p>New Arrivals</p>
					<div class="arrivals_icon">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>
					<a href="bookdetail.html" class="arrivals_btn">Learn More</a>
				</div>
			</div>

			<div class="arrivals_card">
				<div class="arrivals_image">
					<img src="image/arrival_6.jpg">
				</div>
				<div class="arrivals_tag">
					<p>New Arrivals</p>
					<div class="arrivals_icon">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>
					<a href="bookdetail.html" class="arrivals_btn">Learn More</a>
				</div>
			</div>

			<div class="arrivals_card">
				<div class="arrivals_image">
					<img src="image/arrival_7.jpg">
				</div>
				<div class="arrivals_tag">
					<p>New Arrivals</p>
					<div class="arrivals_icon">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>
					<a href="bookdetail.html" class="arrivals_btn">Learn More</a>
				</div>
			</div>

			<div class="arrivals_card">
				<div class="arrivals_image">
					<img src="image/arrival_8.webp">
				</div>
				<div class="arrivals_tag">
					<p>New Arrivals</p>
					<div class="arrivals_icon">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>
					<a href="bookdetail.html" class="arrivals_btn">Learn More</a>
				</div>
			</div>

			<div class="arrivals_card">
				<div class="arrivals_image">
					<img src="image/arrival_9.jpg">
				</div>
				<div class="arrivals_tag">
					<p>New Arrivals</p>
					<div class="arrivals_icon">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>
					<a href="bookdetail.html" class="arrivals_btn">Learn More</a>
				</div>
			</div>

			<div class="arrivals_card">
				<div class="arrivals_image">
					<img src="image/arrival_10.jpg">
				</div>
				<div class="arrivals_tag">
					<p>New Arrivals</p>
					<div class="arrivals_icon">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>
					<a href="bookdetail.html" class="arrivals_btn">Learn More</a>
				</div>
			</div>

		</div>
	</div>
</body>
</html>