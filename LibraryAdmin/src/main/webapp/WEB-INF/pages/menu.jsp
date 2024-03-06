<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="styles/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: sans-serif;
}

html {
	scroll-behavior: smooth;
}

section {
	width: 100%;
	height: 100vh;
	background-image: url(image/bg.png);
	background-size: cover;
	background-position: center;
}

.logoImg {
	height: 50px;
	margin-left: 400px;
}

section .main {
	display: flex;
	align-items: center;
	justify-content: space-around;
	position: relative;
	top: 10%;
}

section .main h1 {
	position: relative;
	font-size: 55px;
	top: 80px;
	left: 25px;
}

section .main h1 span {
	color: #089da1;
}

section .main p {
	width: 650px;
	text-align: justify;
	line-height: 22px;
	position: relative;
	top: 125px;
	left: 25px;
}

section .main .main_tag .main_btn {
	background: #089da1;
	padding: 10px 20px;
	position: relative;
	top: 200px;
	left: 25px;
	color: #fff;
	text-decoration: none;
}

section .main .main_img img {
	width: 780px;
	position: relative;
	top: 90px;
	left: 20px;
}

/*services*/
.services {
	width: 100%;
	height: auto;
	margin: 35px 0;
}

.services .services_box {
	width: 95%;
	margin: 0 auto;
	display: flex;
	align-items: center;
	justify-content: space-around;
}

.services .services_box .services_card {
	text-align: center;
	width: 310px;
	height: auto;
	box-shadow: 0 0 8px #089da1;
	padding: 15px 10px;
}

.services .services_box .services_card i {
	color: #089da1;
	font-size: 45px;
	margin-bottom: 15px;
	cursor: pointer;
}

.services .services_box .services_card h3 {
	margin-bottom: 10px;
}

/*about*/
.about {
	width: 100%;
	height: auto;
	padding: 20px;
	display: flex;
	align-items: center;
	justify-content: space-around;
}

.about .about_image img {
	width: 800px;
}

.about .about_tag h1 {
	font-size: 50px;
	position: relative;
	bottom: 35px;
}

.about .about_tag p {
	line-height: 22px;
	width: 650px;
	text-align: justify;
	margin-bottom: 15px;
}

.about .about_tag .about_btn {
	padding: 10px 20px;
	background: #089da1;
	color: #fff;
	text-decoration: none;
	position: relative;
	top: 50px;
}

/*Books*/
.featured_boks {
	width: 100%;
	height: 100vh;
	padding: 70px 0;
}

.featured_boks h1 {
	display: flex;
	align-items: center;
	justify-content: center;
	margin-bottom: 30px;
	font-size: 45px;
}

.featured_boks .featured_book_box {
	width: 95%;
	height: 60vh;
	margin: 0 auto;
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr
		1fr 1fr 1fr;
	overflow: hidden;
	overflow-x: scroll;
}

.featured_boks .featured_book_box .featured_book_card {
	width: 250px;
	height: 420px;
	text-align: center;
	padding: 5px;
	border: 1px solid #919191;
	margin: auto 20px;
}

.featured_boks .featured_book_box .featured_book_card:hover {
	box-shadow: 0 0 5px #089da1;
}

.featured_boks .featured_book_box .featured_book_card .featurde_book_img img
	{
	width: 150px;
}

.featured_boks .featured_book_box .featured_book_card .featurde_book_tag h2
	{
	margin: 12px;
}

.featured_boks .featured_book_box .featured_book_card .featurde_book_tag .writer
	{
	color: #919191;
}

.featured_boks .featured_book_box .featured_book_card .featurde_book_tag .categories
	{
	color: #089da1;
	margin-top: 8px;
}

.featured_boks .featured_book_box .featured_book_card .featurde_book_tag .book_price
	{
	margin-top: 8px;
	font-weight: bold;
	margin-bottom: 15px;
}

