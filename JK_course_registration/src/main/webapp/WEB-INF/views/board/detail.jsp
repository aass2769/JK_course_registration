<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath}/" />
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
	.pagination .page-link {
        color: white;
        background-color: #1D202E; /* 페이지네이션 배경색을 #670AC5로 설정 */
        border: none; /* 테두리 없애기 */
    }

    .pagination .page-item.active .page-link {
        background-color: #670AC5;
        border: none;
    }
    
	td a {
		color: #1D202E;
		 text-decoration: none;
	}
	
	.form-select {
    width: 150px; /* 원하는 너비 값으로 설정하세요 */
	}

	.search-form {
		display: flex;
		align-items: center;
		margin-bottom: 20px;
		margin-right: 20px;
	}

	.search-button {
		width: 60px; /* 버튼 너비 조정 */
		background-color: #1D202E;
		
	}

	.search-container {
        display: flex;
        align-items: flex-start; /* 아이템들을 상단에 정렬 */
        justify-content: space-between; /* 아이템들을 좌우로 정렬 */
        margin-top: 20px;
        margin-bottom: 20px;
    }
    .table thead tr {
        border-top: 3px solid #1D202E;
        border-bottom: 3px solid #1D202E; /* thead의 선 색상 변경 */
        color: #1D202E; /* thead의 글자 색상 변경 */
    }
   
</style>

</head>
<body>

<!-- 상단 메뉴 부분 -->
<c:import url="/WEB-INF/views/include/top_menu.jsp"/>

<!-- 게시글 리스트 -->
<div class="container" style="margin-top:100px">
	<div class="card shadow">
		<div class="card-body">
		<h4 class="card-title" >${cr_course}</h4>
                <div class="search-container">
                	<a href="${root}board/allList?cr_key=${cr_key}&cr_course=${cr_course}"><button class="btn btn-light"	style="background-color: #670AC5; color: #ffffff;">전체 글 보기</button></a>
                <%--검색 --%>
                	<form:form class="form-inline" action="${root}board/detail" method="get" modelAttribute="searchBean">
                	<div class="search-form">
                		<input type="hidden" name="cr_key" value="${cr_key}"/>
                		<input type="hidden" name="cr_course" value="${cr_course}"> 
	                    <!-- 카테고리 선택(select 옵션) -->
	                    <form:select class="form-select" aria-label="Default select" path="brd_search_category" style="width: 150px;  ">
						  <option selected value="전체">전체</option>
						  <option value="제목">제목</option>
						  <option value="게시글">게시글</option>
						  <option value="글작성자">글작성자</option>
						</form:select>
	                    <!-- 검색 폼과 버튼 -->
	                    
	                    	<form:input  class="form-control search-input" placeholder="검색어를 입력하세요" path="brd_search_content" style="width: 180px;"/>
	                    	<form:button class="btn btn-primary search-button">검색</form:button>
	                    </div>
                    </form:form>
                </div> 
			<table class="table table-hover" id='board_list'>
				<thead style="color: #1D202E;">
					<tr>
						<th class="text-center d-none d-md-table-cell">글번호</th>
						<th class="w-50">제목</th>
						<th class="text-center d-none d-md-table-cell">작성자</th>
						<th class="text-center d-none d-md-table-cell">작성날짜</th>
						<th class="text-center d-none d-md-table-cell">조회</th>
						<th class="text-center d-none d-md-table-cell">좋아요</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="brd" items="${board_list}">
						<tr>
							<td class="text-center d-none d-md-table-cell" >${brd.brd_key}</td>
							<td><a href="${root}board/read?cr_key=${cr_key}&cr_course=${cr_course}&brd_key=${brd.brd_key}">${brd.brd_title}</a></td>
							<td class="text-center d-none d-md-table-cell">${brd.user_name}</td>
							<td class="text-center d-none d-md-table-cell">${brd.brd_date}</td>
							<td class="text-center d-none d-md-table-cell">${brd.brd_hit}</td>
							<td class="text-center d-none d-md-table-cell">${brd.total_likes_count}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<div class="d-none d-md-block">
				<ul class="pagination justify-content-center">
					<li class="page-item">
						<a href="#" class="page-link">이전</a>
					</li>
					<li class="page-item">
						<a href="#" class="page-link">1</a>
					</li>
					<li class="page-item">
						<a href="#" class="page-link">2</a>
					</li>
					<li class="page-item">
						<a href="#" class="page-link">3</a>
					</li>
					<li class="page-item">
						<a href="#" class="page-link">4</a>
					</li>
					<li class="page-item">
						<a href="#" class="page-link">5</a>
					</li>
					<li class="page-item">
						<a href="#" class="page-link">6</a>
					</li>
					<li class="page-item">
						<a href="#" class="page-link">7</a>
					</li>
					<li class="page-item">
						<a href="#" class="page-link">8</a>
					</li>
					<li class="page-item">
						<a href="#" class="page-link">9</a>
					</li>
					<li class="page-item">
						<a href="#" class="page-link">10</a>
					</li>
					<li class="page-item">
						<a href="#" class="page-link">다음</a>
					</li>
				</ul>
			</div>
			
			<div class="d-block d-md-none">
				<ul class="pagination justify-content-center">
					<li class="page-item">
						<a href="#" class="page-link">이전</a>
					</li>
					<li class="page-item">
						<a href="#" class="page-link">다음</a>
					</li>
				</ul>
			</div>
    
			<div class="text-right">
				<a href="${root}board/create" class="btn btn-primary"  style="background-color: #670AC5; margin-left: 1170px;">글쓰기</a>
			</div>
		</div>
	</div>
</div>

<!-- 하단 정보 부분 -->
<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>

</body>
</html>