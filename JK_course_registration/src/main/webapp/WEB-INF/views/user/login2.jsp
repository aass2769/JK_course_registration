<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="keywords" content="SignUp, Login, Register">
<meta name="keywords" content="Sign up, Sign in">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<!--Bootstrap Css-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<!--Font-aweome-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"
	rel="stylesheet">


</head>
<body>
	<section class="login_section">
		<div class="container outer_container accounts_container">
			<div class="row h-100">
				<div
					class="col col-sm-12 col-md-12 col-lg-8 m-0 p-0 w-100 h-100 accounts_col">
					<div class="accounts_image w-100 h-100">
						<img src="image/spring.png"/>
					</div>
					<!--accounts_image-->
				</div>
				<!--account_col-->
				<div class="col col-sm-12 col-md-12 col-lg-4 m-0 p-0 accounts_col">
					
					<!--accounts_forms-->
					<div class="accounts_forms  w-100 h-100" id="login">
						<div class="title  mt-4 p-4 w-100">
							<h1>수강신청 사이트</h1>
							<p class="mt-3">COURSE REGISTRATION</p>
						</div>
						<!--title-->
						<form method="post" name="form" class="form  w-100 p-4" id="form">
							<div class="form-group">
								<label for="email">ID</label> <input type="email"
									name="email" class="form-control" id="email"/>
							</div>
							<div class="form-group">
								<label for="login_password">Password</label> <i
									class="fa fa-eye-slash" id="eye_icon_login"></i> <input
									type="password" name="pass" class="form-control"/>
							</div>
							<div class="form-group mb-0">
								<button type="submit" class="btn btn-primary register_btn w-100">Sign
									In</button>
							</div>
						</form>

						<div
							class="already_member_box d-flex justify-content-between px-4">
							<span class="text-center" id="to_signup">Create an
								account?</span> <span class="text-center">Forgot password</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>