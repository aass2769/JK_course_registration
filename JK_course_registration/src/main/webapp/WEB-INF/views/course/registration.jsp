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
	.course_th{
	height: 40px; /* 원하는 높이로 설정하세요. */
    line-height: 40px; /* height 값과 동일하게 설정하세요. */
    text-align: center;
	
	}
	
	.center-text {
    height: 30px; /* 원하는 높이로 설정하세요. */
    line-height: 30px; /* height 값과 동일하게 설정하세요. */
    text-align: center;
  }
</style>
</head>
  <body>
  
	<!-- 상단 메뉴 부분 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp" />
	
	<section class="py-5 text-center container ">
	    <div class="row py-lg-5" style="height: 50vh;">
	      <div class="col-lg-12 col-md-8 mx-auto d-flex flex-column justify-content-center align-items-center" style="height: 40vh;">
	       	<h2>수강신청</h2>
		      <div class="table-responsive small" style="width: 100%;">
		        <table class="table table-striped table-sm">
		          <thead>
		            <tr>
		              <th class="course_th" scope="col">#</th>
		              <th class="course_th" scope="col">Header</th>
		              <th class="course_th" scope="col">Header</th>
		              <th class="course_th" scope="col">Header</th>
		              <th class="course_th" scope="col">Header</th>
		              <th class="course_th" scope="col">Header</th>
		            </tr>
		          </thead>
		          <tbody>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">random</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">random</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">random</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">random</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">random</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">random</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">random</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">random</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">random</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">random</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">random</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">random</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">random</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">random</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">random</td>
		              <td class="center-text">data</td>
		              <td class="center-text">placeholder</td>
		              <td class="center-text">text</td>
		              <td class="center-text">text</td>
		            </tr>
		            <tr>
		              <td class="center-text">1,001</td>
		              <td class="center-text">random</td>
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