.featured_boks .featured_book_box .featured_book_card .featurde_book_tag .book_price sub
	{
	font-weight: 100;
	padding: 0 5px;
}

.featured_boks .featured_book_box .featured_book_card .featurde_book_tag .f_btn
	{
	padding: 8px 20px;
	border: 2px solid #089da1;
	text-decoration: none;
	color: #000;
}

::-webkit-scrollbar {
	width: 10px;
	height: 5px;
}

::-webkit-scrollbar-track {
	box-shadow: inset 0 0 8px rgba(0, 0, 0, 0.2);
}

::-webkit-scrollbar-thumb {
	background: #089da1;
	border-radius: 10px;
}

/*arrivals*/
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

/*reviews*/
.reviews {
	width: 100%;
	height: auto;
}

.reviews h1 {
	text-align: center;
	font-size: 50px;
	margin-top: 85px;
}

.reviews .review_box {
	width: 95%;
	height: 50vh;
	margin: 15px auto;
	display: flex;
	align-items: center;
	justify-content: center;
}

.reviews .review_box .review_card {
	width: 400px;
	height: 320px;
	box-shadow: 0 0 8px black;
	padding: 15px;
	margin: 0 12px;
}

.reviews .review_box .review_card i {
	float: right;
	font-size: 120px;
	position: relative;
	bottom: 20px;
	color: black;
}

.reviews .review_box .review_card .card_top img {
	width: 80px;
	border-radius: 50%;
	margin-bottom: 10px;
}

.reviews .review_box .review_card .card p {
	margin: 10px 0 10px 0;
	text-align: justify;
	line-height: 22px;
}

.reviews .review_box .review_card .card .review_icon i {
	font-size: 16px;
	float: left;
	margin-top: 20px;
	color: #089da1;
	padding: 0 1px;
}

.amazon-header {
	background-color: rgb(19, 25, 33);
	color: white;
	padding-left: 15px;
	padding-right: 15px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	height: 90px;
}

.amazon-header-left-section {
	width: 180px;
}

@media ( max-width : 800px) {
	.amazon-header-left-section {
		width: unset;
	}
}

.header-link {
	display: inline-block;
	padding: 6px;
	border-radius: 2px;
	cursor: pointer;
	text-decoration: none;
	border: 1px solid rgba(0, 0, 0, 0);
}

.header-link:hover {
	border: 1px solid white;
}

.amazon-header-middle-section {
	flex: 1;
	max-width: 100px;
	display: flex;
	padding: 0;
	position: absolute;
	left: 130px;
}

.search-box {
	width: fit-content;
	height: fit-content;
	position: relative;
}

.input-search {
	height: 50px;
	width: 50px;
	border-style: none;
	padding: 10px;
	font-size: 18px;
	letter-spacing: 2px;
	outline: none;
	border-radius: 25px;
	transition: all .5s ease-in-out;
	background-color: #22a6b3;
	padding-right: 40px;
	color: #fff;
}

.input-search::placeholder {
	color: rgba(255, 255, 255, .5);
	font-size: 18px;
	letter-spacing: 2px;
	font-weight: 100;
}

.btn-search {
	width: 50px;
	height: 50px;
	border-style: none;
	font-size: 20px;
	font-weight: bold;
	outline: none;
	cursor: pointer;
	border-radius: 50%;
	position: absolute;
	right: 0px;
	color: #ffffff;
	background-color: transparent;
	pointer-events: painted;
}

.btn-search:focus ~ .input-search {
	width: 300px;
	border-radius: 0px;
	background-color: transparent;
	border-bottom: 1px solid rgba(255, 255, 255, .5);
	transition: all 500ms cubic-bezier(0, 0.110, 0.35, 2);
}

.input-search:focus {
	width: 300px;
	border-radius: 0px;
	background-color: transparent;
	border-bottom: 1px solid rgba(255, 255, 255, .5);
	transition: all 500ms cubic-bezier(0, 0.110, 0.35, 2);
}

