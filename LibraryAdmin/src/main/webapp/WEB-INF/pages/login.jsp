<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
<%@include file="style/login.css"%> 

</style>

</head>
<body>
	<header>
        <h2 class="logo">Libary</h2>
        <nav class="navigation">
            <a href="#">Home</a>
            <a href="#">Feature</a>
            <a href="#">About Us</a>
            <a href="#">More</a>
            <button class="login-btnPopup">Login</button>
        </nav>
    </header>
    <p class="error">${message}</p>
	<div class="wrapper">
		<span class="close"><ion-icon name="close-outline"></ion-icon></span>
		<div class="form-box login">
			<h2>Login</h2>
			<form action="login" method="POST">
				<div class="input-box">
					<span class="icon"><ion-icon name="Email"></ion-icon></span> <input
						type="email" required placeholder="Enter Email" value="Admin123@gmail.com" name="email">
				</div>

				<div class="input-box">
					<span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
					<input type="password" required placeholder="Enter Password" value="Admin4567" name="password">
				</div>
				<div class="remenber-forget">
					<label><input type="checkbox">Remember Me</label> <a
						href="#">Forget Password</a>
				</div>
				<button type="submit" class="login-btn" id="loginButton">Login</button>
				<div class="login-register">
					<p>
						Don't Have an Account? <a href="#" class="register-link">register
							Link</a>
					</p>
				</div>
			</form>
		</div>
		<div class="form-box register">
			<h2>Register</h2>
			<form action="#">
				<div class="input-box">
					<span class="icon"><ion-icon name="person-sharp"></ion-icon></span>
					<input type="text" required placeholder="User Name">
				</div>
				<div class="input-box">
					<span class="icon"><ion-icon name="mail"></ion-icon></span> <input
						type="text" required placeholder="Email">
				</div>

				<div class="input-box">
					<span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
					<input type="password" required placeholder="Password">
				</div>
				<div class="remenber-forget">
					<label><input type="checkbox">I Agree terms &
						Conditions</label>
				</div>
				<button type="submit" class="login-btn">Register</button>
				<div class="login-register">
					<p>
						Already Have an Account? <a href="#" class="login-link">Login</a>
					</p>
				</div>
			</form>
		</div>
	</div>
<script>
const wrapper = document.querySelector(".wrapper");
const registerLink = document.querySelector(".register-link");
const loginLink = document.querySelector(".login-link");
const logoinBtn=document.querySelector(".login-btnPopup");
const close=document.querySelector(".close");


registerLink.addEventListener('click', () => {
    wrapper.classList.add('active');
});

loginLink.addEventListener('click', () => {
    wrapper.classList.remove('active');
});

logoinBtn.addEventListener('click', () => {
    wrapper.classList.add('active-Popup');
})
close.addEventListener('click', () => {
    wrapper.classList.remove('active-Popup');
});


</script>
</body>
</html>