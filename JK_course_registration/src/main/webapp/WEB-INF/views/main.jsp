<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
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

<style>

	td a {
			color: #1D202E;
			 text-decoration: none;
	}

	.table thead tr {
	   border-top: 3px solid #1D202E;
	   border-bottom: 3px solid #1D202E; /* thead의 선 색상 변경 */
	   color: #1D202E; /* thead의 글자 색상 변경 */
	}
	
	.a_subject {
	  text-decoration: none;
	}
    
</style> 
  
</head>
<body>
	<!-- 상단 메뉴 부분 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp" />

	<!-- 홈페이지 상단 수강신청 이미지 캐러셀 -->
	<div>
		<div id="carouselExampleIndicators" class="carousel slide" style="background-color: #670AC5;">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true"aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner" style="height: 30vh; width:60vw; margin: 0 auto;">
				<div class="carousel-item active">
					<img src="${root }image/main_major1.png" class="d-block w-100" alt="..." style="height: 30vh;">
				</div>
				<div class="carousel-item">
					<img src="${root }image/main_major2.png" class="d-block w-100" alt="..." style="height: 30vh;">
				</div>
				<div class="carousel-item">
					<img src="${root }image/main_major3.png" class="d-block w-100" alt="..." style="height: 30vh;">
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

	<!-- 수강신청 카드 캐러셀 -->
	<div id="course-carousel" class="carousel slide" data-bs-ride="carousel">
	    <div class="carousel-inner">

        <c:forEach var="course" items="${courseList}" varStatus="courseStatus">
            <c:set var="activeClass" value="${courseStatus.index == 0 ? 'active' : ''}"/>

            <div class="carousel-item ${activeClass}" data-bs-interval="3000">
                <div class="container px-4 py-5" id="custom-cards">
                    <h2 class="pb-2 border-bottom">${course.cr_course}</h2>
                    <div class="row row-cols-1 row-cols-lg-4 align-items-stretch g-4 py-5">
                        <c:forEach var="subject" items="${subjectsList}" varStatus="subjectStatus">
                            <c:if test="${subjectStatus.index >= courseStatus.index * 4 && subjectStatus.index < (courseStatus.index + 1) * 4}">
                                <div class="col">
                                	<a href="${root }course/subject_view?cr_key=${subject.cr_key}" class="a_subject">
                                    <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg"
                                         style="background-image: url('${root}image/${subject.sb_photo}.jpg'); background-size: cover;">
                                        <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
                                            <h3 class="pt-5 mt-5 mb-4 display-10 lh-1 fw-bold">${subject.sb_subject}</h3>
                                            <ul class="d-flex list-unstyled mt-auto">
                                                <!-- 내용 -->
                                            </ul>
                                        </div>
                                    </div>
                                    </a>
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </c:forEach>
    	</div>

	    <!-- 캐러셀 이전/다음 버튼 -->
	    <button class="carousel-control-prev" type="button" data-bs-target="#course-carousel" data-bs-slide="prev">
	        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	        <span class="visually-hidden">Previous</span>
	    </button>
	    <button class="carousel-control-next" type="button" data-bs-target="#course-carousel" data-bs-slide="next">
	        <span class="carousel-control-next-icon" aria-hidden="true"></span>
	        <span class="visually-hidden">Next</span>
	    </button>
	</div>




	 <!-- 게시판 미리보기 부분 -->
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-lg-6" style="margin-top: 20px">
				<div class="card shadow">
					<div class="card-body">
						<h4 class="card-title">자유게시판</h4>
						<table class="table table-hover" id='board_list'>
                            <thead style="color: #1D202E;">
                                <tr>
                                    <th class="text-center d-none d-md-table-cell">글번호</th>
                                    <th class="w-50">제목</th>
                                    <th class="text-center d-none d-md-table-cell">작성자</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell" >10</td>
                                    <td><a href="#">오늘 점메추 받습니다..</a></td>
                                    <td class="text-center d-none d-md-table-cell">혜미</td>
                                </tr>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell">10</td>
                                    <td><a href='board/read.html'>글 제목 입니다</a></td>
                                    <td class="text-center d-none d-md-table-cell">홍길동</td>
                                </tr>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell">10</td>
                                    <td><a href='board_read.html'>글 제목 입니다</a></td>
                                    <td class="text-center d-none d-md-table-cell">홍길동</td>
                                </tr>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell">10</td>
                                    <td><a href='board_read.html'>글 제목 입니다</a></td>
                                    <td class="text-center d-none d-md-table-cell">홍길동</td>
                                </tr>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell">10</td>
                                    <td><a href='board_read.html'>글 제목 입니다</a></td>
                                    <td class="text-center d-none d-md-table-cell">홍길동</td>
                                </tr>
                            </tbody>
						</table> 
						<a href="board_main.html" class="btn btn-primary" style="background-color: #1D202E; margin-left: 528px;">더보기</a>
					</div>
				</div>
			</div>
			
			<div class="col-lg-6" style="margin-top: 20px">
				<div class="card shadow">
					<div class="card-body">
						<h4 class="card-title">자유게시판</h4>
						<table class="table table-hover" id='board_list'>
                            <thead style="color: #1D202E;">
                                <tr>
                                    <th class="text-center d-none d-md-table-cell">글번호</th>
                                    <th class="w-50">제목</th>
                                    <th class="text-center d-none d-md-table-cell">작성자</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell" >10</td>
                                    <td><a href="#">오늘 점메추 받습니다..</a></td>
                                    <td class="text-center d-none d-md-table-cell">혜미</td>
                                </tr>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell">10</td>
                                    <td><a href='board/read.html'>글 제목 입니다</a></td>
                                    <td class="text-center d-none d-md-table-cell">홍길동</td>
                                </tr>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell">10</td>
                                    <td><a href='board_read.html'>글 제목 입니다</a></td>
                                    <td class="text-center d-none d-md-table-cell">홍길동</td>
                                </tr>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell">10</td>
                                    <td><a href='board_read.html'>글 제목 입니다</a></td>
                                    <td class="text-center d-none d-md-table-cell">홍길동</td>
                                </tr>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell">10</td>
                                    <td><a href='board_read.html'>글 제목 입니다</a></td>
                                    <td class="text-center d-none d-md-table-cell">홍길동</td>
                                </tr>
                            </tbody>
						</table> 
						<a href="board_main.html" class="btn btn-primary" style="background-color: #1D202E; margin-left: 528px;">더보기</a>
					</div>
				</div>
			</div>
			<div class="col-lg-6" style="margin-top: 20px">
				<div class="card shadow">
					<div class="card-body">
						<h4 class="card-title">자유게시판</h4>
						<table class="table table-hover" id='board_list'>
                            <thead style="color: #1D202E;">
                                <tr>
                                    <th class="text-center d-none d-md-table-cell">글번호</th>
                                    <th class="w-50">제목</th>
                                    <th class="text-center d-none d-md-table-cell">작성자</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell" >10</td>
                                    <td><a href="#">오늘 점메추 받습니다..</a></td>
                                    <td class="text-center d-none d-md-table-cell">혜미</td>
                                </tr>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell">10</td>
                                    <td><a href='board/read.html'>글 제목 입니다</a></td>
                                    <td class="text-center d-none d-md-table-cell">홍길동</td>
                                </tr>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell">10</td>
                                    <td><a href='board_read.html'>글 제목 입니다</a></td>
                                    <td class="text-center d-none d-md-table-cell">홍길동</td>
                                </tr>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell">10</td>
                                    <td><a href='board_read.html'>글 제목 입니다</a></td>
                                    <td class="text-center d-none d-md-table-cell">홍길동</td>
                                </tr>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell">10</td>
                                    <td><a href='board_read.html'>글 제목 입니다</a></td>
                                    <td class="text-center d-none d-md-table-cell">홍길동</td>
                                </tr>
                            </tbody>
						</table> 
						<a href="board_main.html" class="btn btn-primary" style="background-color: #1D202E; margin-left: 528px;">더보기</a>
					</div>
				</div>
			</div>
            <div class="col-lg-6" style="margin-top: 20px">
				<div class="card shadow">
					<div class="card-body">
						<h4 class="card-title">자유게시판</h4>
						<table class="table table-hover" id='board_list'>
                            <thead style="color: #1D202E;">
                                <tr>
                                    <th class="text-center d-none d-md-table-cell">글번호</th>
                                    <th class="w-50">제목</th>
                                    <th class="text-center d-none d-md-table-cell">작성자</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell" >10</td>
                                    <td><a href="#">오늘 점메추 받습니다..</a></td>
                                    <td class="text-center d-none d-md-table-cell">혜미</td>
                                </tr>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell">10</td>
                                    <td><a href='board/read.html'>글 제목 입니다</a></td>
                                    <td class="text-center d-none d-md-table-cell">홍길동</td>
                                </tr>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell">10</td>
                                    <td><a href='board_read.html'>글 제목 입니다</a></td>
                                    <td class="text-center d-none d-md-table-cell">홍길동</td>
                                </tr>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell">10</td>
                                    <td><a href='board_read.html'>글 제목 입니다</a></td>
                                    <td class="text-center d-none d-md-table-cell">홍길동</td>
                                </tr>
                                <tr>
                                    <td class="text-center d-none d-md-table-cell">10</td>
                                    <td><a href='board_read.html'>글 제목 입니다</a></td>
                                    <td class="text-center d-none d-md-table-cell">홍길동</td>
                                </tr>
                            </tbody>
						</table> 
						<a href="board_main.html" class="btn btn-primary" style="background-color: #1D202E; margin-left: 528px;">더보기</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 하단 정보 부분 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp" />
</body>
</html>