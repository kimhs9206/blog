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
				<input type="hidden" name="bid" value="${boardContent.bid }"/>
				<input type="hidden" name="mode" value="update"/>
				<div class="mb-3">
					<label>제목</label>
					<input class="form-control" type="text" name="title" value="${boardContent.title }"/>
				</div>
				<div class="mb-3">
					<label>작성자</label>
					<input class="form-control" type="text" name="reg_id"value="${boardContent.reg_id }" readonly/>
				</div>
				<div class="mb-3">
					<label>카테고리</label>
					<input class="form-control" type="text" name="cate_cd"value="${boardContent.cate_cd }"/>
				</div>
				<div class="mb-3">
					<label>내용</label>
					<textarea class="form-control" rows="5" name="content">${boardContent.content }</textarea>
				</div>
				<div class="mb-3">
					<label>태그</label>
					<input class="form-control" type="text" name="tag" value="${boardContent.tag }"/>
				</div>
			</form>
			<button id="saveBtn"class="btn btn-primary">수정</button>
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