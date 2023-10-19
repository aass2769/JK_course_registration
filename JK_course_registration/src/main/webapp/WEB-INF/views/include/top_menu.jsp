<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!-- 상단 메뉴 부분 -->
<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top shadow-lg">
	<a class="navbar-brand" href="index.html">JK_course_registration</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
	        data-target="#navMenu">
		<span class="navbar-toggler-icon"></span>        
	</button>
	<div class="collapse navbar-collapse" id="navMenu">
	<c:forEach var="major" items="${major_list}">
		<ul class="navbar-nav">
			<li class="nav-item">
				<a href="${root}main" class="nav-link">${major.mj_title}</a>
			</li>
		</ul>
	</c:forEach>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item">
				<a href="login.html" class="nav-link">로그인</a>
			</li>
			<li class="nav-item">
				<a href="join.html" class="nav-link">회원가입</a>
			</li>
			<li class="nav-item">
				<a href="modify_user.html" class="nav-link">정보수정</a>
			</li>
			<li class="nav-item">
				<a href="index.html" class="nav-link">로그아웃</a>
			</li>
		</ul>
	</div>
</nav>