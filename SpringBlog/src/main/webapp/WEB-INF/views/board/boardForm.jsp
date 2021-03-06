<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/rayout/rayoutHeader.jsp" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
	<article>
		<div class="container">
			<h2>글쓰기 페이지</h2>
			<form action="${pageContext.request.contextPath }/board/saveBoard" method="post" id="form">
				<hidden path="bid"/>
				<input type="hidden" name="mode"/>
				<div class="mb-3">
					<label>제목</label>
					<input class="form-control" type="text" name="title" placeholder="제목을 입력해주세요"/>
				</div>
				<div class="mb-3">
					<label>작성자</label>
					<input class="form-control" type="text" name="reg_id" placeholder="이름을 입력해주세요"/>
				</div>
				<div class="mb-3">
					<label>카테고리</label>
					<input class="form-control" type="text" name="cate_cd" placeholder="카테고리를 입력해주세요"/>
				</div>
				<div class="mb-3">
					<label>내용</label>
					<textarea class="form-control" rows="5" name="content" placeholder="내용을 입력해주세요"></textarea>
				</div>
				<div class="mb-3">
					<label>태그</label>
					<input class="form-control" type="text" name="tag" placeholder="태그를 입력해주세요"/>
				</div>
			</form>
			<button id="saveBtn"class="btn btn-primary">작성</button>
			<button id="listBtn"class="btn btn-secondary">목록</button>
		</div>
	</article>
</body>
<script>
	$(document).on('click',"#saveBtn",function(e){
		$("#form").submit();
	})
	$(document).on('click',"#listBtn",function(e){
		location.href="${pageContext.request.contextPath }/board/getBoardList"

	})
	//입력폼 셋팅

</script>
</html>