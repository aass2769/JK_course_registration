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
.course_th {
	height: 40px; /* 원하는 높이로 설정하세요. */
	line-height: 40px; /* height 값과 동일하게 설정하세요. */
	text-align: center;
	border-top: 3px solid #F2F2F2;
}

.center-text {
	height: 30px; /* 원하는 높이로 설정하세요. */
	line-height: 30px; /* height 값과 동일하게 설정하세요. */
	text-align: center;
}

.registration_h2{
	padding-bottom : 20px;
}



</style>
</head>
  <body>
  
	<!-- 상단 메뉴 부분 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp" />
	
	<section class="py-5 text-center container ">
	    <div class="row py-lg-5" style="height: 70vh;">
		<h1 class="text-start registration_h2" style="border-bottom:2px solid #670AC5;">수강신청조회</h1>
		<div class="col-lg-12 col-md-8 mx-auto" style="height: 20vh; margin-top:15px;">
			<div class="card shadow">
				<div class="card-body">
					<div class="search-container">
						<!-- 카테고리 선택(select 옵션) -->
						<div class="row" style="padding-top: 10px;">
						  <div class="col">
						    <select class="form-select" aria-label="Default select" >
								<option selected>과정종류선택</option>
								<option value="1">제목</option>
								<option value="2">게시글</option>
							</select>
						  </div>
						  <div class="col">
						    <select class="form-select" aria-label="Default select" >
								<option selected>과목명선택</option>
								<option value="1">제목</option>
								<option value="2">게시글</option>
							</select>
						  </div>
						  <div class="col-1">
						    <button type="submit" class="btn btn-primary mb-3" style="background-color:#670AC5; border: 2px solid #670AC5; width:78px; margin-right:20px;">검색</button>
						  </div>
						</div>
						             
						
					</div>   
				</div>
			</div>
	      </div>	
	      <div class="col-lg-12 col-md-8 mx-auto d-flex flex-column justify-content-center align-items-center" style="height: 40vh;">
		      <div class="table small" style="width: 100%;">
		      	<h4 style="text-align: left;">총12건</h4>
		        <table class="table table-striped table-sm">
		          <thead>
		            <tr>
		              <th class="course_th" scope="col">과정분류</th>
		              <th class="course_th" scope="col">과정명</th>
		              <th class="course_th" scope="col">교육기간</th>
		              <th class="course_th" scope="col">인원</th>
		              <th class="course_th" scope="col">수강취소</th>
		            </tr>
		          </thead>
		          <tbody>
		            <tr>
		              <td class="center-text">IT/SW 개발</td>
		              <td class="center-text">Java</td>
		              <td class="center-text">2023.11.02 ~ 2023.11.03</td>
		              <td class="center-text">2/40</td>
		              <td class="center-text">
		              	<button type="button" class="btn btn-sm btn-secondary">커리큘럼</button>
		              	<button type="button" class="btn btn-sm btn-danger">수강취소</button>
		              </td>
		            </tr>
		           <tr>
		              <td class="center-text">웹 디자인/퍼블리셔</td>
		              <td class="center-text">Javascript&jQuery</td>
		              <td class="center-text">2023.11.02 ~ 2023.11.03</td>
		              <td class="center-text">2/40</td>
		              <td class="center-text">
		              	<button type="button" class="btn btn-sm btn-secondary">커리큘럼</button>
		              	<button type="button" class="btn btn-sm btn-danger">수강취소</button>
		              </td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		          </tbody>
		        </table>
		      </div>
	      </div>
	    </div>
  </section>
	
	
	<!-- 하단 정보 부분 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp" />
</body>
</html>