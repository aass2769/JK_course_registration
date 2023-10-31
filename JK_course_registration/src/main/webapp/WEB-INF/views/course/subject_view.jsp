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
  
  	<section class="py-5 text-center container ">
    <div class="row py-lg-5" style="height: 50vh;">
      <div class="col-lg-6 col-md-8 mx-auto" style="margin: auto">
        <h1 class="fw-light">열정과 꿈을 향한 여정</h1>
        <div class="container text-center">
		  <div class="row">
		    <div class="col-1">
		      1 of 3
		    </div>
		    <div class="col-5">
		      2 of 3 (wider)
		    </div>
		    <div class="col-6">
		      3 of 3
		    </div>
		  </div>
		</div>
          <a href="#" class="btn btn-primary my-2">Main call to action</a>
          <a href="#" class="btn btn-secondary my-2">Secondary action</a>
      </div>
      </div>
  </section>
  
  	<section class="py-5 text-center container ">
    <div class="row py-lg-5">
      <div class="col-lg-10 col-md-8 mx-auto" style="margin: auto">
        <h1 class="fw-light">커리큘럼</h1>
        <div class="container text-center">
		  <div class="row" style="padding-bottom: 12px;">
		    <div class="col-1">
		      단계
		    </div>
		    <div class="col-5">
		      제목
		    </div>
		    <div class="col-6">
		      내용
		    </div>
		  </div>
		  <c:forEach var="sb_info" items="${subjectInfoList }">
			 <div class="row" style="padding-bottom: 12px;">
			     <div class="col-1">
					${sb_info.ct_key }
			     </div>
			     <div class="col-5">
			    	${sb_info.ct_title }
			     </div>
		    	 <div class="col-6">
		    		${sb_info.ct_description }
		    	 </div>
		  	</div>
		  </c:forEach>
		 
		</div>
          <a href="#" class="btn btn-primary my-2">Main call to action</a>
          <a href="#" class="btn btn-secondary my-2">Secondary action</a>
      </div>
    </div>
  </section>
  
	<!-- 하단 정보 부분 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp" />
</body>
</html>