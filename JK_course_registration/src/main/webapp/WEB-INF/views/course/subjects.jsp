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
</head>
  <body>
  
	<!-- 상단 메뉴 부분 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp" />
  
  
  	<!-- 화면단부분 -->
<main>

  <section class="py-5 text-center container ">
    <div class="row py-lg-5" style="height: 50vh;">
      <div class="col-lg-6 col-md-8 mx-auto" style="margin: auto">
        <h1 class="fw-light">열정과 꿈을 향한 여정</h1>
        <p class="lead text-body-secondary">여러분이 학원에 발을 디뎠을 때, 이것은 미래를 개척하는 여정의 시작입니다. 컴퓨터와 기술의 세계는 끊임없이 진화하고 있습니다. 이곳에서 배우고 성장함으로써, 여러분은 이 변화를 주도하고 미래의 혁신을 만드는 일원이 될 것입니다.</p>
        <p>
          <a href="#" class="btn btn-primary my-2">Main call to action</a>
          <a href="#" class="btn btn-secondary my-2">Secondary action</a>
        </p>
      </div>
    </div>
  </section>

  <div class="album py-5 bg-body-tertiary" style="height: 50vh;">
    <div class="container">
	<h1 class="col text-center" style="color:#670AC5; margin-bottom:30px">일반과정</h1>
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-3" >

		<div class="col">
			<div class="card shadow-sm">
				<img src="${root }image/course1_1.jpg" class="card-img-top"	alt="Course Image">
					<div class="card-body">
						<p class="card-text fs-4">JAVA 과정</p>
						<div class="d-flex justify-content-center align-items-center">
							<div class="btn-group">
								<button type="button" class="btn btn-sm btn-outline-secondary">커리큘럼</button>
							</div>
						</div>
					</div>
				</div>
		</div>

		<div class="col">
			<div class="card shadow-sm">
				<img src="${root }image/course1_2.jpg" class="card-img-top"	alt="Course Image">
					<div class="card-body">
						<p class="card-text fs-4">JAVA 과정</p>
						<div class="d-flex justify-content-center align-items-center">
							<div class="btn-group">
								<button type="button" class="btn btn-sm btn-outline-secondary">커리큘럼</button>
							</div>
						</div>
					</div>
				</div>
		</div>
        
        <div class="col">
			<div class="card shadow-sm">
				<img src="${root }image/course1_3.jpg" class="card-img-top"	alt="Course Image">
					<div class="card-body">
						<p class="card-text fs-4">JAVA 과정</p>
						<div class="d-flex justify-content-center align-items-center">
							<div class="btn-group">
								<button type="button" class="btn btn-sm btn-outline-secondary">커리큘럼</button>
							</div>
						</div>
					</div>
				</div>
		</div>

       <div class="col">
			<div class="card shadow-sm">
				<img src="${root }image/course1_4.jpg" class="card-img-top"	alt="Course Image">
					<div class="card-body">
						<p class="card-text fs-4">JAVA 과정</p>
						<div class="d-flex justify-content-center align-items-center">
							<div class="btn-group">
								<button type="button" class="btn btn-sm btn-outline-secondary">커리큘럼</button>
							</div>
						</div>
					</div>
				</div>
		</div>
        
      </div>
    </div>
  </div>
  </main>
	<!-- 하단 정보 부분 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp" />
</body>
</html>