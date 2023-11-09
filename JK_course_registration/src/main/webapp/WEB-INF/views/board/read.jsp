<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>JK_course_registration</title>
<!-- 폰트어썸 CDN  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<style>

.post {
	background-color: #ffffff;
	border-radius: 5px;
	margin-bottom: 20px;
}

.icons {
	display: flex;
	align-items: center;
}

.icon {
	margin-right: 10px;
}

.comments {
	margin-top: 30px;
}

.comment {
	margin-bottom: 20px;
}

.divider {
	border-top: 1px solid #35016D;
	margin-top: 20px;
	margin-bottom: 20px;
}

.sort-buttons {
	display: flex;
	justify-content: flex-end;
	margin-bottom: 20px;
}

.sort-button {
	background: transparent;
	border: none;
	cursor: pointer;
	font-size: 16px;
	margin-right: 20px;
	color: #35016D;
}

.sort-button.active {
	font-weight: bold;
}

.sort-button:focus {
	outline: none;
}

.comment-header {
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin-bottom: 20px;
}

.comment-header h3 {
	margin: 0;
	text-align: left;
}

#commentContent::placeholder {
	/* placeholder 텍스트의 색상을 지정합니다. */
	color: #1D202E; /* 흰색 등 원하는 색상으로 변경 가능 */
}

.btn-secondary.mr-2 {
	margin-left: 0px; /* 원하는 여백 크기로 설정 */
}

</style>

</head>
<body>
	<!-- 상단 메뉴 부분 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp" />

	<div class="container">
		<div class="post">
		<a href="${root}board/detail?cr_key=${readBoard.cr_key}&cr_course=${readBoard.cr_course}" class="btn btn-link text-dark">${readBoard.cr_course}</a>
			<h2>${readBoard.brd_title}</h2>
			<p>${readBoard.user_name}</p>
			<p>${readBoard.brd_date} 조회 ${readBoard.brd_hit}</p>
			<hr>
			<p>${readBoard.brd_content}</p>
			<div class="icons">
				<div class="icon">
					<i class="fas fa-thumbs-up"></i> <span>${readBoard.brd_likes_count}</span>
				</div>
				<div class="icon">
					<i class="fas fa-comment"></i> <span>3</span>
				</div>
			</div>
			<div class="text-center">
				<button class="btn btn-light"
					style="background-color: #670AC5; color: #ffffff;">
					<i class="fas fa-thumbs-up"></i> 좋아요
				</button>
			</div>
			<c:choose>
				<c:when test="${readBoard.brd_writer == user_key}">
					<div class="d-flex justify-content-end">
	                        <a href="${root}board/modify?brd_key=${readBoard.brd_key}"><button class="btn btn-link text-dark mr-2">수정</button></a>
	                        <a href="${root}board/delete?brd_key=${readBoard.brd_key}&cr_key=${readBoard.cr_key}&cr_course=${readBoard.cr_course}"><button class="btn btn-link text-dark">삭제</button></a>
	                 </div>
                 </c:when>
                 <c:otherwise>
                 </c:otherwise>
            </c:choose>
		</div>
		<div class="divider"></div>
		<div class="comments">
			<div class="comment-header">
				<h3>댓글</h3>
				<div class="sort-buttons">
					<button class="sort-button active" id="sort-oldest">등록순</button>
					<button class="sort-button" id="sort-newest">최신순</button>
				</div>
			</div>
			<!-- 댓글 내용 -->
			<div class="comment">
				<p>우민</p>
				<p>돈까스 어때요?ㅎㅎ전 치돈이 좋거든요</p>
				<p>2023.10.21. 15:01</p>
			</div>
			<div class="divider divider-1" style="border-top-color: #ede8f1;"></div>
			<div class="comment">
				<p>올챙</p>
				<p>날씨가 추워져서 국밥도 괜찮지 않나요?ㅋㅋ</p>
				<p>2023.10.21. 15:03</p>
			</div>
			<div class="divider divider-1" style="border-top-color: #ede8f1;"></div>
			<div class="comment">
				<p>깨꾹</p>
				<p>전 떡볶이 강추합니당!! 떡볶이가 짱이죠</p>
				<p>2023.10.21. 15:06</p>
			</div>
			<div class="divider divider-1" style="border-top-color: #ede8f1;"></div>
			<div class="comment">
				<p>혜미</p>
				<p>ㅎㅎ다른 분들 모두 감사합니다. 생각해보고 골라서 먹을게요!</p>
				<div class="d-flex justify-content-between align-items-center">
					<p>2023.10.21. 15:06</p>
					<div class="d-flex justify-content-end">
                        <button class="btn btn-link text-dark mr-2">수정</button>
                        <button class="btn btn-link text-dark">삭제</button>
                    </div>
                </div>
			</div>
			<div class="divider"></div>
			<div class="comment-form">
				<form style="position: relative;">
					<div class="form-group">
						<textarea class="form-control" id="commentContent" rows="4"
							placeholder="댓글을 입력하세요."></textarea>
						<!-- 댓글 등록 버튼을 댓글 입력 상자 우측 하단에 삽입 -->
						<button type="submit" class="btn btn-primary"
							style="position: absolute; bottom: 0; right: 0; background-color: #670AC5;">
							<i class="fas fa-paper-plane" style="font-size: 20px;"></i>
						</button>
					</div>
				</form>
			</div>
		</div>
		<div class="d-flex justify-content-between mt-2">
			<div class="row">
			<form class="form-inline">
				<!-- 글쓰기 버튼 -->
				<a href="${root}create"class="btn btn-secondary" style="background-color: #1D202E; margin-right: -5px;">글쓰기</a>
				<!-- 답글 버튼 -->
				<button class="btn btn-secondary" style="background-color: #1D202E;">답글</button>
				</form>
			</div>
			<div class="d-flex justify-content-end">
				<!-- 목록 버튼 -->
				<a href="${root}detail?cr_key=${cr_key}&cr_course=${cr_course}"class="btn btn-secondary mr-2" style="background-color: #1D202E;">목록</a>
				<!-- Top 버튼 -->
				<button class="btn btn-secondary" style="background-color: #1D202E;">TOP</button>
			</div>
		</div>
	</div>

	<!-- 하단 정보 부분 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp" />
</body>
</html>