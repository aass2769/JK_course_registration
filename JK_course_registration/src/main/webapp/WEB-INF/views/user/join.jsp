<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath}/" />
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
			<div class="row h-100" style="margin-top: 70px;">
				<div
					class="col col-sm-12 col-md-12 col-lg-8 m-0 p-0 w-100 h-100 accounts_col">
					<div class="accounts_image w-100 h-100">
						<img src="${root}image/loginlogo.jpg" width="755" height="505" />
					</div>
					<!--accounts_image-->
				</div>
				<!--account_col-->
				<div class="col col-sm-12 col-md-12 col-lg-4 m-0 p-0 accounts_col">
					<div class="accounts_forms signup_form w-100 h-100" id="signup">
						<div class="title mt-4 p-4 w-100" style="padding-top: 0 !important; padding-bottom: 0 !important;">
							<h1>Sign Up</h1>
						</div>
						<!--title-->
						<form:form action="join_pro" method="post" modelAttribute="userBean" name="form" class="form w-100 p-4" id="form" style="padding-top: 0 !important; padding-bottom: 0 !important;">
							<div class="form-group">
								<form:label path="user_name"/>
								<input type="text" name="name" class="form-control" id="name" />
							</div>
							<!--form-row-->
							<div class="form-group">
								<label for="text">ID</label>
								<div class="input-group">
								<input path="user_id" class="form-control" onkeypress="resetUserIdExist()"/>
								<div class="input-group-append">
									<button type="button" class="btn btn-primary" onclick="checkUserIdExist()">중복확인</button>
								</div>
							</div>
							</div>
							<div class="form-group">
								<label for="signup_password">Password</label> <i
									class="fa fa-eye-slash" id="eye_icon_signup"></i> <input
									type="password" name="pass" class="form-control"
									id="signup_password" />
							</div>
							<div class="form-group">
								<label for="cpass">Confirm Password</label> <input
									type="password" name="cpass" class="form-control" id="cpass" />
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary register_btn w-100">Sign
									Up</button>
							</div>
						</form:form>

						<div class="already_member_box">
							<p class="text-center" id="to_login">I am already member</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>