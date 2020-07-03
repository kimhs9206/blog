<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/rayout/rayoutHeader.jsp" %>
<%@ taglib prefix="form" uri ="http://www.springframework.org/tags/form" %>

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
			<form:form action="${pageContext.request.contextPath }/board/saveBoard" method="post" id="form"
				modelAttrigute="boardVO">
				<form:hidden path="bid"/>
				<input type="hidden" name="mode"/>
				<div class="mb-3">
					<label>제목</label>
					<form:input class="form-control" type="text" path="title" placeholder="제목을 입력해주세요"/>
				</div>
				<div class="mb-3">
					<label>작성자</label>
					<form:input class="form-control" type="text" path="reg_id" placeholder="이름을 입력해주세요"/>
				</div>
				<div class="mb-3">
					<label>카테고리</label>
					<form:input class="form-control" type="text" path="cate_cd" placeholder="카테고리를 입력해주세요"/>
				</div>
				<div class="mb-3">
					<label>내용</label>
					<form:textarea class="form-control" rows="5" path="content" placeholder="내용을 입력해주세요"></form:textarea>
				</div>
				<div class="mb-3">
					<label>태그</label>
					<form:input class="form-control" type="text" path="tag" placeholder="태그를 입력해주세요"/>
				</div>
			</form:form>
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
	$(document).ready(function(){
		var mode = '<c:out value="${mode}"/>';
		if(mode == 'update'){
			$("#reg_id").prop('readonly',true);
			$("input:hidden[name='bid']").val('<c:out value="${boardContent.bid}"/>');
			$("input:hidden[name='mode']").val('<c:out value="${mode}"/>');
			$("#reg_id").val('<c:out value="${boardContent.reg_id}"/>');
			$("#title").val('<c:out value="${boardContent.title}"/>');
			$("#content").val('<c:out value="${boardContent.content}"/>');
			$("#tag").val('<c:out value="${boardContent.tag}"/>');
		}
	})
</script>
</html>