<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>JK_course_registration</title>
<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
	<!-- 상단 메뉴 부분 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp" />

	<!-- 홈페이지 상단 이미지 캐러셀 -->
	<div>
		<div id="carouselExampleIndicators" class="carousel slide">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true"aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active" style="height:500px">
					<img src="${root }image/spring.png" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item" style="height:500px">
					<img src="${root }image/spring.png" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item" style="height:500px">
					<img src="${root }image/spring.png" class="d-block w-100" alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>



	<!-- 게시판 미리보기 부분 -->
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-lg-6" style="margin-top: 20px">
				<div class="card shadow">
					<div class="card-body">
						<h4 class="card-title">자유게시판</h4>
						<table class="table table-hover" id='board_list'>
							<thead>
								<tr>
									<th class="text-center w-25">글번호</th>
									<th>제목</th>
									<th class="text-center w-25 d-none d-xl-table-cell">작성날짜</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
							</tbody>
						</table>

						<a href="board_main.html" class="btn btn-primary">더보기</a>
					</div>
				</div>
			</div>
			<div class="col-lg-6" style="margin-top: 20px">
				<div class="card shadow">
					<div class="card-body">
						<h4 class="card-title">유머게시판</h4>
						<table class="table table-hover">
							<thead>
								<tr>
									<th class="text-center w-25">글번호</th>
									<th>제목</th>
									<th class="text-center w-25 d-none d-xl-table-cell">작성날짜</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
							</tbody>
						</table>

						<a href="board_main.html" class="btn btn-primary">더보기</a>
					</div>
				</div>

			</div>
			<div class="col-lg-6" style="margin-top: 20px">
				<div class="card shadow">
					<div class="card-body">
						<h4 class="card-title">정치게시판</h4>
						<table class="table table-hover">
							<thead>
								<tr>
									<th class="text-center w-25">글번호</th>
									<th>제목</th>
									<th class="text-center w-25 d-none d-xl-table-cell">작성날짜</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
							</tbody>
						</table>

						<a href="board_main.html" class="btn btn-primary">더보기</a>
					</div>
				</div>
			</div>
			<div class="col-lg-6" style="margin-top: 20px">
				<div class="card shadow">
					<div class="card-body">
						<h4 class="card-title">스포츠게시판</h4>
						<table class="table table-hover">
							<thead>
								<tr>
									<th class="text-center w-25">글번호</th>
									<th>제목</th>
									<th class="text-center w-25 d-none d-xl-table-cell">작성날짜</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href='board_read.html'>제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
							</tbody>
						</table>

						<a href="board_main.html" class="btn btn-primary">더보기</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 하단 정보 부분 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp" />
</body>
</html>