.search-icon {
	height: 22px;
	margin-left: 2px;
	margin-top: 3px;
}

.navigation {
	margin-left: 400px;
}

.navigation .atag {
	position: relative;
	font-size: 1.1em;
	color: white;
	text-decoration: none;
	margin-left: 10px;
}

.navigation button {
	appearance: button;
	background-color: #000;
	border: 1px solid #000;
	border-radius: 4px;
	box-shadow: #fff 4px 4px 0 0, #000 4px 4px 0 1px;
	box-sizing: border-box;
	color: #fff;
	font-weight: 600;
	cursor: pointer;
	display: inline-block;
	font-family: ITCAvantGardeStd-Bk, Arial, sans-serif;
	font-size: 14px;
	font-weight: 400;
	line-height: 20px;
	margin: 0 5px 10px 0;
	overflow: visible;
	padding: 12px 40px;
	text-align: center;
	text-transform: none;
	touch-action: manipulation;
	user-select: none;
	-webkit-user-select: none;
	vertical-align: middle;
	white-space: nowrap;
}

.button-50:focus {
	text-decoration: none;
}

.button-50:hover {
	text-decoration: none;
}

.button-50:active {
	box-shadow: rgba(0, 0, 0, .125) 0 3px 5px inset;
	outline: 0;
}

.button-50:not([disabled]):active {
	box-shadow: #fff 2px 2px 0 0, #000 2px 2px 0 1px;
	transform: translate(2px, 2px);
}

@media ( min-width : 768px) {
	.button-50 {
		padding: 12px 50px;
	}
}

.dropdown_show {
	display: flex;
	align-items: center;
	justify-content: center;
	padding-right: 90px;
}

.dropdown_show .dropdown-menu {
	z-index: 1000;
}

.amazon-header-right-section {
	width: 180px;
	flex-shrink: 0;
	display: flex;
	justify-content: end;
}

.orders-link {
	color: white;
}

.returns-text {
	display: block;
	font-size: 13px;
}

.orders-text {
	display: block;
	font-size: 15px;
	font-weight: 700;
}

.cart-link {
	color: white;
	display: flex;
	align-items: center;
	position: relative;
}

.cart-icon {
	width: 50px;
}

.cart-text {
	margin-top: 12px;
	font-size: 15px;
	font-weight: 700;
}

.cart-quantity {
	color: rgb(240, 136, 4);
	font-size: 16px;
	font-weight: 700;
	position: absolute;
	top: 4px;
	left: 22px;
	width: 26px;
	text-align: center;
}
</style>
</head>
<body>

	<div class="amazon-header">
		<div class="amazon-header-left-section">
			<div class="search-box">
				<button class="btn-search">
					<img class="search-icon" src="images/icons/search-icon.png">
					</i>
				</button>
				<input type="text" class="input-search"
					placeholder="Type to Search...">
			</div>

		</div>
		<div class="amazon-header-middle-section">

			<div class="logo">
				<a href="#Home"> <img src="image/logo.png" class="logoImg">
				</a>
			</div>
		</div>
		<div class="navigation">
			<nav>
				<a href="#Home" class="atag">Home</a> <a href="#About" class="atag">About</a>
				<a href="#Featured" class="atag">Featured</a> <a href="#arrivle"
					class="atag">Arrivals</a> <a href="adminView" class="atag">
					Admin View </a>
					<a href="payment" class="atag">
					Payment </a>

			</nav>
		</div>
		<div class="amazon-header-right-section">

			<a class="orders-link header-link" href="orders.html"> <span
				class="returns-text">Returns</span> <span class="orders-text">&
					Orders</span>
			</a> <a class="cart-link header-link" href="checkout.html"> <img
				class="cart-icon" src="images/icons/cart-icon.png">
				<div class="cart-quantity">3</div>
				<div class="cart-text">Cart</div>
			</a>
		</div>
	</div>
</body>
</html>