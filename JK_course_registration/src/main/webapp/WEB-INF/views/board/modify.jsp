<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath}/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>JK_course_registration</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 상단 메뉴 부분 -->
<c:import url="/WEB-INF/views/include/top_menu.jsp"/>

<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
				<form:form action="${root}board/modify_pro" method="post" modelAttribute="editBoardBean">
						<div class="form-group">
							<form:label path="user_name">작성자</form:label>
							<form:input path="user_name"  class="form-control" disabled="disabled"/>
						</div>
						<div class="form-group">
							<form:label path="brd_date">작성 날짜</form:label>
							<form:input path="brd_date" class="form-control" disabled="disabled"/>
						</div>
						<div class="form-group">
							<form:label path="brd_title">제목</form:label>
							<form:input path="brd_title" class="form-control" />
						</div>
						<div class="form-group">
							<form:label path="brd_content">내용</form:label>
							<form:textarea path="brd_content" class="form-control" rows="10" style="resize:none" />
						</div>
						<div class="form-group">
							<form:label path="brd_file">첨부 이미지</form:label>
							<img src="image/logo.png" width="100%"/>	
							<form:input path="brd_file" class="form-control" accept="image/*"/>
						</div>
						<div class="form-group">
							<div class="text-right">
								<form:hidden path="brd_key"/>
								<form:button class="btn btn-primary">수정완료</form:button>
								<a href="${root}board/read?brd_key=${editBoardBean.brd_key}" class="btn btn-info">취소</a>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>

<!-- 하단 정보 부분 -->
<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>
</body>
</html>