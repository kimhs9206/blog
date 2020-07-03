<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file='/WEB-INF/views/rayout/rayoutHeader.jsp' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세조회 페이지</title>
</head>
<body>
<article>
	<div class="container">
		<h2>게시물 상세조회</h2>
		<div class="bg-white rounded shadow-sm">
			<div class="board_title">
				<c:out value="${boardContent.title }"/>
			</div>
			
			<div class="board_info_box">
				<span class="board_author"><c:out value="${boardContent.reg_id }"/></span>
				<span class="board_regDate"><c:out value="${boardContent.reg_dt }"/></span>
			</div>
			
			<div class="board_content">
				<c:out value="${boardContent.content }"/>
			</div>
			
			<div class="board_tag">
				<c:out value ="${boardContent.tag }"/>
			</div>
		</div>
		<div style="margin-top:20px">
			<button type="button" class="btn btn-sm btn-primary" id="updateBtn">수정</button>
			<button type="button" class="btn btn-sm btn-primary" id="deleteBtn">삭제</button>
			<button type="button" class="btn btn-sm btn-primary" id="listBtn">목록</button>
		</div>
	</div>
</article>

</body>
<script>
	//목록 이동 버튼
	$(document).on('click',"#listBtn",function(e){
		location.href="${pageContext.request.contextPath }/board/getBoardList"
	
	})
	//수정 버튼
	$(document).on('click','#updateBtn',function(e){
		var url = "${pageContext.request.contextPath }/board/updateForm";
		url = url+"?bid="+${boardContent.bid};
		url = url+"&mode=update";
		
		location.href=url;
	});
	//삭제버튼
	$(document).on('click','#deleteBtn',function(e){
		var url = "${pageContext.request.contextPath }/board/deleteBoard";
		url = url+"?bid="+${boardContent.bid};
		
		location.href=url;
	});
</script>
</html>