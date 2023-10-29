<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>JK_course_registration</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  <style>

		.create_form{
			max-width: 800px;
			margin-left: 400px;
		}
   
        .divider {
            margin: 20px 0;
            border-top: 1px solid #ccc;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 10px;
        }
       
        

    </style>

</head>
<body>
	<!-- 상단 메뉴 부분 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp" />
	<div class="create_form">
        <div class="form-header">
            <form class="form-inline">
            	<h2>게시판 글쓰기</h2>
            	</form>
            	<form class="form-inline">
				<a href="${root}create" class="btn btn-primary"  style="background-color: #670AC5; margin-left: 750px;">등록</a>
			</form>
        </div>
        <div class="divider"></div>
        <div class="form-group">
            <label for="category">게시판 선택</label>
            <select class="form-select" aria-label="Default select example">
			  <option selected>Open this select menu</option>
			  <option value="1">One</option>
			  <option value="2">Two</option>
			  <option value="3">Three</option>
			</select>
        </div>
        <div class="form-group">
            <label for="title">제목</label>
           <input class="form-control form-control-lg" type="text" placeholder="제목을 입력하세요." aria-label=".form-control-lg example">
        </div>
        <div class="mb-3">
		  <label for="exampleFormControlTextarea1" class="form-label">내용</label>
		  <textarea class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
		</div>
    </div>

	<!-- 하단 정보 부분 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp" />
</body>
</html>